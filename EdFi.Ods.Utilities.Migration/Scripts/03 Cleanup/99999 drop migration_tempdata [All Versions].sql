-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping global temporary data used during migration'
GO

/*
The [migration_tempdata] contains a
[Version] table that is used to inform the upgrade 
utility what version upgrade is currently
in progress.

These final drop operations should run last
*/

IF EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'migration_tempdata')
BEGIN
	EXEC [migration_tempdata].[sp_DropForeignKeys] 'migration_tempdata'
END
GO

IF EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'migration_tempdata')
BEGIN
	EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'migration_tempdata'
END
GO

IF EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'migration_tempdata')
BEGIN
	EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'migration_tempdata'
END
GO

IF EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'migration_tempdata')
BEGIN
	EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'migration_tempdata'
END
GO

IF EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'migration_tempdata')
BEGIN
	EXEC [migration_tempdata].[sp_DropIndexes] 'migration_tempdata'
END
GO

IF EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'migration_tempdata')
BEGIN
	DECLARE @DropMigrationTempdataObjectsSql nvarchar(max) = [migration_tempdata].[fn_sql_drop_all]();
	EXEC (@DropMigrationTempdataObjectsSql);
	DROP SCHEMA [migration_tempdata];
END
GO

