-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationCategory_PK] on [edfi].[EducationOrganizationCategory]'
GO
ALTER TABLE [edfi].[EducationOrganizationCategory] ADD CONSTRAINT [EducationOrganizationCategory_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationCategoryDescriptorId], [EducationOrganizationId])
GO

PRINT N'Creating index [FK_EducationOrganizationCategory_EducationOrganizationCategoryDescriptor] on [edfi].[EducationOrganizationCategory]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationCategory_EducationOrganizationCategoryDescriptor] ON [edfi].[EducationOrganizationCategory] ([EducationOrganizationCategoryDescriptorId])
GO

PRINT N'Creating index [FK_EducationOrganizationCategory_EducationOrganization] on [edfi].[EducationOrganizationCategory]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationCategory_EducationOrganization] ON [edfi].[EducationOrganizationCategory] ([EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationCategory]'
GO
ALTER TABLE [edfi].[EducationOrganizationCategory] ADD CONSTRAINT [EducationOrganizationCategory_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
