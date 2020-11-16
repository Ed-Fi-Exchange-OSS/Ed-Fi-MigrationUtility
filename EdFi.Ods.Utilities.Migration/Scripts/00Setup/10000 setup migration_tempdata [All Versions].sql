-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'migration_tempdata')
BEGIN
	DECLARE @DropMigrationTempdataObjectsSql nvarchar(max) = [migration_tempdata].[fn_sql_drop_all]()
	EXEC (@DropMigrationTempdataObjectsSql);
	DROP SCHEMA [migration_tempdata]
END
GO

PRINT N'Creating schema [migration_tempdata]'
GO

CREATE SCHEMA [migration_tempdata] AUTHORIZATION [dbo]
GO

CREATE FUNCTION [migration_tempdata].[fn_sql_drop_all]()
RETURNS NVARCHAR(MAX) AS
BEGIN
	DECLARE @NewLine NVARCHAR (2) = CHAR (13) + CHAR (10)
	DECLARE @DropMigrationTempdataObjectsSql nvarchar (MAX)

	-- Procedures
	SELECT @DropMigrationTempdataObjectsSql = ISNULL (@DropMigrationTempdataObjectsSql + @NewLine, '') + N'DROP PROCEDURE [migration_tempdata].[' + [name] + N'];'
	FROM [sys].[procedures] 
	WHERE OBJECT_SCHEMA_NAME([object_id]) = 'migration_tempdata'

	-- Check constraints
	SELECT @DropMigrationTempdataObjectsSql = ISNULL (@DropMigrationTempdataObjectsSql + @NewLine, '') + N'ALTER TABLE [migration_tempdata].[' + OBJECT_NAME ([parent_object_id]) + N'] DROP CONSTRAINT [' + [name] + N'];'
	FROM [sys].[check_constraints]
	WHERE OBJECT_SCHEMA_NAME([object_id]) = 'migration_tempdata'

	-- Functions
	SELECT @DropMigrationTempdataObjectsSql = ISNULL (@DropMigrationTempdataObjectsSql + @NewLine, '') + N'DROP FUNCTION [migration_tempdata].[' + [name] + N'];'
	FROM [sys].[objects]
	WHERE [type] IN ('FN', 'IF', 'TF')
	AND OBJECT_SCHEMA_NAME([object_id]) = 'migration_tempdata'

	-- Views
	SELECT @DropMigrationTempdataObjectsSql = ISNULL (@DropMigrationTempdataObjectsSql + @NewLine, '') + N'DROP VIEW [migration_tempdata].[' + [name] + N'];'
	FROM [sys].[views]
	WHERE OBJECT_SCHEMA_NAME([object_id]) = 'migration_tempdata'

	-- Foreign keys
	SELECT @DropMigrationTempdataObjectsSql = ISNULL (@DropMigrationTempdataObjectsSql + @NewLine, '') + N'ALTER TABLE  [migration_tempdata].[' + OBJECT_NAME ([parent_object_id]) + N'] DROP CONSTRAINT [' + [name] + N'];'
	FROM [sys].[foreign_keys]
	WHERE OBJECT_SCHEMA_NAME([object_id]) = 'migration_tempdata'

	-- Data
	SELECT @DropMigrationTempdataObjectsSql = ISNULL (@DropMigrationTempdataObjectsSql + @NewLine, '') + N'TRUNCATE TABLE [migration_tempdata].[' + [name] + N'];'
	FROM [sys].[tables]
	WHERE OBJECT_SCHEMA_NAME([object_id]) = 'migration_tempdata'

	-- Tables
	SELECT @DropMigrationTempdataObjectsSql = ISNULL (@DropMigrationTempdataObjectsSql + @NewLine, '') + N'DROP TABLE [migration_tempdata].[' + [name] + N'];'
	FROM [sys].[tables]
	WHERE OBJECT_SCHEMA_NAME([object_id]) = 'migration_tempdata'

	-- User defined types
	SELECT @DropMigrationTempdataObjectsSql = ISNULL (@DropMigrationTempdataObjectsSql + @NewLine, '') + N'DROP TYPE [migration_tempdata].[' + [name] + N'];'
	FROM [sys].[types]
	WHERE [is_user_defined] = 1
	AND SCHEMA_NAME([schema_id]) = 'migration_tempdata'

	RETURN @DropMigrationTempdataObjectsSql
