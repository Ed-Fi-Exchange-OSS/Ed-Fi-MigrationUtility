-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationLanguageUse_PK] on [edfi].[StudentEducationOrganizationAssociationLanguageUse]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguageUse] ADD CONSTRAINT [StudentEducationOrganizationAssociationLanguageUse_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [LanguageDescriptorId], [LanguageUseDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationLanguageUse_StudentEducationOrganizationAssociationLanguage] on [edfi].[StudentEducationOrganizationAssociationLanguageUse]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationLanguageUse_StudentEducationOrganizationAssociationLanguage] ON [edfi].[StudentEducationOrganizationAssociationLanguageUse] ([EducationOrganizationId], [LanguageDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationLanguageUse_LanguageUseDescriptor] on [edfi].[StudentEducationOrganizationAssociationLanguageUse]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationLanguageUse_LanguageUseDescriptor] ON [edfi].[StudentEducationOrganizationAssociationLanguageUse] ([LanguageUseDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationLanguageUse]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguageUse] ADD CONSTRAINT [StudentEducationOrganizationAssociationLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
