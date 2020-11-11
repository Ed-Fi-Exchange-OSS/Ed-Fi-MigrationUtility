-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[RestraintEventProgram]'
GO
ALTER TABLE [edfi].[RestraintEventProgram] ADD CONSTRAINT [FK_RestraintEventProgram_Program] FOREIGN KEY ([EducationOrganizationId], [ProgramTypeId], [ProgramName]) REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
ALTER TABLE [edfi].[RestraintEventProgram] ADD CONSTRAINT [FK_RestraintEventProgram_RestraintEvent] FOREIGN KEY ([StudentUSI], [SchoolId], [RestraintEventIdentifier], [EventDate]) REFERENCES [edfi].[RestraintEvent] ([StudentUSI], [SchoolId], [RestraintEventIdentifier], [EventDate]) ON DELETE CASCADE
GO