END
GO


CREATE FUNCTION [migration_tempdata].[append_to_key](@oldKey NVARCHAR(MAX), @appendedValue NVARCHAR(MAX), @newKeyMaxLength INT)
RETURNS NVARCHAR(MAX) AS
BEGIN
	DECLARE @separator NVARCHAR = '-'
	DECLARE @oldKeyMinLength INT = 4
	DECLARE @oldKeyMaxLength INT = @newKeyMaxLength - LEN(@appendedValue) - LEN(@separator)

	IF @oldKeyMaxLength < @oldKeyMinLength
		SET @oldKeyMaxLength = @oldKeyMinLength

	DECLARE @newKey NVARCHAR(MAX) = CONCAT(LEFT(@oldKey, @oldKeyMaxLength), @separator, @appendedValue)
	RETURN LEFT(@newKey, @newKeyMaxLength)
END
GO


-- =============================================
-- Generates an identifier based on the hash of a given @source string
-- Given the same @source string, the same identifier will be produced
-- every time this function is run.

-- The given input string may be up to 4000 characters in length
-- (8000 bytes).

-- The identifier produced will be reduced in size
-- (UNIQUEIDENTIFIER = 16 bytes)
-- ============================================= */
CREATE FUNCTION [migration_tempdata].[string_to_guid](@source NVARCHAR(4000))
RETURNS UNIQUEIDENTIFIER AS
BEGIN
	RETURN CONVERT(UNIQUEIDENTIFIER, HASHBYTES('MD5', @source))
END
GO

-- =============================================
-- Generates an identifier based on the hash of a given @source string
-- Given the same @source string, the same identifier will be produced
-- every time this function is run.

-- The given input string may be up to 4000 characters in length
-- The identifier produced will be reduced in size (32 characters)

-- Primary use case:  Upgrading tables where the number of unique
-- columns in a key or unique index has decreased.
-- This function will create a unique string-based identifier
-- that is reproducible from existing data, and can be stored
-- given only 32 characters to work with.
-- ============================================= */
CREATE FUNCTION [migration_tempdata].[string_to_hash_id](@source NVARCHAR(4000))
RETURNS VARCHAR(32) AS
BEGIN
	RETURN REPLACE(CONVERT(VARCHAR(36), [migration_tempdata].[string_to_guid](@source)), '-','')
END
GO

--BEGIN: Validation related items

CREATE TABLE [migration_tempdata].[ValidationResult]
(
	[DestinationObjectName] NVARCHAR(256) NOT NULL,
	[SourceObjectId] INT NOT NULL,
	[ExpectedResult] VARBINARY(8000) NULL,
	[ActualResult] VARBINARY(8000) NULL,
	CONSTRAINT PK_ValidationResult PRIMARY KEY CLUSTERED ([DestinationObjectName])
)
GO

CREATE TABLE [migration_tempdata].[ValidationColumn]
(
	[Id] INT IDENTITY(1,1),
	[SourceColumnName] NVARCHAR(128) NOT NULL,
	[DestinationColumnName] NVARCHAR(128) NOT NULL,
	[DestinationObjectName] NVARCHAR(256) NOT NULL,
	CONSTRAINT PK_ValidationColumn PRIMARY KEY CLUSTERED ([Id]),
	CONSTRAINT UC_ValidationColumn_DestinationColumnName_DestinationObjectName UNIQUE([DestinationColumnName], [DestinationObjectName]),
	CONSTRAINT FK_ValidationColumn_ValidationResult FOREIGN KEY ([DestinationObjectName]) REFERENCES [migration_tempdata].[ValidationResult] ([DestinationObjectName])
)
GO

