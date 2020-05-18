-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationStudentCharacteristic_PK] on [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic] ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentCharacteristic_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [StudentCharacteristicDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationStudentCharacteristic_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationStudentCharacteristic_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationStudentCharacteristic_StudentCharacteristicDescriptor] on [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationStudentCharacteristic_StudentCharacteristicDescriptor] ON [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic] ([StudentCharacteristicDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic] ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
