-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentProgramAssociation_PK] on [edfi].[StudentProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentProgramAssociation] ADD CONSTRAINT [StudentProgramAssociation_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate])
GO
PRINT N'Creating index [UX_StudentProgramAssociation_Id] on [edfi].[StudentProgramAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentProgramAssociation_Id] ON [edfi].[StudentProgramAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StudentProgramAssociation_EducationOrganization] on [edfi].[StudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramAssociation_EducationOrganization] ON [edfi].[StudentProgramAssociation] ([EducationOrganizationId])
GO
PRINT N'Creating index [FK_StudentProgramAssociation_Program] on [edfi].[StudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramAssociation_Program] ON [edfi].[StudentProgramAssociation] ([ProgramEducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
PRINT N'Creating index [FK_StudentProgramAssociation_ReasonExitedDescriptor] on [edfi].[StudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramAssociation_ReasonExitedDescriptor] ON [edfi].[StudentProgramAssociation] ([ReasonExitedDescriptorId])
GO
PRINT N'Creating index [FK_StudentProgramAssociation_Student] on [edfi].[StudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramAssociation_Student] ON [edfi].[StudentProgramAssociation] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentProgramAssociation] ADD CONSTRAINT [StudentProgramAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentProgramAssociation] ADD CONSTRAINT [StudentProgramAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentProgramAssociation] ADD CONSTRAINT [StudentProgramAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO

