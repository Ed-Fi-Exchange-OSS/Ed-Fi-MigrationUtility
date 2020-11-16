-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationLanguage_PK] on [edfi].[StudentEducationOrganizationAssociationLanguage]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguage] ADD CONSTRAINT [StudentEducationOrganizationAssociationLanguage_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [LanguageDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationLanguage_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationLanguage_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationLanguage] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationLanguage_LanguageDescriptor] on [edfi].[StudentEducationOrganizationAssociationLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationLanguage_LanguageDescriptor] ON [edfi].[StudentEducationOrganizationAssociationLanguage] ([LanguageDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationLanguage]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguage] ADD CONSTRAINT [StudentEducationOrganizationAssociationLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
