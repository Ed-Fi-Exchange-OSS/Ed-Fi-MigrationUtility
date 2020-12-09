-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationCategoryType_PK] on [edfi].[EducationOrganizationCategoryType]'
GO
ALTER TABLE [edfi].[EducationOrganizationCategoryType] ADD CONSTRAINT [EducationOrganizationCategoryType_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationCategoryTypeId])
GO
PRINT N'Creating index [UX_EducationOrganizationCategoryType_Id] on [edfi].[EducationOrganizationCategoryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EducationOrganizationCategoryType_Id] ON [edfi].[EducationOrganizationCategoryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationCategoryType]'
GO
ALTER TABLE [edfi].[EducationOrganizationCategoryType] ADD CONSTRAINT [EducationOrganizationCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EducationOrganizationCategoryType] ADD CONSTRAINT [EducationOrganizationCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EducationOrganizationCategoryType] ADD CONSTRAINT [EducationOrganizationCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

