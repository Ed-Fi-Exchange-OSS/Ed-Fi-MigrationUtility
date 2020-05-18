-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CohortProgram]'
GO
ALTER TABLE [edfi].[CohortProgram] ADD CONSTRAINT [FK_CohortProgram_Cohort] FOREIGN KEY ([CohortIdentifier], [EducationOrganizationId]) REFERENCES [edfi].[Cohort] ([CohortIdentifier], [EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[CohortProgram] ADD CONSTRAINT [FK_CohortProgram_Program] FOREIGN KEY ([ProgramEducationOrganizationId], [ProgramTypeId], [ProgramName]) REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
