-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffProgramAssociation_PK] on [edfi].[StaffProgramAssociation]'
GO
ALTER TABLE [edfi].[StaffProgramAssociation] ADD CONSTRAINT [StaffProgramAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StaffUSI])
GO

PRINT N'Creating index [UX_StaffProgramAssociation_Id] on [edfi].[StaffProgramAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StaffProgramAssociation_Id] ON [edfi].[StaffProgramAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StaffProgramAssociation_Program] on [edfi].[StaffProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffProgramAssociation_Program] ON [edfi].[StaffProgramAssociation] ([ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO

PRINT N'Creating index [FK_StaffProgramAssociation_Staff] on [edfi].[StaffProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffProgramAssociation_Staff] ON [edfi].[StaffProgramAssociation] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffProgramAssociation]'
GO
ALTER TABLE [edfi].[StaffProgramAssociation] ADD CONSTRAINT [StaffProgramAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StaffProgramAssociation] ADD CONSTRAINT [StaffProgramAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StaffProgramAssociation] ADD CONSTRAINT [StaffProgramAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
