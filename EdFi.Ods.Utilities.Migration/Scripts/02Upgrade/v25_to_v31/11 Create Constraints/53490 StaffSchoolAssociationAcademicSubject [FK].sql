-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffSchoolAssociationAcademicSubject]'
GO
ALTER TABLE [edfi].[StaffSchoolAssociationAcademicSubject] ADD CONSTRAINT [FK_StaffSchoolAssociationAcademicSubject_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO
ALTER TABLE [edfi].[StaffSchoolAssociationAcademicSubject] ADD CONSTRAINT [FK_StaffSchoolAssociationAcademicSubject_StaffSchoolAssociation] FOREIGN KEY ([ProgramAssignmentDescriptorId], [SchoolId], [StaffUSI]) REFERENCES [edfi].[StaffSchoolAssociation] ([ProgramAssignmentDescriptorId], [SchoolId], [StaffUSI]) ON DELETE CASCADE
GO
