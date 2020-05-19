-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[EducationOrganizationCategory]'
GO
ALTER TABLE [edfi].[EducationOrganizationCategory] ADD CONSTRAINT [FK_EducationOrganizationCategory_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[EducationOrganizationCategory] ADD CONSTRAINT [FK_EducationOrganizationCategory_EducationOrganizationCategoryType] FOREIGN KEY ([EducationOrganizationCategoryTypeId]) REFERENCES [edfi].[EducationOrganizationCategoryType] ([EducationOrganizationCategoryTypeId])
GO
