-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SectionProgram_PK] on [edfi].[SectionProgram]'
GO
ALTER TABLE [edfi].[SectionProgram] ADD CONSTRAINT [SectionProgram_PK] PRIMARY KEY CLUSTERED  ([ClassroomIdentificationCode], [SchoolId], [ClassPeriodName], [LocalCourseCode], [SchoolYear], [TermDescriptorId], [UniqueSectionCode], [SequenceOfCourse], [ProgramTypeId], [ProgramName], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_SectionProgram_Program] on [edfi].[SectionProgram]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionProgram_Program] ON [edfi].[SectionProgram] ([EducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
PRINT N'Creating index [FK_SectionProgram_Section] on [edfi].[SectionProgram]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionProgram_Section] ON [edfi].[SectionProgram] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse])
GO

PRINT N'Adding constraints to [edfi].[SectionProgram]'
GO
ALTER TABLE [edfi].[SectionProgram] ADD CONSTRAINT [SectionProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

