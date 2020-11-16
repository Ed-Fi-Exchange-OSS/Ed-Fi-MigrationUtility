-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SchoolYearType_PK] on [edfi].[SchoolYearType]'
GO
ALTER TABLE [edfi].[SchoolYearType] ADD CONSTRAINT [SchoolYearType_PK] PRIMARY KEY CLUSTERED  ([SchoolYear])
GO

PRINT N'Creating index [UX_SchoolYearType_Id] on [edfi].[SchoolYearType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_SchoolYearType_Id] ON [edfi].[SchoolYearType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[SchoolYearType]'
GO
ALTER TABLE [edfi].[SchoolYearType] ADD CONSTRAINT [SchoolYearType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[SchoolYearType] ADD CONSTRAINT [SchoolYearType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[SchoolYearType] ADD CONSTRAINT [SchoolYearType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
