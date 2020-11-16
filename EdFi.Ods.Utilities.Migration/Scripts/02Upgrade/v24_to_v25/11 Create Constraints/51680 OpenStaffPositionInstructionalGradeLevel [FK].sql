-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[OpenStaffPositionInstructionalGradeLevel]'
GO
ALTER TABLE [edfi].[OpenStaffPositionInstructionalGradeLevel] ADD CONSTRAINT [FK_OpenStaffPositionInstructionalGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
ALTER TABLE [edfi].[OpenStaffPositionInstructionalGradeLevel] ADD CONSTRAINT [FK_OpenStaffPositionInstructionalGradeLevel_OpenStaffPosition] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [StaffClassificationDescriptorId], [RequisitionNumber], [DatePosted]) REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [StaffClassificationDescriptorId], [RequisitionNumber], [DatePosted]) ON DELETE CASCADE
GO
