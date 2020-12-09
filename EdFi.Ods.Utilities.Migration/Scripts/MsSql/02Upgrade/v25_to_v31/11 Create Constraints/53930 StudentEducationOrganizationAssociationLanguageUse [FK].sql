-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentEducationOrganizationAssociationLanguageUse]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguageUse] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationLanguageUse_LanguageUseDescriptor] FOREIGN KEY ([LanguageUseDescriptorId]) REFERENCES [edfi].[LanguageUseDescriptor] ([LanguageUseDescriptorId])
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguageUse] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationLanguageUse_StudentEducationOrganizationAssociationLanguage] FOREIGN KEY ([EducationOrganizationId], [LanguageDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociationLanguage] ([EducationOrganizationId], [LanguageDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
