-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CohortProgram_PK] on [edfi].[CohortProgram]'
GO
ALTER TABLE [edfi].[CohortProgram] ADD CONSTRAINT [CohortProgram_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [CohortIdentifier], [ProgramEducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
PRINT N'Creating index [FK_CohortProgram_Cohort] on [edfi].[CohortProgram]'
GO
CREATE NONCLUSTERED INDEX [FK_CohortProgram_Cohort] ON [edfi].[CohortProgram] ([CohortIdentifier], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_CohortProgram_Program] on [edfi].[CohortProgram]'
GO
CREATE NONCLUSTERED INDEX [FK_CohortProgram_Program] ON [edfi].[CohortProgram] ([ProgramEducationOrganizationId], [ProgramTypeId], [ProgramName])
GO

PRINT N'Adding constraints to [edfi].[CohortProgram]'
GO
ALTER TABLE [edfi].[CohortProgram] ADD CONSTRAINT [CohortProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

