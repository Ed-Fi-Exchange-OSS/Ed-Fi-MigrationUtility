-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating Descriptor migration tempdata'
GO

DECLARE @EdFiDescriptorTableName NVARCHAR(128)
DECLARE @DescriptorIdColumnName NVARCHAR(128)

DECLARE FORWARD_CURSOR CURSOR LOCAL FAST_FORWARD FOR 
	SELECT DISTINCT t.[name] AS [EdFiDescriptorTableName], c.[name] AS [DescriptorIdColumnName]
	FROM sys.tables t 
	INNER JOIN sys.columns c
		ON c.[name] = CONCAT(t.[name], 'Id')
	INNER JOIN sys.[foreign_key_columns] f
		ON f.[parent_object_id] = t.[object_id]
		AND OBJECT_NAME(f.[referenced_object_id]) = 'Descriptor'
	WHERE t.[name] LIKE '_%Descriptor'
	AND OBJECT_SCHEMA_NAME(t.[object_id]) = 'edfi'
		ORDER BY [EdFiDescriptorTableName], [DescriptorIdColumnName]
OPEN FORWARD_CURSOR 
FETCH NEXT FROM FORWARD_CURSOR INTO @EdFiDescriptorTableName, @DescriptorIdColumnName
WHILE (@@FETCH_STATUS = 0)
BEGIN
	EXEC('
	INSERT [migration_tempdata].[DescriptorTableReference]
	(
		[DescriptorId],
		[DescriptorTable]
	)
	SELECT DISTINCT
		[' + @DescriptorIdColumnName + '],
		''' + @EdFiDescriptorTableName + '''
	FROM [edfi].[' + @EdFiDescriptorTableName + ']'
	)
	FETCH NEXT FROM FORWARD_CURSOR INTO @EdFiDescriptorTableName, @DescriptorIdColumnName
END
CLOSE FORWARD_CURSOR
DEALLOCATE FORWARD_CURSOR
GO