-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentHomelessProgramAssociation_PK] on [edfi].[StudentHomelessProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentHomelessProgramAssociation] ADD CONSTRAINT [StudentHomelessProgramAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentHomelessProgramAssociation_HomelessPrimaryNighttimeResidenceDescriptor] on [edfi].[StudentHomelessProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentHomelessProgramAssociation_HomelessPrimaryNighttimeResidenceDescriptor] ON [edfi].[StudentHomelessProgramAssociation] ([HomelessPrimaryNighttimeResidenceDescriptorId])
GO
