-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentProgramAssociation] ADD CONSTRAINT [FK_StudentProgramAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[StudentProgramAssociation] ADD CONSTRAINT [FK_StudentProgramAssociation_Program] FOREIGN KEY ([ProgramEducationOrganizationId], [ProgramTypeId], [ProgramName]) REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
ALTER TABLE [edfi].[StudentProgramAssociation] ADD CONSTRAINT [FK_StudentProgramAssociation_ReasonExitedDescriptor] FOREIGN KEY ([ReasonExitedDescriptorId]) REFERENCES [edfi].[ReasonExitedDescriptor] ([ReasonExitedDescriptorId])
GO
ALTER TABLE [edfi].[StudentProgramAssociation] ADD CONSTRAINT [FK_StudentProgramAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