CREATE PROCEDURE [migration_tempdata].[sp_AssertObjectExists]
(
	@objectId INT
)
AS
BEGIN
IF (NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id =  @objectId))
	BEGIN
		DECLARE @ErrorMessage NVARCHAR(max) = 'Target validation object no longer exists'
		PRINT @ErrorMessage;
		THROW 50001, @ErrorMessage, 1
	END
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_AddValidationCheck]
(
	@SourceObjectName NVARCHAR(256),
	@SourceColumnName NVARCHAR(128),
	@DestinationObjectName NVARCHAR(256) = @SourceObjectName,
	@DestinationColumnName NVARCHAR(128) = @SourceColumnName
)
AS
BEGIN
	DECLARE @SourceObjectId INT = (SELECT OBJECT_ID(@SourceObjectName))
	EXEC [migration_tempdata].[sp_AssertObjectExists] @SourceObjectId


	IF NOT EXISTS (SELECT 1 FROM [migration_tempdata].[ValidationResult] WHERE [DestinationObjectName] = @DestinationObjectName AND [SourceObjectId] = @SourceObjectId)
	BEGIN
		INSERT [migration_tempdata].[ValidationResult] ([DestinationObjectName], [SourceObjectId]) VALUES (@DestinationObjectName, @SourceObjectId)
	END

	IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE name = @SourceColumnName AND OBJECT_ID = @SourceObjectId)
	BEGIN
		DECLARE @SourceNotFoundMessage NVARCHAR(max) = 'Source column ' + @SourceColumnName + ' not found on object ' + @SourceObjectName
		PRINT @SourceNotFoundMessage;
		THROW 50002, @SourceNotFoundMessage, 1
	END

	INSERT [migration_tempdata].[ValidationColumn]
	(
		[SourceColumnName],
		[DestinationColumnName],
		[DestinationObjectName]
	)
	VALUES
	(
		@SourceColumnName,
		@DestinationColumnName,
		@DestinationObjectName
	)
END
GO

CREATE TYPE [migration_tempdata].[ColumnList]
AS TABLE
(
	[Order] INT NOT NULL,
	[Name] NVARCHAR(128) NOT NULL
);
GO

-- =============================================
-- Parameters:
--   @objectId INT - object id of an existing table
--   @columns [migration_tempdata].[ColumnList] - List of columns to be used as a data source

-- Returns: VARBINARY(8000) - A single aggregate hash value based on the data currently contained in supplied columns
-- on the defined object

-- Details: May be used for a simple validation check to detect changes across multiple columns on a table.
-- As with any hashing operation, collisions are a rare occurrence, but still a possibility.  In order to 
-- guarantee a 100.00% match, the source and destination tables should be compared directly
-- =============================================

