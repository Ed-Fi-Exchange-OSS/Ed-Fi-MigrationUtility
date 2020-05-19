-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationStudentIdentificationCode_PK] on [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode] ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentIdentificationCode_PK] PRIMARY KEY CLUSTERED  ([AssigningOrganizationIdentificationCode], [EducationOrganizationId], [StudentIdentificationSystemDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationStudentIdentificationCode_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationStudentIdentificationCode_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationStudentIdentificationCode_StudentIdentificationSystemDescriptor] on [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationStudentIdentificationCode_StudentIdentificationSystemDescriptor] ON [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode] ([StudentIdentificationSystemDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode] ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
