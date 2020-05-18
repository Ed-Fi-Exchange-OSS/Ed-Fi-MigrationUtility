-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[OpenStaffPosition]'
GO
ALTER TABLE [edfi].[OpenStaffPosition] ADD CONSTRAINT [FK_OpenStaffPosition_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[OpenStaffPosition] ADD CONSTRAINT [FK_OpenStaffPosition_EmploymentStatusDescriptor] FOREIGN KEY ([EmploymentStatusDescriptorId]) REFERENCES [edfi].[EmploymentStatusDescriptor] ([EmploymentStatusDescriptorId])
GO
ALTER TABLE [edfi].[OpenStaffPosition] ADD CONSTRAINT [FK_OpenStaffPosition_PostingResultType] FOREIGN KEY ([PostingResultTypeId]) REFERENCES [edfi].[PostingResultType] ([PostingResultTypeId])
GO
ALTER TABLE [edfi].[OpenStaffPosition] ADD CONSTRAINT [FK_OpenStaffPosition_ProgramAssignmentDescriptor] FOREIGN KEY ([ProgramAssignmentDescriptorId]) REFERENCES [edfi].[ProgramAssignmentDescriptor] ([ProgramAssignmentDescriptorId])
GO
ALTER TABLE [edfi].[OpenStaffPosition] ADD CONSTRAINT [FK_OpenStaffPosition_StaffClassificationDescriptor] FOREIGN KEY ([StaffClassificationDescriptorId]) REFERENCES [edfi].[StaffClassificationDescriptor] ([StaffClassificationDescriptorId])
GO
