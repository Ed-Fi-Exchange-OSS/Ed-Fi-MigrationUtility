-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseCompetencyLevel_PK] on [edfi].[CourseCompetencyLevel]'
GO
ALTER TABLE [edfi].[CourseCompetencyLevel] ADD CONSTRAINT [CourseCompetencyLevel_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [CourseCode], [CompetencyLevelDescriptorId])
GO
PRINT N'Creating index [FK_CourseCompetencyLevel_CompetencyLevelDescriptor] on [edfi].[CourseCompetencyLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseCompetencyLevel_CompetencyLevelDescriptor] ON [edfi].[CourseCompetencyLevel] ([CompetencyLevelDescriptorId])
GO
PRINT N'Creating index [FK_CourseCompetencyLevel_Course] on [edfi].[CourseCompetencyLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseCompetencyLevel_Course] ON [edfi].[CourseCompetencyLevel] ([EducationOrganizationId], [CourseCode])
GO

PRINT N'Adding constraints to [edfi].[CourseCompetencyLevel]'
GO
ALTER TABLE [edfi].[CourseCompetencyLevel] ADD CONSTRAINT [CourseCompetencyLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

