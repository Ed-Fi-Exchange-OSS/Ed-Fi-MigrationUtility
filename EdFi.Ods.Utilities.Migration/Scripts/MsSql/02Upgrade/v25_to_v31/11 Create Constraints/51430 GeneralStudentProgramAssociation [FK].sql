-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GeneralStudentProgramAssociation]'
GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation] ADD CONSTRAINT [FK_GeneralStudentProgramAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation] ADD CONSTRAINT [FK_GeneralStudentProgramAssociation_Program] FOREIGN KEY ([ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId]) REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation] ADD CONSTRAINT [FK_GeneralStudentProgramAssociation_ReasonExitedDescriptor] FOREIGN KEY ([ReasonExitedDescriptorId]) REFERENCES [edfi].[ReasonExitedDescriptor] ([ReasonExitedDescriptorId])
GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation] ADD CONSTRAINT [FK_GeneralStudentProgramAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
