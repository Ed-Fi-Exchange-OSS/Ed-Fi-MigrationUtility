-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffSchoolAssociation_PK] on [edfi].[StaffSchoolAssociation]'
GO
ALTER TABLE [edfi].[StaffSchoolAssociation] ADD CONSTRAINT [StaffSchoolAssociation_PK] PRIMARY KEY CLUSTERED  ([ProgramAssignmentDescriptorId], [SchoolId], [StaffUSI])
GO

PRINT N'Creating index [UX_StaffSchoolAssociation_Id] on [edfi].[StaffSchoolAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StaffSchoolAssociation_Id] ON [edfi].[StaffSchoolAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StaffSchoolAssociation_Calendar] on [edfi].[StaffSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSchoolAssociation_Calendar] ON [edfi].[StaffSchoolAssociation] ([CalendarCode], [SchoolId], [SchoolYear])
GO

PRINT N'Creating index [FK_StaffSchoolAssociation_ProgramAssignmentDescriptor] on [edfi].[StaffSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSchoolAssociation_ProgramAssignmentDescriptor] ON [edfi].[StaffSchoolAssociation] ([ProgramAssignmentDescriptorId])
GO

PRINT N'Creating index [FK_StaffSchoolAssociation_School] on [edfi].[StaffSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSchoolAssociation_School] ON [edfi].[StaffSchoolAssociation] ([SchoolId])
GO

PRINT N'Creating index [FK_StaffSchoolAssociation_SchoolYearType] on [edfi].[StaffSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSchoolAssociation_SchoolYearType] ON [edfi].[StaffSchoolAssociation] ([SchoolYear])
GO

PRINT N'Creating index [FK_StaffSchoolAssociation_Staff] on [edfi].[StaffSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSchoolAssociation_Staff] ON [edfi].[StaffSchoolAssociation] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffSchoolAssociation]'
GO
ALTER TABLE [edfi].[StaffSchoolAssociation] ADD CONSTRAINT [StaffSchoolAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StaffSchoolAssociation] ADD CONSTRAINT [StaffSchoolAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StaffSchoolAssociation] ADD CONSTRAINT [StaffSchoolAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
