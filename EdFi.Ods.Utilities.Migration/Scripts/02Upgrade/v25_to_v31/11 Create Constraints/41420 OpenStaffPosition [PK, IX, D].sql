-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [OpenStaffPosition_PK] on [edfi].[OpenStaffPosition]'
GO
ALTER TABLE [edfi].[OpenStaffPosition] ADD CONSTRAINT [OpenStaffPosition_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [RequisitionNumber])
GO

PRINT N'Creating index [UX_OpenStaffPosition_Id] on [edfi].[OpenStaffPosition]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_OpenStaffPosition_Id] ON [edfi].[OpenStaffPosition] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_OpenStaffPosition_EducationOrganization] on [edfi].[OpenStaffPosition]'
GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPosition_EducationOrganization] ON [edfi].[OpenStaffPosition] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_OpenStaffPosition_EmploymentStatusDescriptor] on [edfi].[OpenStaffPosition]'
GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPosition_EmploymentStatusDescriptor] ON [edfi].[OpenStaffPosition] ([EmploymentStatusDescriptorId])
GO

PRINT N'Creating index [FK_OpenStaffPosition_PostingResultDescriptor] on [edfi].[OpenStaffPosition]'
GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPosition_PostingResultDescriptor] ON [edfi].[OpenStaffPosition] ([PostingResultDescriptorId])
GO

PRINT N'Creating index [FK_OpenStaffPosition_ProgramAssignmentDescriptor] on [edfi].[OpenStaffPosition]'
GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPosition_ProgramAssignmentDescriptor] ON [edfi].[OpenStaffPosition] ([ProgramAssignmentDescriptorId])
GO

PRINT N'Creating index [FK_OpenStaffPosition_StaffClassificationDescriptor] on [edfi].[OpenStaffPosition]'
GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPosition_StaffClassificationDescriptor] ON [edfi].[OpenStaffPosition] ([StaffClassificationDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[OpenStaffPosition]'
GO
ALTER TABLE [edfi].[OpenStaffPosition] ADD CONSTRAINT [OpenStaffPosition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[OpenStaffPosition] ADD CONSTRAINT [OpenStaffPosition_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[OpenStaffPosition] ADD CONSTRAINT [OpenStaffPosition_DF_Id] DEFAULT (newid()) FOR [Id]
GO
