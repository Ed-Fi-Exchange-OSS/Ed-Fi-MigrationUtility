-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Setting up temporary procedures'
GO

CREATE FUNCTION [migration_tempdata].[leveldescriptor_to_gradeleveldescriptor](@LevelDescriptorId int)
RETURNS INT
AS
BEGIN
RETURN 
(
SELECT TOP 1 COALESCE(LevelDescriptorGradeLevel.GradeLevelDescriptorId, gradeLevel.DescriptorId)
FROM edfi.Descriptor levelDescriptor
LEFT JOIN edfi.LevelDescriptorGradeLevel
	ON LevelDescriptorGradeLevel.LevelDescriptorId = @LevelDescriptorId
LEFT JOIN edfi.Descriptor gradeLevel
	ON (levelDescriptor.CodeValue = gradeLevel.CodeValue)
	AND EXISTS (SELECT 1 FROM edfi.GradeLevelDescriptor WHERE GradeLevelDescriptorId = gradeLevel.DescriptorId)
WHERE levelDescriptor.DescriptorId = @LevelDescriptorId 
)
END
GO

CREATE FUNCTION [migration_tempdata].[removeTrailingSlash](@string NVARCHAR(MAX))
RETURNS NVARCHAR(MAX) AS
BEGIN
	RETURN CASE WHEN RIGHT(@string,1) IN ('/','\') THEN LEFT(@string, len(@string) -1) ELSE @string END
END
GO 

CREATE TABLE [migration_tempdata].[DescriptorMetadata]
(
	[DescriptorId] INT NOT NULL,
	[DescriptorTable] NVARCHAR(128) NOT NULL,
	[IsEdfiDescriptor] BIT NOT NULL,
	[CodeValue] NVARCHAR(50) NOT NULL,
	[Table_Imported_V3] BIT NOT NULL,
	[CodeValue_Imported_V3] BIT NOT NULL,
	[Namespace_Existing_20] NVARCHAR(255) NULL,
	[Namespace_Imported_V3] NVARCHAR(255) NULL
	CONSTRAINT [PK_DescriptorMetadata] PRIMARY KEY CLUSTERED ([DescriptorId], [DescriptorTable])
)
GO

CREATE TABLE [migration_tempdata].[DescriptorTableReference]
(
	[DescriptorId] INT NOT NULL,
	[DescriptorTable] NVARCHAR(128),
	CONSTRAINT [PK_DescriptorTableReference] PRIMARY KEY CLUSTERED ([DescriptorId], [DescriptorTable])
)
GO

CREATE PROCEDURE [migration_tempdata].[sp_CheckSchemaDependencies]
(
	@SchemaName NVARCHAR(256),
	@MaxWarnings INT = 10
)
AS
BEGIN
	IF OBJECT_ID('tempdb..#DependencyWarning') IS NOT NULL
	BEGIN
		DROP TABLE #DependencyWarning
	END

	CREATE TABLE #DependencyWarning(ParentSchema NVARCHAR(128), ParentObject  NVARCHAR(128), ReferencedSchema NVARCHAR(128), ReferencedObject  NVARCHAR(128), [Dependency_Message] NVARCHAR(MAX))

	INSERT INTO #DependencyWarning (ParentSchema, ParentObject, ReferencedSchema, ReferencedObject, [Dependency_Message])
	SELECT DISTINCT
		parentSchema.name,
		parentObject.name,
		referencedSchema.name,
		referencedObject.name,
		CONCAT('Object ', parentSchema.name, '.', parentObject.name, ' contains one or more references to ', referencedSchema.name, '.', referencedObject.name) AS [Warning]
	FROM sys.foreign_key_columns fk
	INNER JOIN sys.objects parentObject
	ON fk.parent_object_id = parentObject.object_id
	INNER JOIN sys.objects referencedObject
	ON fk.referenced_object_id = referencedObject.object_id
	INNER JOIN sys.schemas parentSchema
	ON parentObject.schema_id = parentSchema.schema_id
	INNER JOIN sys.schemas referencedSchema
	ON referencedObject.schema_id = referencedSchema.schema_id
	WHERE referencedSchema.name = @SchemaName
		AND parentSchema.name NOT IN (@SchemaName, 'migration_tempdata')
		AND parentObject.type = 'U'
		AND referencedObject.type = 'U'

	DECLARE @numberOfDependenciesFound INT;
	SELECT @numberOfDependenciesFound = COUNT(*) FROM #DependencyWarning
	IF @numberOfDependenciesFound > 0
	BEGIN
		DECLARE @NewLine NVARCHAR(2) = CHAR(13)+CHAR(10)
		DECLARE @DependenciesFound NVARCHAR(MAX) 
		SELECT TOP (@MaxWarnings) @DependenciesFound = COALESCE(@DependenciesFound + @NewLine, '') + Dependency_Message FROM #DependencyWarning
		DECLARE @DependencyWarningMessage NVARCHAR(MAX) = CONCAT(N'Warning: Found ', @numberOfDependenciesFound, ' dependencies on the ', @SchemaName,' schema.  These dependencies must be removed, or migration will fail.  The first ',@MaxWarnings, ' objects will be shown: ' , @NewLine, @DependenciesFound) 
		PRINT @DependencyWarningMessage
	END
	RETURN @numberOfDependenciesFound
END
GO

CREATE TYPE [migration_tempdata].[ImportedDescriptor]
AS TABLE
(
		[CodeValue] [NVARCHAR](50) NOT NULL,
		[ShortDescription] [NVARCHAR](75) NOT NULL,
		[Description] [NVARCHAR](1024) NULL,
		[Namespace] [NVARCHAR](255) NOT NULL
);
GO

CREATE PROCEDURE [migration_tempdata].[sp_GetDescriptorImportResult]
(
	@descriptorName NVARCHAR(128),
	@xmlVersion NVARCHAR(255),
	@xmlImportNamespacePrefix NVARCHAR(255),
	@xmlFileName NVARCHAR(MAX)
)
AS
BEGIN
	IF (@xmlFileName IS NULL)
	BEGIN
		SELECT @xmlFileName = CONCAT(@descriptorName, '.xml')
	END
	DECLARE @xmlDirectoryPath NVARCHAR(MAX)
	EXEC @xmlDirectoryPath  = [migration_tempdata].[removeTrailingSlash] '$DescriptorXmlImportDirectoryPath$'
	EXEC @xmlImportNamespacePrefix =  [migration_tempdata].[removeTrailingSlash] @xmlImportNamespacePrefix
	DECLARE @xmlNamespaceFull NVARCHAR(MAX)
	SET @xmlNamespaceFull =  CONCAT(@xmlImportNamespacePrefix, '/', @xmlVersion)

	DECLARE @useAzureDataSourceForConfigFiles BIT
	SELECT @useAzureDataSourceForConfigFiles = (CASE WHEN '$AzureStorageLocation$' = '' THEN 0 ELSE 1 END)
	IF (@useAzureDataSourceForConfigFiles = 1)
	BEGIN
		DECLARE @xmlFileLocation NVARCHAR(MAX)
		SELECT @xmlFileLocation = CONCAT(@xmlDirectoryPath, '/', @xmlFileName)
		DECLARE @dataSourceId nvarchar(36)
		SELECT @dataSourceId = CONVERT(nvarchar(36), NEWID())
		DECLARE @AzureStorageLocation nvarchar(max)
		EXEC @AzureStorageLocation = [migration_tempdata].[removeTrailingSlash] '$AzureStorageLocation$'
		/* Azure Only:  Use a random ID to work around an issue where a data source from a previously rolled back transaction is inaccessible, but cannot be
		dropped or recreated because it still exists in cache */
		EXEC('CREATE EXTERNAL DATA SOURCE [migration_tempdata_blob'+ @dataSourceId +'] WITH (TYPE = BLOB_STORAGE, LOCATION = ''' + @AzureStorageLocation + ''')');

		EXEC('
		DECLARE @DescriptorImport XML

		SELECT @DescriptorImport =
		CONVERT(xml, BulkColumn)
		FROM OPENROWSET(  
			BULK '''+ @xmlFileLocation + ''',  SINGLE_BLOB 
			,DATA_SOURCE = ''migration_tempdata_blob'+ @dataSourceId + '''  
		) T

		;WITH XMLNAMESPACES ('''+ @xmlNamespaceFull + '''AS ns)
		SELECT 
			Descriptor.value(''(*:CodeValue)[1]'', ''nvarchar(50)'') as [CodeValue],
			Descriptor.value(''(*:ShortDescription)[1]'', ''nvarchar(75)'') as [ShortDescription],
			Descriptor.value(''(*:Description)[1]'', ''nvarchar(1024)'') as [Description],
			Descriptor.value(''(*:Namespace)[1]'', ''nvarchar(255)'') as [Namespace]
		FROM 
			@DescriptorImport.nodes(''/ns:InterchangeDescriptors/*:'+ @descriptorName +''') AS InterchangeDescriptors(Descriptor)')

		EXEC('
		IF EXISTS (SELECT 1 FROM sys.external_data_sources where name = ''migration_tempdata_blob'+ @dataSourceId +''')
		BEGIN
			DROP EXTERNAL DATA SOURCE [migration_tempdata_blob'+ @dataSourceId +']
		END');
	END
	ELSE
	BEGIN
		DECLARE @xmlFilePath NVARCHAR(MAX)
		SELECT @xmlFilePath = CONCAT(@xmlDirectoryPath, '\', @xmlFileName)
		EXEC('
		DECLARE @DescriptorImport XML

		SELECT @DescriptorImport =
		CONVERT(xml, BulkColumn)
		FROM OPENROWSET(  
			BULK '''+ @xmlFilePath + ''',  SINGLE_BLOB   
		) T

		;WITH XMLNAMESPACES ('''+ @xmlNamespaceFull + '''AS ns)
		SELECT 
			Descriptor.value(''(*:CodeValue)[1]'', ''nvarchar(50)'') as [CodeValue],
			Descriptor.value(''(*:ShortDescription)[1]'', ''nvarchar(75)'') as [ShortDescription],
			Descriptor.value(''(*:Description)[1]'', ''nvarchar(1024)'') as [Description],
			Descriptor.value(''(*:Namespace)[1]'', ''nvarchar(255)'') as [Namespace]
		FROM 
			@DescriptorImport.nodes(''/ns:InterchangeDescriptors/*:'+ @descriptorName +''') AS InterchangeDescriptors(Descriptor)')
	END
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_ImportDescriptorsFromXML]
(
	@descriptorTableName NVARCHAR(128),
	@schemaName NVARCHAR(128) = 'edfi',
	@xmlVersion NVARCHAR(255) = '0310',
	@xmlImportNamespacePrefix NVARCHAR(255) = 'http://ed-fi.org',
	@xmlFileName NVARCHAR(MAX) = NULL
)
AS
BEGIN

	IF (@descriptorTableName IS NULL OR @schemaName IS NULL OR @xmlVersion IS NULL OR @xmlImportNamespacePrefix IS NULL)
	BEGIN
		DECLARE @MissingParameterError NVARCHAR(MAX) = 'sp_InsertDescriptorsFromXML:  Missing required parameters.'
		PRINT  @MissingParameterError
		;THROW 51000, @MissingParameterError, 1
	END

	DECLARE @descriptorIdColumnName NVARCHAR(128)
	SELECT @descriptorIdColumnName = CONCAT(@descriptorTableName,'Id')
	DECLARE @defaultNamespacePrefix NVARCHAR(MAX) = '$DescriptorNamespacePrefix$'
	DECLARE @defaultNamespace NVARCHAR(max);
	SELECT @defaultNamespace = @defaultNamespacePrefix + '/' + @descriptorTableName
	DECLARE @escapedDefaultNamespace NVARCHAR(max);
	SELECT @escapedDefaultNamespace = REPLACE(@defaultNamespace, '''', '''''')


	IF NOT EXISTS
	(
		SELECT 1 FROM sys.columns
		WHERE OBJECT_NAME(object_id) = @descriptorTableName
		AND OBJECT_SCHEMA_NAME(object_id) = @schemaName
		AND name = @descriptorIdColumnName
	)
	BEGIN
		DECLARE @SchemaError NVARCHAR(MAX) = 'sp_InsertNewDescriptorFromXML:  Error importing descriptor ' + ISNULL(@descriptorTableName, NULL) + ' Cannot find column ' + ISNULL(@descriptorIdColumnName, NULL) + ' on table ' + ISNULL(@schemaName, 'NULL') + '.' + ISNULL(@descriptorTableName,'NULL')
		PRINT  @SchemaError
		;THROW 51001, @SchemaError, 1
	END

	IF (OBJECT_ID('tempdb..##DescriptorImportResult') IS NOT NULL)
	BEGIN
		DROP TABLE ##DescriptorImportResult
	END

	CREATE TABLE ##DescriptorImportResult
	(
		[CodeValue] [NVARCHAR](50) NOT NULL,
		[ShortDescription] [NVARCHAR](75) NOT NULL,
		[Description] [NVARCHAR](1024) NULL,
		[Namespace] [NVARCHAR](255) NOT NULL
		CONSTRAINT PK_DescriptorImportResult PRIMARY KEY ([CodeValue])
	)

	INSERT ##DescriptorImportResult ([CodeValue], [ShortDescription], [Description], [Namespace])
	EXEC [migration_tempdata].[sp_GetDescriptorImportResult] @descriptorName = @descriptorTableName, @xmlVersion = @xmlVersion, @xmlImportNamespacePrefix = @xmlImportNamespacePrefix, @xmlFileName = @xmlFileName

	IF (OBJECT_ID('tempdb..##PreviousVersionDescriptor') IS NOT NULL)
	BEGIN
		DROP TABLE ##PreviousVersionDescriptor
	END

	CREATE TABLE ##PreviousVersionDescriptor
	(
		[DescriptorId] INT NOT NULL,
		[CodeValue] [NVARCHAR](50) NOT NULL,
		[Namespace] [NVARCHAR](255) NOT NULL,
		CONSTRAINT PK_ExistingDescriptor PRIMARY KEY ([DescriptorId])
	)

	EXEC('
	INSERT ##PreviousVersionDescriptor ([DescriptorId], [CodeValue], [Namespace])
	SELECT [DescriptorId], [CodeValue], [Namespace]
	FROM [edfi].[Descriptor]
	INNER JOIN [' + @schemaName + '].[' + @descriptorTableName + ']
	ON [DescriptorId] = [' + @descriptorIdColumnName + ']
	')

	INSERT [migration_tempdata].[DescriptorMetadata]
	(
		[DescriptorId],
		[DescriptorTable],
		[IsEdfiDescriptor],
		[CodeValue],
		[Table_Imported_V3],
		[CodeValue_Imported_V3],
		[Namespace_Existing_20]
	)
	SELECT
		[DescriptorId],
		@descriptorTableName,
		CASE WHEN [Namespace] LIKE '%ed-fi.org%' THEN 1 ELSE 0 END,
		[CodeValue],
		1,
		0,
		[Namespace]
	FROM ##PreviousVersionDescriptor

	DECLARE @xmlImportNamespaceOrganizationName NVARCHAR(255)
	SELECT @xmlImportNamespaceOrganizationName = ISNULL ([migration_tempdata].[get_org_from_v20_namespace] (@xmlImportNamespacePrefix), @xmlImportNamespacePrefix)

	DECLARE @ExistingDescriptorsToUpdate TABLE ([DescriptorId] INT NOT NULL)
	;WITH [PreviousDescriptorUpdatePriority] AS
	(
	SELECT
		p.[DescriptorId],
		p.[CodeValue],
		p.[Namespace],
		ROW_NUMBER() OVER
		(
			PARTITION BY p.[CodeValue]
			ORDER BY
				CASE 
					WHEN p.[Namespace] = i.[Namespace] THEN 1
					WHEN p.[Namespace] LIKE (@xmlImportNamespacePrefix + '%' + @descriptorTableName + '%') THEN 2
					WHEN p.[Namespace] LIKE ('uri://' + @xmlImportNamespaceOrganizationName + '%'+ @descriptorTableName + '%') THEN 3
					WHEN p.[Namespace] LIKE ('%' + @xmlImportNamespaceOrganizationName + '%'+ @descriptorTableName + '%') THEN 4
					WHEN p.[Namespace] LIKE ('%' + @xmlImportNamespaceOrganizationName + '%') THEN 5
					WHEN p.[Namespace] LIKE ('%' + @descriptorTableName + '%') THEN 6
					ELSE 7
				END,
				[DescriptorId]
		) AS [UpdatePriority]
		FROM ##PreviousVersionDescriptor p
		INNER JOIN ##DescriptorImportResult i
			ON i.[CodeValue] = p.[CodeValue]
		-- Allow the import process to overwrite descriptors belonging to the same organization only
		WHERE p.[Namespace] LIKE ('%' + @xmlImportNamespaceOrganizationName + '%')
	)
	INSERT @ExistingDescriptorsToUpdate 
	SELECT [DescriptorId]
	FROM [PreviousDescriptorUpdatePriority]
	WHERE [UpdatePriority] = 1;

  
	UPDATE [edfi].[Descriptor]
	SET 
		[Namespace] = i.[Namespace],
		[Description] = i.[Description],
		[ShortDescription] = i.[ShortDescription]
	FROM [edfi].[Descriptor] d
	INNER JOIN @ExistingDescriptorsToUpdate e
		ON d.DescriptorId = e.DescriptorId
	INNER JOIN ##DescriptorImportResult i
		ON i.[CodeValue] = d.[CodeValue]

	--Move the deprecated descriptor values to default namespace 
	UPDATE [edfi].[Descriptor]
	SET 
		[Namespace] =  @escapedDefaultNamespace 
	FROM [edfi].[Descriptor] d 
	INNER JOIN ##PreviousVersionDescriptor p
		ON d.[DescriptorId] = p.[DescriptorId]
	LEFT OUTER JOIN ##DescriptorImportResult i 
		ON i.[CodeValue] = d.[CodeValue]	
	WHERE i.[CodeValue] is NULL AND d.[Namespace] LIKE ('%' + @xmlImportNamespaceOrganizationName + '%') ;
	
	DROP TABLE ##PreviousVersionDescriptor

	UPDATE [migration_tempdata].[DescriptorMetadata]
	SET
		[CodeValue_Imported_V3] = 1,
		[Namespace_Imported_V3] = d.[Namespace]
	FROM [migration_tempdata].[DescriptorMetadata] m
	INNER JOIN [edfi].[Descriptor] d
		ON m.[DescriptorId] = d.[DescriptorId]
	INNER JOIN @ExistingDescriptorsToUpdate e
		ON d.DescriptorId = e.DescriptorId
	INNER JOIN ##DescriptorImportResult i
		ON i.[CodeValue] = d.[CodeValue]

EXEC('
	INSERT [edfi].[Descriptor]
		([Namespace]
		,[CodeValue]
		,[ShortDescription]
		,[Description]
		,[CreateDate]
		,[LastModifiedDate]
		,[Id])
	OUTPUT INSERTED.[DescriptorId] INTO [' + @schemaName + '].[' + @descriptorTableName + '] ([' + @descriptorIdColumnName + '])
	SELECT
		i.[Namespace],
		i.[CodeValue],
		i.[ShortDescription],
		i.[Description],
		GETDATE(),
		GETDATE(),
		NEWID()
	FROM ##DescriptorImportResult i
	WHERE NOT EXISTS (SELECT 1 FROM [edfi].[Descriptor] d WHERE d.[Namespace] = i.[Namespace] AND d.[CodeValue] = i.[CodeValue])
	')

	INSERT [migration_tempdata].[DescriptorMetadata]
	(
		[DescriptorId],
		[DescriptorTable],
		[IsEdfiDescriptor],
		[CodeValue],
		[Table_Imported_V3],
		[CodeValue_Imported_V3],
		[Namespace_Existing_20],
		[Namespace_Imported_V3]
	)
	SELECT 
		d.[DescriptorId],
		@descriptorTableName,
		CASE WHEN i.[Namespace] LIKE '%ed-fi.org%' THEN 1 ELSE 0 END,
		i.[CodeValue],
		1,
		1,
		NULL,
		i.[Namespace]
		FROM ##DescriptorImportResult i
		INNER JOIN [edfi].[Descriptor] d
			ON i.[CodeValue] = d.[CodeValue]
			AND i.[Namespace] = d.[Namespace]
		WHERE NOT EXISTS (SELECT 1 FROM [migration_tempdata].[DescriptorMetadata] m WHERE m.[DescriptorId] = d.[DescriptorId] AND m.[DescriptorTable] = @descriptorTableName)

	DROP TABLE ##DescriptorImportResult
END
GO

/* =============================================
	Usage Details:
		Creates a new DescriptorId column based on the provided TypeId.  A descriptor equivalent will be located based on CodeValue of the corresponding type.
		A target table for update, table to query for type data, and table to query for descriptor data must be provided.
		If there is no matching descriptors with the correct CodeValue data, a new descriptor will be inserted with the CodeValue of the provided type.
		
	Required Parameters:
		@updateTableSchemaName - schema name containing the table to be updated.  e.g.: 'edfi'
		@updateTableName - table name that will be updated.  e.g.: 'Student'
		@descriptorTableSchemaName - schema name containing the DESCRIPTOR table that will be queried for a CodeValue match: e.g.: 'edfi'
		@descriptorTableName - name of the DESCRIPTOR table that will be queried for a CodeValue match: e.g.: 'CitizenshipStatusDescriptor'
		@typeTableSchemaName - schema name containing the TYPE table.  This table will be queried for CodeValue information to compare to the above descriptor match.

	Optional Parameters:
		@oldTypeIdColumnName - name of the column on @updateTableName that will be dropped. Default: '@updateTableName + Id'. e.g: CitizenshipStatusTypeId
		@newDescriptorIdColumnName - name of the new descriptor column that will be created.  Default: @descriptorTableName  + 'Id'. e.g: CitizenshipStatusDescriptorId
		@typeTableIdColumnName - name of the Id column on the TYPE table that will be queried.  Default: @typeTableName + 'Id'. e.g: CitizenshipStatusTypeId
		@descriptorTableIdColumnName - name of the Id column on the DESCRIPTOR table that will be queried.  Default: @descriptorTableName  + 'Id'. e.g: CitizenshipStatusDescriptorId
		@namespace - namespace to use for any new descriptors that will be inserted.  By default, uses the namespace prefix provided during upgrade. e.g.: 'uri://ed-fi.org/CitizenshipStatusDescriptor'

	Examples:

	Example 1:
	Type => Descriptor conversion of edfi.Student.BirthStateAbbreviationTypeId to edfi.Student.BirthStateAbbreviationDescriptorId
		EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
			'edfi', 'Student',
			'edfi', 'StateAbbreviationDescriptor',
			'edfi', 'StateAbbreviationType',
			'BirthStateAbbreviationTypeId', 'BirthStateAbbreviationDescriptorId'

	Example 2:
	Shorter version using default column names:
	This works in most cases where standard naming conventions are used
	Descriptor conversion of edfi.Student.CitizenshipStatusTypeId to edfi.Student.CitizenshipStatusDescriptorId
		EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
			'edfi', 'Student',
			'edfi', 'CitizenshipStatusDescriptor',
			'edfi', 'CitizenshipStatusType'
	
	This is equivalent to:

		EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
			'edfi', 'Student',
			'edfi', 'CitizenshipStatusDescriptor',
			'edfi', 'CitizenshipStatusType',
			'CitizenshipStatusTypeId', 'CitizenshipStatusDescriptorId',

	Example 3: Extended usage 
	Makes use of all parameters for a table that does not follow default naming conventions
	This is not usually needed.
		EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
			'extension', 'MyExtensionTable',
			'extension', 'MyDescriptorTableName',
			'extension', 'MyTypeTableName',
			'TypeColumnToDrop', 'DescriptorColumnToCreate',
			'IdColumnOnMyTypeTable', 'IdColumnOnMyDescriptorTable',
			'uri://MyNamespacePrefix.org/MyDescriptorName'

-- =============================================*/
CREATE PROCEDURE [migration_tempdata].[sp_ConvertTypeToDescriptor]
(
	@updateTableSchemaName NVARCHAR(128),
	@updateTableName NVARCHAR(128),
	@descriptorTableSchemaName NVARCHAR(128),
	@descriptorTableName NVARCHAR(128),
	@typeTableSchemaName NVARCHAR(128),
	@typeTableName NVARCHAR(256),
	@oldTypeIdColumnName NVARCHAR(128) = NULL,
	@newDescriptorIdColumnName NVARCHAR(128) = NULL,
	@typeTableIdColumnName NVARCHAR(128) = NULL,
	@descriptorTableIdColumnName NVARCHAR(128) = NULL,
	@namespace NVARCHAR(255) = NULL
)
AS
BEGIN
	IF
	(
		@updateTableSchemaName IS NULL
		OR @updateTableName IS NULL
		OR @descriptorTableSchemaName IS NULL
		OR @typeTableSchemaName IS NULL
		OR @typeTableName IS NULL
	)
	BEGIN
		DECLARE @MissingParameterError NVARCHAR(MAX) = 'sp_ConvertTypeToDescriptor:  Missing required parameters.'
		PRINT  @MissingParameterError
		;THROW 51002, @MissingParameterError, 1
	END

	SELECT @oldTypeIdColumnName = COALESCE(@oldTypeIdColumnName, @typeTableName + 'Id')
	SELECT @newDescriptorIdColumnName = COALESCE(@newDescriptorIdColumnName, @descriptorTableName  + 'Id')
	SELECT @typeTableIdColumnName = COALESCE(@typeTableIdColumnName, @typeTableName + 'Id')
	SELECT @descriptorTableIdColumnName = COALESCE(@descriptorTableIdColumnName, @descriptorTableName  + 'Id')
	DECLARE @defaultNamespacePrefix NVARCHAR(MAX) = '$DescriptorNamespacePrefix$'
	DECLARE @escapedDefaultNamespacePrefix NVARCHAR(max);
	SELECT @escapedDefaultNamespacePrefix = REPLACE(@defaultNamespacePrefix, '''', '''''')
	SELECT @namespace = COALESCE(@namespace, @defaultNamespacePrefix + '/' + @descriptorTableName)
	DECLARE @escapedNamespace NVARCHAR(max);
	SELECT @escapedNamespace = REPLACE(@namespace, '''', '''''')

	IF NOT EXISTS
	(
		SELECT 1 FROM sys.columns
		WHERE OBJECT_NAME(object_id) = @updateTableName
		AND OBJECT_SCHEMA_NAME(object_id) = @updateTableSchemaName
		AND name = @oldTypeIdColumnName
	)
	BEGIN
		DECLARE @TypeColumnMissingError NVARCHAR(MAX) = 'Error in sp_ConvertTypeToDescriptor:  Cannot find column ' + ISNULL(@oldTypeIdColumnName, NULL) + ' on table ' + ISNULL(@updateTableSchemaName, 'NULL') + '.' + ISNULL(@updateTableName,'NULL') + '.  This column is used to generate a new equivalent descriptor.  If this item was removed from the schema, you may choose to either recreate it, or upgrade '+ ISNULL(@updateTableSchemaName, 'NULL') + '.' + ISNULL(@updateTableName,'NULL') + ' with your own custom script(s) in order to proceed.'
		PRINT  @TypeColumnMissingError
		;THROW 51003, @TypeColumnMissingError, 1
	END

	IF NOT EXISTS
	(
		SELECT 1 FROM sys.columns
		WHERE OBJECT_NAME(object_id) = @descriptorTableName
		AND OBJECT_SCHEMA_NAME(object_id) = @descriptorTableSchemaName
		AND name = @descriptorTableIdColumnName
	)
		BEGIN
		DECLARE @DescriptorTableError NVARCHAR(MAX) = 'Error in sp_ConvertTypeToDescriptor:  Cannot find column ' + ISNULL(@descriptorTableIdColumnName, 'NULL') + ' on table ' + ISNULL(@descriptorTableSchemaName, 'NULL') + '.' + ISNULL(@descriptorTableName, 'NULL') + '.  Please ensure that all new descriptor tables have been created.'
		PRINT  @DescriptorTableError
		;THROW 51004, @DescriptorTableError, 1
	END

	IF NOT EXISTS
	(
		SELECT 1 FROM sys.columns
		WHERE OBJECT_NAME(object_id) = @typeTableName
		AND OBJECT_SCHEMA_NAME(object_id) = @typeTableSchemaName
		AND name = @typeTableIdColumnName
	)
		BEGIN
		DECLARE @TypeTableError NVARCHAR(MAX) = 'Error in sp_ConvertTypeToDescriptor:  Cannot find column ' + ISNULL(@typeTableIdColumnName, 'NULL') + ' on table ' + ISNULL(@typeTableSchemaName, 'NULL') + '.' + ISNULL(@typeTableName, 'NULL') + '.  The CodeValues from this table are used generate a new equivalent descriptor.  If this item was removed from the schema, you may choose to either recreate it, or upgrade '+ ISNULL(@updateTableSchemaName, 'NULL') + '.' + ISNULL(@updateTableName,'NULL') + ' with your own custom script(s) in order to proceed.'
		PRINT  @TypeTableError
		;THROW 51005, @TypeTableError, 1
	END

	PRINT N'[' + @updateTableSchemaName + '].[' + @updateTableName + '] - Converting: [' + @oldTypeIdColumnName + '] => [' + @newDescriptorIdColumnName + ']'

	EXEC('
	ALTER TABLE [' + @updateTableSchemaName + '].[' + @updateTableName + ']
	ADD [' + @newDescriptorIdColumnName + '] [int] NULL')

	EXEC('
	INSERT [edfi].[Descriptor]
	(
		[Namespace]
		,[CodeValue]
		,[ShortDescription]
		,[Description]
		,[CreateDate]
		,[LastModifiedDate]
		,[Id]
	)
	OUTPUT INSERTED.[DescriptorId] INTO [' + @descriptorTableSchemaName + '].[' + @descriptorTableName + '] ([' + @descriptorTableIdColumnName + '])
	SELECT 
	''' + @escapedNamespace + '''
	,LEFT(COALESCE(NULLIF(t.[CodeValue], ''''), NULLIF(t.[ShortDescription], ''''), t.[Description]), 50)
	,LEFT(COALESCE(NULLIF(t.[ShortDescription], ''''), NULLIF(t.[CodeValue], ''''), t.[Description]), 75)
	,LEFT(COALESCE(NULLIF(t.[Description], ''''), NULLIF(t.[ShortDescription], ''''), t.[CodeValue]), 1024)
	,GETDATE()
	,GETDATE()
	,NEWID()
	FROM [' + @typeTableSchemaName + '].[' + @typeTableName + '] t
	WHERE EXISTS
	(
		SELECT 1 FROM  [' + @updateTableSchemaName + '].[' + @updateTableName + '] src
		WHERE src.[' + @oldTypeIdColumnName + '] = t.[' + @typeTableIdColumnName + ']
	)
	AND NOT EXISTS
	(
		SELECT 1 FROM [' + @descriptorTableSchemaName + '].[' + @descriptorTableName + '] d_src
		INNER JOIN [edfi].[Descriptor] d
		ON d_src.[' + @descriptorTableIdColumnName + '] = d.[DescriptorId]
		AND d.[CodeValue] = LEFT(COALESCE(NULLIF(t.[CodeValue], ''''), NULLIF(t.[ShortDescription], ''''), t.[Description]), 50)
	)
	')

	EXEC('
	;WITH [DescriptorsByPriority] AS
	(
		SELECT
			d.[DescriptorId]
			,d.[Namespace]
			,d.[CodeValue]
			,ROW_NUMBER() OVER
			(
				PARTITION BY
					[CodeValue]
				ORDER BY
					CASE
						WHEN [Namespace] LIKE ''uri://ed-fi.org%'' THEN
							1
						WHEN [Namespace] LIKE ''$' + @escapedDefaultNamespacePrefix + '$%'' THEN
							2
						ELSE
							3
					END ASC
				,[CreateDate] DESC
			) [NamespacePriority]
		FROM [edfi].[Descriptor] d
		WHERE EXISTS 
		(
			SELECT 1 FROM [' + @descriptorTableSchemaName + '].[' + @descriptorTableName + '] d_src
			WHERE d_src.[' + @descriptorTableIdColumnName + '] = d.[DescriptorId]
		)
	)
	UPDATE [' + @updateTableSchemaName + '].[' + @updateTableName + ']
	SET [' + @newDescriptorIdColumnName + '] = d.DescriptorId
	FROM [' + @updateTableSchemaName + '].[' + @updateTableName + '] src
	INNER JOIN [' + @typeTableSchemaName + '].[' + @typeTableName + '] t
	ON t.[' + @typeTableIdColumnName + '] = src.[' + @oldTypeIdColumnName + ']
	LEFT JOIN [DescriptorsByPriority] d
	ON 
	(
		LEFT(COALESCE(NULLIF(t.[CodeValue], ''''), NULLIF(t.[ShortDescription], ''''), t.[Description]), 50) = d.[CodeValue]
		AND d.[NamespacePriority] = 1
	)')

END
GO

CREATE FUNCTION [migration_tempdata].[get_all_student_education_orgs_v20]()
RETURNS @AllStudentEducationOrgAssociations TABLE
(
	[StudentUSI] INT NOT NULL,
	[EducationOrganizationId] INT NOT NULL
)
AS
BEGIN
	INSERT INTO @AllStudentEducationOrgAssociations ([StudentUSI], [EducationOrganizationId])
	SELECT DISTINCT [StudentUSI], [EducationOrganizationId]
	FROM
	(
		SELECT [StudentUSI], [EducationOrganizationId]
		FROM [edfi].[StudentEducationOrganizationAssociation]

		UNION

		SELECT spa.[StudentUSI], spa.[ProgramEducationOrganizationId] AS [EducationOrganizationId]
		FROM [edfi].[StudentProgramAssociation] spa
		INNER JOIN [edfi].[StudentProgramParticipation] spp
			ON spa.[StudentUSI] = spp.[StudentUSI]
			AND spa.[ProgramTypeId] = spp.[ProgramTypeId]
			AND (spa.[BeginDate] <= ISNULL(spp.[EndDate], spa.[BeginDate]))
			AND ((spa.[EndDate] IS NULL) OR (spp.[BeginDate] IS NULL) OR (spa.[EndDate] >= spp.[BeginDate]))

		UNION

		SELECT ssa.[StudentUSI], ISNULL (sch.[LocalEducationAgencyId], sch.[SchoolId]) AS [EducationOrganizationId]
		FROM [edfi].[StudentSchoolAssociation] ssa
		INNER JOIN [edfi].[School] sch
			ON sch.[SchoolId] = ssa.[SchoolId]
			AND NOT EXISTS 
			(
				SELECT 1 FROM [edfi].[StudentEducationOrganizationAssociation] seo
				WHERE seo.[StudentUSI] = ssa.[StudentUSI]
				AND seo.[EducationOrganizationId] = ssa.[SchoolId]
			)

		UNION

		SELECT [StudentUSI], [EducationOrganizationId]
		FROM [edfi].[StudentCohortAssociation]

	) StudentEdOrgAll

	RETURN
END
GO



CREATE FUNCTION [migration_tempdata].[descriptor_namespace_changed](@currentNamespace NVARCHAR(max))
RETURNS BIT AS
BEGIN
	IF (@currentNamespace  = '$DescriptorNamespacePrefix$')
		RETURN 0

	RETURN 1
END
GO

/* =============================================
Checks if a provided organization name contains invalid characters
From DATASTD-1175 on 6/22/18: valid organization names can only contain alphanumeric and $-_.+!*'(),
============================================= */
CREATE FUNCTION [migration_tempdata].[namespace_organization_name_allowed](@organizationName NVARCHAR(255))
RETURNS BIT AS
BEGIN
	IF ((@organizationName IS NULL) OR (@organizationName LIKE '%[^a-zA-Z0-9$_.+!*''(),-]%') OR (LEN(@organizationName) < 1))
		RETURN 0

	RETURN 1
END
GO

/* =============================================
Checks if a provided namespace matches the format:  uri://[organization name]/[descriptor name]
Format requirements from DATASTD-1175 on 6/22/18:
     * valid organization names can only contain alphanumeric and $-_.+!*'(),
     * valid descriptor name can only contain alphanumeric
Additionally:
     * Total length of namespace must less than 255 characters (schema requirement)
============================================= */
CREATE FUNCTION [migration_tempdata].[is_valid_v3_namespace_format](@namespace NVARCHAR(max))
RETURNS BIT AS
BEGIN
	IF (@namespace IS NULL) OR (LEN(@namespace) > 255) 
		RETURN 0

	DECLARE @validV3NamespaceScheme NVARCHAR(6) = 'uri://';
	IF @namespace NOT LIKE (@validV3NamespaceScheme + '%')
		RETURN 0

	DECLARE @namespaceWithoutScheme NVARCHAR(255) = RIGHT(@namespace, LEN(@namespace) - LEN(@validV3NamespaceScheme))

	IF LEN(@namespaceWithoutScheme) = 0
		RETURN 0

	DECLARE @indexOfForwardSlash INT
	SELECT @indexOfForwardSlash = CHARINDEX('/', @namespaceWithoutScheme)

	IF (@indexOfForwardSlash < 2) OR (@indexOfForwardSlash = LEN(@namespaceWithoutScheme))
		RETURN 0

	DECLARE @organizationName NVARCHAR(255)
	DECLARE @descriptorName NVARCHAR(255)
	SELECT @organizationName = LEFT(@namespaceWithoutScheme, @indexOfForwardSlash - 1)
	SELECT @descriptorName = RIGHT(@namespaceWithoutScheme, LEN(@namespaceWithoutScheme) - @indexOfForwardSlash)

	DECLARE @organizationNameAllowed BIT
	SELECT @organizationNameAllowed = [migration_tempdata].[namespace_organization_name_allowed] (@organizationName);

	IF (@organizationNameAllowed = 0)
		RETURN 0

	IF (@descriptorName LIKE '%[^a-zA-Z0-9]%')
		RETURN 0

	RETURN 1
END
GO

/* =============================================
Extracts the organization name from a 2.0 namespace,
if it is in the correct format.

Returns [organization] if the provided namespace is in the 
format '[scheme]://[organization]/%' or '[scheme]://[organization]'

Returns null if the provided namespace does not match the 
above, is greater than 255 characters in length, or if the
organization name contains invalid characters.
============================================= */
CREATE FUNCTION [migration_tempdata].[get_org_from_v20_namespace](@namespace NVARCHAR(max))
RETURNS NVARCHAR(255) AS
BEGIN
	IF (@namespace IS NULL)
		RETURN NULL

	DECLARE @namespaceLength INT
	SELECT @namespaceLength = LEN(@namespace)
	IF @namespaceLength > 255
		RETURN NULL
	
	DECLARE @schemeLength INT
	SELECT @schemeLength = PATINDEX('%://%', @namespace) + 2
	IF (@schemeLength) < LEN('?://')
		RETURN NULL

	DECLARE @namespaceWithoutScheme NVARCHAR(255)
	SELECT @namespaceWithoutScheme = RIGHT(@namespace, @namespaceLength - @schemeLength)

	IF (@namespaceWithoutScheme IS NULL) OR (LEN(@namespaceWithoutScheme) = 0)
		RETURN NULL

	DECLARE @indexOfFirstForwardSlash INT
	SELECT @indexOfFirstForwardSlash = CHARINDEX('/', @namespaceWithoutScheme)

	DECLARE @organizationName NVARCHAR(255)

	IF (@indexOfFirstForwardSlash = 0)
		SELECT @organizationName = @namespaceWithoutScheme
	ELSE
		SELECT @organizationName = LEFT(@namespaceWithoutScheme, @indexOfFirstForwardSlash - 1)

	SELECT @organizationName = [migration_tempdata].[removeTrailingSlash] (@organizationName)

	DECLARE @organizationNameAllowed BIT
	SELECT @organizationNameAllowed = [migration_tempdata].[namespace_organization_name_allowed] (@organizationName);
	IF (@organizationNameAllowed = 0)
		RETURN NULL
		
	RETURN @organizationName
END
GO