CREATE PROCEDURE [migration_tempdata].[sp_Hash_Column_Agg]
(
	@objectId INT,
	@columns AS [migration_tempdata].[ColumnList] READONLY,
	@result VARBINARY(8000) OUTPUT
)
AS
BEGIN
	IF OBJECT_ID('tempdb..##HashResult') IS NULL
	BEGIN
		CREATE TABLE ##HashResult ([Hash] VARBINARY(8000))
	END
	ELSE
	BEGIN
		TRUNCATE TABLE ##HashResult
	END

	DECLARE @columns_csv NVARCHAR(MAX)
	SELECT @columns_csv = COALESCE(@columns_csv + ', ', '') + '[' + [Name] + ']' FROM @columns ORDER BY [Order]
	DECLARE @tableNameWithSchema NVARCHAR(256) = CONCAT (OBJECT_SCHEMA_NAME(@objectId), '.', OBJECT_NAME(@objectId))
	DECLARE @notNullSql NVARCHAR(MAX) = (SELECT REPLACE(@columns_csv, ',',' IS NOT NULL AND ') + ' IS NOT NULL ')

	DECLARE @hashSql NVARCHAR(MAX) = '
	DECLARE FORWARD_CURSOR CURSOR LOCAL FAST_FORWARD FOR 
	SELECT CONVERT(NVARCHAR(4000), CONCAT(' + @columns_csv + ', ''''))
	FROM ' + @tableNameWithSchema + ' 
	WHERE ' + @notNullSql + ' 
	ORDER BY ' + @columns_csv + ' 
	OPEN FORWARD_CURSOR 
	DECLARE @hashResult VARBINARY(8000) = CONVERT(varbinary(1), '''')
	DECLARE @next NVARCHAR(4000)
	FETCH NEXT FROM FORWARD_CURSOR INTO @next
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		SET @hashResult = HASHBYTES(''SHA1'', @hashResult + HASHBYTES(''SHA1'', @next))
		FETCH NEXT FROM FORWARD_CURSOR INTO @next
	END
	CLOSE FORWARD_CURSOR
	DEALLOCATE FORWARD_CURSOR
	INSERT ##HashResult ([Hash]) SELECT @hashResult'

	EXEC (@hashSql)
	SELECT @result = (SELECT ISNULL([Hash], CONVERT(varbinary(1), '')) FROM ##HashResult)
	RETURN
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_GetSourceValidationResult]
(
	@DestinationObjectName NVARCHAR(256),
	@result VARBINARY(8000) OUTPUT
)
AS
BEGIN

DECLARE @SourceObjectId INT = (SELECT [SourceObjectId] FROM [migration_tempdata].[ValidationResult] WHERE [DestinationObjectName] = @DestinationObjectName)
EXEC [migration_tempdata].[sp_AssertObjectExists] @SourceObjectId

DECLARE @SourceColumns [migration_tempdata].[ColumnList]
INSERT INTO @SourceColumns ([Name], [Order])
	SELECT c.[SourceColumnName], c.Id FROM [migration_tempdata].[ValidationResult] r
	INNER JOIN [migration_tempdata].[ValidationColumn] c
	ON r.[DestinationObjectName] = c.[DestinationObjectName]
	WHERE (r.[SourceObjectId] = @SourceObjectId AND r.[DestinationObjectName] = @DestinationObjectName)

IF NOT EXISTS (SELECT 1 FROM @SourceColumns)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Source and destination column ids for object ' + @DestinationObjectName + ' must be defined via sp_AddValidationCheck before requesting a validation result.'
	PRINT @ErrorMessage;
	THROW 50003, @ErrorMessage, 1
END


EXEC [migration_tempdata].[sp_Hash_Column_Agg] @SourceObjectId,  @SourceColumns, @result OUTPUT
RETURN
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_GetDestinationValidationResult]
(
	@DestinationObjectName NVARCHAR(256),
	@result VARBINARY(8000) OUTPUT
)
AS
BEGIN

DECLARE @DestinationObjectId INT = (SELECT OBJECT_ID(@DestinationObjectName))
EXEC [migration_tempdata].[sp_AssertObjectExists] @DestinationObjectId

DECLARE @DestinationColumns [migration_tempdata].[ColumnList]
INSERT INTO @DestinationColumns ([Name], [Order])
	SELECT c.[DestinationColumnName], c.[Id] FROM [migration_tempdata].[ValidationResult] r
	INNER JOIN [migration_tempdata].[ValidationColumn] c
	ON r.[DestinationObjectName] = c.[DestinationObjectName]
	WHERE (r.[DestinationObjectName] = @DestinationObjectName)

IF NOT EXISTS (SELECT 1 FROM @DestinationColumns)

BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Source and destination column ids for object ' + @DestinationObjectName +' must be defined via sp_AddValidationCheck before requesting a validation result.'
	PRINT @ErrorMessage;
	THROW 50004, @ErrorMessage, 1
END

EXEC [migration_tempdata].[sp_Hash_Column_Agg] @DestinationObjectId,  @DestinationColumns, @result OUTPUT
RETURN
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_StoreExpectedValue]
(
	@DestinationObjectName NVARCHAR(256)
)
AS
BEGIN
DECLARE @expectedValidationResult VARBINARY(8000)
EXEC [migration_tempdata].[sp_GetSourceValidationResult] @DestinationObjectName, @expectedValidationResult OUTPUT
UPDATE [migration_tempdata].[ValidationResult]
SET [ExpectedResult] = @expectedValidationResult
WHERE [DestinationObjectName] = @DestinationObjectName
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_ValidateObject]
(
	@DestinationObjectName NVARCHAR(256)
)
AS
BEGIN

