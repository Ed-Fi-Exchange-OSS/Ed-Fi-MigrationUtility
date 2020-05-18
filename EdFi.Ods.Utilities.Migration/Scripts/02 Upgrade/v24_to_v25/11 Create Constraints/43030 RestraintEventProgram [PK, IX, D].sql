-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [RestraintEventProgram_PK] on [edfi].[RestraintEventProgram]'
GO
ALTER TABLE [edfi].[RestraintEventProgram] ADD CONSTRAINT [RestraintEventProgram_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [SchoolId], [RestraintEventIdentifier], [EventDate], [ProgramTypeId], [ProgramName], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_RestraintEventProgram_Program] on [edfi].[RestraintEventProgram]'
GO
CREATE NONCLUSTERED INDEX [FK_RestraintEventProgram_Program] ON [edfi].[RestraintEventProgram] ([EducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
PRINT N'Creating index [FK_RestraintEventProgram_RestraintEvent] on [edfi].[RestraintEventProgram]'
GO
CREATE NONCLUSTERED INDEX [FK_RestraintEventProgram_RestraintEvent] ON [edfi].[RestraintEventProgram] ([StudentUSI], [SchoolId], [RestraintEventIdentifier], [EventDate])
GO

PRINT N'Adding constraints to [edfi].[RestraintEventProgram]'
GO
ALTER TABLE [edfi].[RestraintEventProgram] ADD CONSTRAINT [RestraintEventProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

