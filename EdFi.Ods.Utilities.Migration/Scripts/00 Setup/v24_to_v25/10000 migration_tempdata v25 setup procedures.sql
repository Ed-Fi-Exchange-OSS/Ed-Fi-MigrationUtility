-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Setting up temporary procedures'
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