DECLARE @dataResult VARBINARY(8000)
EXEC [migration_tempdata].[sp_GetDestinationValidationResult] @DestinationObjectName, @dataResult OUTPUT
UPDATE [migration_tempdata].[ValidationResult]
SET [ActualResult] = @dataResult
WHERE [DestinationObjectName] = @DestinationObjectName

DECLARE @validationResult BIT = 
(
	SELECT (CASE WHEN [ExpectedResult] = [ActualResult] THEN 1 ELSE 0 END)
	FROM [migration_tempdata].[ValidationResult]
	WHERE [DestinationObjectName] = @DestinationObjectName
)

IF (@validationResult != 1)
	BEGIN
		DECLARE @ErrorMessage NVARCHAR(max) = 'A data validation failure was encountered on destination object ' + @DestinationObjectName + '.  This state can be triggered if records are modified in the middle of migration that the upgrade utility expected would remain unchanged.  If writing custom migration scripts, you will likely find the data validation check that triggered this event in directory ''02 Source Validation Check''.  If testing 2.x data modifications by hand, simply restore the target 2.x ODS and apply the desired 2.x inserts/updates/deletes before launching the upgrade utility.'
		PRINT @ErrorMessage;
		THROW 50005, @ErrorMessage, 1
	END
ELSE
	BEGIN
		PRINT N'Validation check passed: ' + @DestinationObjectName  
	END
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_ValidateAll]
AS
BEGIN
	DECLARE @object NVARCHAR(256)
	DECLARE FORWARD_CURSOR CURSOR LOCAL FAST_FORWARD FOR 
		SELECT [DestinationObjectName]
		FROM [migration_tempdata].[ValidationResult]
		WHERE ([ActualResult] IS NULL) OR ([ExpectedResult] != [ActualResult])
		ORDER BY [DestinationObjectName]
	OPEN FORWARD_CURSOR 
	FETCH NEXT FROM FORWARD_CURSOR INTO @object
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		PRINT N'Validating output result for data destination: ' + @object
		EXEC [migration_tempdata].[sp_ValidateObject] @object
		FETCH NEXT FROM FORWARD_CURSOR INTO @object
	END
	CLOSE FORWARD_CURSOR
	DEALLOCATE FORWARD_CURSOR
END
GO

--END: Validation related items

