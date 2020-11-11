-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffProgramAssociation]'
GO
ALTER TABLE [edfi].[StaffProgramAssociation] ADD CONSTRAINT [FK_StaffProgramAssociation_Program] FOREIGN KEY ([ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId]) REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO
ALTER TABLE [edfi].[StaffProgramAssociation] ADD CONSTRAINT [FK_StaffProgramAssociation_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI])
GO
