-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[OpenStaffPositionAcademicSubject]'
GO
ALTER TABLE [edfi].[OpenStaffPositionAcademicSubject] ADD CONSTRAINT [FK_OpenStaffPositionAcademicSubject_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO
ALTER TABLE [edfi].[OpenStaffPositionAcademicSubject] ADD CONSTRAINT [FK_OpenStaffPositionAcademicSubject_OpenStaffPosition] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [StaffClassificationDescriptorId], [RequisitionNumber], [DatePosted]) REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [StaffClassificationDescriptorId], [RequisitionNumber], [DatePosted]) ON DELETE CASCADE
GO
