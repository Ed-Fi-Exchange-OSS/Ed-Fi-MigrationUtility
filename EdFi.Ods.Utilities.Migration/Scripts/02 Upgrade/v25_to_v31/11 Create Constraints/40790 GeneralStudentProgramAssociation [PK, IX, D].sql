-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GeneralStudentProgramAssociation_PK] on [edfi].[GeneralStudentProgramAssociation]'
GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation] ADD CONSTRAINT [GeneralStudentProgramAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [UX_GeneralStudentProgramAssociation_Id] on [edfi].[GeneralStudentProgramAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_GeneralStudentProgramAssociation_Id] ON [edfi].[GeneralStudentProgramAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_GeneralStudentProgramAssociation_EducationOrganization] on [edfi].[GeneralStudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_GeneralStudentProgramAssociation_EducationOrganization] ON [edfi].[GeneralStudentProgramAssociation] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_GeneralStudentProgramAssociation_Program] on [edfi].[GeneralStudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_GeneralStudentProgramAssociation_Program] ON [edfi].[GeneralStudentProgramAssociation] ([ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO

PRINT N'Creating index [FK_GeneralStudentProgramAssociation_ReasonExitedDescriptor] on [edfi].[GeneralStudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_GeneralStudentProgramAssociation_ReasonExitedDescriptor] ON [edfi].[GeneralStudentProgramAssociation] ([ReasonExitedDescriptorId])
GO

PRINT N'Creating index [FK_GeneralStudentProgramAssociation_Student] on [edfi].[GeneralStudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_GeneralStudentProgramAssociation_Student] ON [edfi].[GeneralStudentProgramAssociation] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[GeneralStudentProgramAssociation]'
GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation] ADD CONSTRAINT [GeneralStudentProgramAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation] ADD CONSTRAINT [GeneralStudentProgramAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation] ADD CONSTRAINT [GeneralStudentProgramAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
