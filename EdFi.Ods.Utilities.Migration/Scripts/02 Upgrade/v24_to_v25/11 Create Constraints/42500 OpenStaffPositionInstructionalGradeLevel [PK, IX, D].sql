-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [OpenStaffPositionInstructionalGradeLevel_PK] on [edfi].[OpenStaffPositionInstructionalGradeLevel]'
GO
ALTER TABLE [edfi].[OpenStaffPositionInstructionalGradeLevel] ADD CONSTRAINT [OpenStaffPositionInstructionalGradeLevel_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [StaffClassificationDescriptorId], [RequisitionNumber], [DatePosted], [GradeLevelDescriptorId], [EmploymentStatusDescriptorId])
GO
PRINT N'Creating index [FK_OpenStaffPositionInstructionalGradeLevel_OpenStaffPosition] on [edfi].[OpenStaffPositionInstructionalGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionInstructionalGradeLevel_OpenStaffPosition] ON [edfi].[OpenStaffPositionInstructionalGradeLevel] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [StaffClassificationDescriptorId], [RequisitionNumber], [DatePosted])
GO
PRINT N'Creating index [FK_OpenStaffPositionInstructionalGradeLevel_GradeLevelDescriptor] on [edfi].[OpenStaffPositionInstructionalGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionInstructionalGradeLevel_GradeLevelDescriptor] ON [edfi].[OpenStaffPositionInstructionalGradeLevel] ([GradeLevelDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[OpenStaffPositionInstructionalGradeLevel]'
GO
ALTER TABLE [edfi].[OpenStaffPositionInstructionalGradeLevel] ADD CONSTRAINT [OpenStaffPositionInstructionalGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

