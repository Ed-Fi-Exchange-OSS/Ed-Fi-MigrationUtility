-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[SchoolYearType_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SchoolYearType] DROP CONSTRAINT [SchoolYearType_DF_CreateDate];


GO
PRINT N'Dropping [edfi].[SchoolYearType_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SchoolYearType] DROP CONSTRAINT [SchoolYearType_DF_LastModifiedDate];


GO
PRINT N'Altering [edfi].[SchoolYearType]...';


GO
ALTER TABLE [edfi].[SchoolYearType] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;

ALTER TABLE [edfi].[SchoolYearType] ALTER COLUMN [LastModifiedDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[SchoolYearType_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SchoolYearType]
    ADD CONSTRAINT [SchoolYearType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [edfi].[SchoolYearType_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SchoolYearType]
    ADD CONSTRAINT [SchoolYearType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
