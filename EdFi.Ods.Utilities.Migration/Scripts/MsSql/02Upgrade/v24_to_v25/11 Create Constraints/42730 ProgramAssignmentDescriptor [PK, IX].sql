-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProgramAssignmentDescriptor_PK] on [edfi].[ProgramAssignmentDescriptor]'
GO
ALTER TABLE [edfi].[ProgramAssignmentDescriptor] ADD CONSTRAINT [ProgramAssignmentDescriptor_PK] PRIMARY KEY CLUSTERED  ([ProgramAssignmentDescriptorId])
GO
PRINT N'Creating index [FK_ProgramAssignmentDescriptor_Descriptor] on [edfi].[ProgramAssignmentDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramAssignmentDescriptor_Descriptor] ON [edfi].[ProgramAssignmentDescriptor] ([ProgramAssignmentDescriptorId])
GO
PRINT N'Creating index [FK_ProgramAssignmentDescriptor_ProgramAssignmentType] on [edfi].[ProgramAssignmentDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramAssignmentDescriptor_ProgramAssignmentType] ON [edfi].[ProgramAssignmentDescriptor] ([ProgramAssignmentTypeId])
GO

