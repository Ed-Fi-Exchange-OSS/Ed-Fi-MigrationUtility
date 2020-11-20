-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Program]'
GO
ALTER TABLE [edfi].[Program] ADD CONSTRAINT [FK_Program_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[Program] ADD CONSTRAINT [FK_Program_ProgramSponsorType] FOREIGN KEY ([ProgramSponsorTypeId]) REFERENCES [edfi].[ProgramSponsorType] ([ProgramSponsorTypeId])
GO
ALTER TABLE [edfi].[Program] ADD CONSTRAINT [FK_Program_ProgramType] FOREIGN KEY ([ProgramTypeId]) REFERENCES [edfi].[ProgramType] ([ProgramTypeId])
GO
