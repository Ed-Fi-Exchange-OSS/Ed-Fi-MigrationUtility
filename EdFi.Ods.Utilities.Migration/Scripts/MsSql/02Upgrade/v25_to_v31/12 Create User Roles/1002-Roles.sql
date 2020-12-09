-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'db_accessadmin' AND type = 'R')
CREATE ROLE [db_accessadmin]
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'db_backupoperator' AND type = 'R')
CREATE ROLE [db_backupoperator]
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'db_datareader' AND type = 'R')
CREATE ROLE [db_datareader]
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'db_datawriter' AND type = 'R')
CREATE ROLE [db_datawriter]
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'db_ddladmin' AND type = 'R')
CREATE ROLE [db_ddladmin]
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'db_denydatareader' AND type = 'R')
CREATE ROLE [db_denydatareader]
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'db_denydatawriter' AND type = 'R')
CREATE ROLE [db_denydatawriter]
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'db_owner' AND type = 'R')
CREATE ROLE [db_owner]
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'db_securityadmin' AND type = 'R')
CREATE ROLE [db_securityadmin]
GO