CREATE PROCEDURE [migration_tempdata].[sp_DropForeignKeys]
(
	@ParentSchemaName NVARCHAR(128),
	@TableName NVARCHAR(128) = NULL,
	@ReferencedSchemaName NVARCHAR(128) = NULL
)
AS
BEGIN
	DECLARE @TargetObjectName NVARCHAR(128)
	DECLARE @ConstraintName NVARCHAR(128)
	DECLARE @DropConstraintSQL NVARCHAR(MAX)

	DECLARE [FORWARD_CURSOR] CURSOR LOCAL FAST_FORWARD FOR
	SELECT [parent_object].[name],
		   [fk].[name]
	FROM [sys].[foreign_keys] [fk]
	INNER JOIN [sys].[objects] [parent_object]
		ON	[parent_object].[object_id] = [fk].[parent_object_id]
		AND [parent_object].[type] = 'U'
	INNER JOIN [sys].[schemas] [parent_schema]
		ON	[parent_schema].[schema_id] = [parent_object].[schema_id]
		AND [parent_schema].[name] = @ParentSchemaName
	INNER JOIN [sys].[objects] [referenced_object]
		ON [referenced_object].[object_id] = [fk].[referenced_object_id]
	INNER JOIN [sys].[schemas] [referenced_schema]
		ON	[referenced_schema].[schema_id] = [referenced_object].[schema_id]
		AND ((@ReferencedSchemaName IS NULL) OR ([referenced_schema].[name] = @ReferencedSchemaName))
		AND ((@TableName IS NULL) OR ([parent_object].[name] = @TableName))
	ORDER BY [parent_object].[name],
			 [referenced_object].[name],
			 [fk].[name]
	OPEN [FORWARD_CURSOR]
	FETCH NEXT FROM [FORWARD_CURSOR]
	INTO @TargetObjectName,
		 @ConstraintName
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		PRINT N'Dropping foreign key ' + @ConstraintName + ' on [' + @ParentSchemaName + '].[' + @TargetObjectName + '].'
		SELECT @DropConstraintSQL = N'ALTER TABLE ' + N'[' + @ParentSchemaName + N'].[' + @TargetObjectName + N']' + N' DROP CONSTRAINT [' + @ConstraintName + N'];'
		EXEC (@DropConstraintSQL)
		FETCH NEXT FROM [FORWARD_CURSOR]
		INTO @TargetObjectName,
			 @ConstraintName
	END
	CLOSE [FORWARD_CURSOR]
	DEALLOCATE [FORWARD_CURSOR]
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_DropPrimaryKeys] 
(
	@SchemaName NVARCHAR(128),
	@TableName NVARCHAR(128) = NULL
)
AS
BEGIN
	DECLARE @TargetObjectName NVARCHAR(128)
	DECLARE @ConstraintName NVARCHAR(128)
	DECLARE @DropConstraintSQL NVARCHAR(MAX)

	DECLARE [FORWARD_CURSOR] CURSOR LOCAL FAST_FORWARD FOR
	SELECT [o].[name],
		   [k].[name]
	FROM [sys].[key_constraints] [k]
	INNER JOIN [sys].[objects] [o]
		ON [k].[parent_object_id] = [o].[object_id]
	INNER JOIN [sys].[schemas] [s]
		ON [o].[schema_id] = [s].[schema_id]
	WHERE [s].[name] = @SchemaName
	AND	  [k].[type] = 'PK'
	AND ((@TableName IS NULL) OR ([o].[name] = @TableName))
	ORDER BY [o].[name]
	OPEN [FORWARD_CURSOR]
	FETCH NEXT FROM [FORWARD_CURSOR]
	INTO @TargetObjectName,
		 @ConstraintName
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		PRINT N'Dropping primary key ' + @ConstraintName + ' on [' + @SchemaName + '].[' + @TargetObjectName + '].'
		SELECT @DropConstraintSQL = N'ALTER TABLE ' + N'[' + @SchemaName + N'].[' + @TargetObjectName + N']' + N' DROP CONSTRAINT [' + @ConstraintName + N'];'
		EXEC (@DropConstraintSQL)
		FETCH NEXT FROM [FORWARD_CURSOR]
		INTO @TargetObjectName,
			 @ConstraintName
	END
	CLOSE [FORWARD_CURSOR]
	DEALLOCATE [FORWARD_CURSOR]
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_DropUniqueConstraints]
(
	@SchemaName NVARCHAR(128),
	@TableName NVARCHAR(128) = NULL
)
AS
BEGIN
	DECLARE @TargetObjectName NVARCHAR(128)
	DECLARE @ConstraintName NVARCHAR(128)
	DECLARE @DropConstraintSQL NVARCHAR(MAX)

	DECLARE [FORWARD_CURSOR] CURSOR LOCAL FAST_FORWARD FOR
	SELECT [o].[name],
		   [k].[name]
	FROM [sys].[key_constraints] [k]
	INNER JOIN [sys].[objects] [o]
		ON [k].[parent_object_id] = [o].[object_id]
	INNER JOIN [sys].[schemas] [s]
		ON [o].[schema_id] = [s].[schema_id]
	WHERE [s].[name] = @SchemaName
	AND	  [k].[type] = 'UQ'
	AND ((@TableName IS NULL) OR ([o].[name] = @TableName))
	ORDER BY [o].[name]
	OPEN [FORWARD_CURSOR]
	FETCH NEXT FROM [FORWARD_CURSOR]
	INTO @TargetObjectName,
		 @ConstraintName
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		PRINT N'Dropping unique constraint ' + @ConstraintName + ' on [' + @SchemaName + '].[' + @TargetObjectName + '].'
		SELECT @DropConstraintSQL = N'ALTER TABLE ' + N'[' + @SchemaName + N'].[' + @TargetObjectName + N']' + N' DROP CONSTRAINT [' + @ConstraintName + N'];'
		EXEC (@DropConstraintSQL)
		FETCH NEXT FROM [FORWARD_CURSOR]
		INTO @TargetObjectName,
			 @ConstraintName
	END
	CLOSE [FORWARD_CURSOR]
	DEALLOCATE [FORWARD_CURSOR]
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_DropIndexes]
(
	@SchemaName NVARCHAR(128),
	@TableName NVARCHAR(128) = NULL
)
AS
BEGIN
	DECLARE @TargetObjectName NVARCHAR(128)
	DECLARE @IndexName NVARCHAR(128)
	DECLARE @DropIndexSql NVARCHAR(MAX)

	DECLARE [FORWARD_CURSOR] CURSOR LOCAL FAST_FORWARD FOR
	SELECT [o].[name],
		   [i].[name]
	FROM [sys].[indexes] [i]
	INNER JOIN [sys].[objects] [o]
		ON	[o].[object_id] = [i].[object_id]
		AND [o].[type] = 'U'
	INNER JOIN [sys].[schemas] [s]
		ON	[s].[schema_id] = [o].[schema_id]
		AND [s].[name] = @SchemaName
		AND ((@TableName IS NULL) OR ([o].[name] = @TableName))
	ORDER BY [o].[name],
			 [i].[name]
	OPEN [FORWARD_CURSOR]
	FETCH NEXT FROM [FORWARD_CURSOR]
	INTO @TargetObjectName,
		 @IndexName
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		PRINT N'Dropping index ' + @IndexName + ' on [' + @SchemaName + '].[' + @TargetObjectName + '].'
		SELECT @DropIndexSql = N'DROP INDEX [' + @IndexName + N'] ON [' + @SchemaName + N'].[' + @TargetObjectName + N'];'
		EXEC (@DropIndexSql)
		FETCH NEXT FROM [FORWARD_CURSOR]
		INTO @TargetObjectName,
			 @IndexName
	END
	CLOSE [FORWARD_CURSOR]
	DEALLOCATE [FORWARD_CURSOR]
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_DropDefaultConstraints]
(
	@SchemaName NVARCHAR(128),
	@TableName NVARCHAR(128) = NULL
)
AS
BEGIN
	DECLARE @TargetObjectName NVARCHAR(128)
	DECLARE @ConstraintName NVARCHAR(128)
	DECLARE @DropConstraintSQL NVARCHAR(MAX)

	DECLARE [FORWARD_CURSOR] CURSOR LOCAL FAST_FORWARD FOR
	SELECT [o].[name],
		   [d].[name]
	FROM [sys].[default_constraints] [d]
	INNER JOIN [sys].[objects] [o]
		ON [d].[parent_object_id] = [o].[object_id]
	INNER JOIN [sys].[schemas] [s]
		ON [o].[schema_id] = [s].[schema_id]
	WHERE [s].[name] = @SchemaName
	AND ((@TableName IS NULL) OR ([o].[name] = @TableName))
	ORDER BY [o].[name],
			 [d].[name]
	OPEN [FORWARD_CURSOR]
	FETCH NEXT FROM [FORWARD_CURSOR]
	INTO @TargetObjectName,
		 @ConstraintName
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		PRINT N'Dropping default constraint ' + @ConstraintName + ' on [' + @SchemaName + '].[' + @TargetObjectName + '].'
		SELECT @DropConstraintSQL = N'ALTER TABLE ' + N'[' + @SchemaName + N'].[' + @TargetObjectName + N']' + N' DROP CONSTRAINT [' + @ConstraintName + N'];'
		EXEC (@DropConstraintSQL)
		FETCH NEXT FROM [FORWARD_CURSOR]
		INTO @TargetObjectName,
			 @ConstraintName
	END
	CLOSE [FORWARD_CURSOR]
	DEALLOCATE [FORWARD_CURSOR]
