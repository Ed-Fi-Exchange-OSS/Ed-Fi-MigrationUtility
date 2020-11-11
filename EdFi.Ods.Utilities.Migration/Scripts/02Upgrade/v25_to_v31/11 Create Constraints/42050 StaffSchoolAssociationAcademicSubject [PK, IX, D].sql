-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffSchoolAssociationAcademicSubject_PK] on [edfi].[StaffSchoolAssociationAcademicSubject]'
GO
ALTER TABLE [edfi].[StaffSchoolAssociationAcademicSubject] ADD CONSTRAINT [StaffSchoolAssociationAcademicSubject_PK] PRIMARY KEY CLUSTERED  ([AcademicSubjectDescriptorId], [ProgramAssignmentDescriptorId], [SchoolId], [StaffUSI])
GO

PRINT N'Creating index [FK_StaffSchoolAssociationAcademicSubject_AcademicSubjectDescriptor] on [edfi].[StaffSchoolAssociationAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSchoolAssociationAcademicSubject_AcademicSubjectDescriptor] ON [edfi].[StaffSchoolAssociationAcademicSubject] ([AcademicSubjectDescriptorId])
GO

PRINT N'Creating index [FK_StaffSchoolAssociationAcademicSubject_StaffSchoolAssociation] on [edfi].[StaffSchoolAssociationAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSchoolAssociationAcademicSubject_StaffSchoolAssociation] ON [edfi].[StaffSchoolAssociationAcademicSubject] ([ProgramAssignmentDescriptorId], [SchoolId], [StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffSchoolAssociationAcademicSubject]'
GO
ALTER TABLE [edfi].[StaffSchoolAssociationAcademicSubject] ADD CONSTRAINT [StaffSchoolAssociationAcademicSubject_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
