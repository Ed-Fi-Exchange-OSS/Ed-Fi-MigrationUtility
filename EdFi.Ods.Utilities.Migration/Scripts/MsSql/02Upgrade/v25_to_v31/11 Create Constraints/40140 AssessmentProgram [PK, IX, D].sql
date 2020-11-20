-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentProgram_PK] on [edfi].[AssessmentProgram]'
GO
ALTER TABLE [edfi].[AssessmentProgram] ADD CONSTRAINT [AssessmentProgram_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [EducationOrganizationId], [Namespace], [ProgramName], [ProgramTypeDescriptorId])
GO

PRINT N'Creating index [FK_AssessmentProgram_Assessment] on [edfi].[AssessmentProgram]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentProgram_Assessment] ON [edfi].[AssessmentProgram] ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentProgram_Program] on [edfi].[AssessmentProgram]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentProgram_Program] ON [edfi].[AssessmentProgram] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentProgram]'
GO
ALTER TABLE [edfi].[AssessmentProgram] ADD CONSTRAINT [AssessmentProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
