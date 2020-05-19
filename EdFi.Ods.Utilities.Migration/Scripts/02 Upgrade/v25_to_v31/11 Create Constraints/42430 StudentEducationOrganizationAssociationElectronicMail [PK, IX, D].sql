-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationElectronicMail_PK] on [edfi].[StudentEducationOrganizationAssociationElectronicMail]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationElectronicMail] ADD CONSTRAINT [StudentEducationOrganizationAssociationElectronicMail_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [ElectronicMailTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationElectronicMail_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationElectronicMail]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationElectronicMail_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationElectronicMail] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationElectronicMail_ElectronicMailTypeDescriptor] on [edfi].[StudentEducationOrganizationAssociationElectronicMail]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationElectronicMail_ElectronicMailTypeDescriptor] ON [edfi].[StudentEducationOrganizationAssociationElectronicMail] ([ElectronicMailTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationElectronicMail]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationElectronicMail] ADD CONSTRAINT [StudentEducationOrganizationAssociationElectronicMail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