END
GO

CREATE PROCEDURE [migration_tempdata].[sp_DropExtendedProperties]
(
	@SchemaName NVARCHAR(128),
	@TableName NVARCHAR(128) = NULL
)
AS
BEGIN
	DECLARE @DropExtendedPropertiesSql NVARCHAR(MAX)
	DECLARE [FORWARD_CURSOR] CURSOR LOCAL FAST_FORWARD FOR

	--Table extended properties:
	SELECT CONCAT(
					 'sp_dropextendedproperty @name = ''',
					 [e].[name],
					 '''',
					 ', @level0type =''schema''',
					 ', @level0name = [',
					 @SchemaName,
					 ']',
					 ', @level1type =''table''',
					 ', @level1name = [',
					 [t].[name],
					 ']'
				 ) AS [DropExtendedPropertySql]
	FROM [sys].[extended_properties] [e]
	INNER JOIN [sys].[tables] [t]
		ON	[e].[major_id] = [t].[object_id]
		AND [t].[type] = 'U'
	INNER JOIN [sys].[schemas] [s]
		ON	[s].[schema_id] = [t].[schema_id]
		AND [s].[name] = @SchemaName
	WHERE [e].[class_desc] = 'OBJECT_OR_COLUMN'
	AND	  [e].[minor_id] = 0
	AND   ((@TableName IS NULL) OR ([t].[Name] = @TableName))
	UNION
	--Column Extended Properties:
	SELECT CONCAT(
					 'sp_dropextendedproperty @name = ''',
					 [e].[name],
					 '''',
					 ', @level0type =''schema''',
					 ', @level0name = [',
					 @SchemaName,
					 ']',
					 ', @level1type =''table''',
					 ', @level1name = [',
					 [t].[name],
					 ']',
					 ', @level2type =''column''',
					 ', @level2name = [',
					 [c].[name],
					 ']'
				 ) AS [DropExtendedPropertySql]
	FROM [sys].[extended_properties] [e]
	INNER JOIN [sys].[tables] [t]
		ON	[e].[major_id] = [t].[object_id]
		AND [t].[type] = 'U'
	INNER JOIN [sys].[columns] [c]
		ON	[c].[object_id] = [t].[object_id]
		AND [c].[column_id] = [e].[minor_id]
	INNER JOIN [sys].[schemas] [s]
		ON	[s].[schema_id] = [t].[schema_id]
		AND [s].[name] = @SchemaName
	WHERE [e].[class_desc] = 'OBJECT_OR_COLUMN'
	AND	  [e].[minor_id] > 0
	AND	  ((@TableName IS NULL) OR ([t].[Name] = @TableName))
	ORDER BY [DropExtendedPropertySql]

	OPEN [FORWARD_CURSOR]
	FETCH NEXT FROM [FORWARD_CURSOR]
	INTO @DropExtendedPropertiesSql
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		EXEC (@DropExtendedPropertiesSql)
		FETCH NEXT FROM [FORWARD_CURSOR]
		INTO @DropExtendedPropertiesSql
	END
	CLOSE [FORWARD_CURSOR]
	DEALLOCATE [FORWARD_CURSOR]
END
GO
