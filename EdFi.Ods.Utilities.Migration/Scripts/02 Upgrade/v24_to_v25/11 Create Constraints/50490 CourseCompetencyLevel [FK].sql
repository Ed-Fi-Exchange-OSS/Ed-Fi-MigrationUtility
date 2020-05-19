-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CourseCompetencyLevel]'
GO
ALTER TABLE [edfi].[CourseCompetencyLevel] ADD CONSTRAINT [FK_CourseCompetencyLevel_CompetencyLevelDescriptor] FOREIGN KEY ([CompetencyLevelDescriptorId]) REFERENCES [edfi].[CompetencyLevelDescriptor] ([CompetencyLevelDescriptorId])
GO
ALTER TABLE [edfi].[CourseCompetencyLevel] ADD CONSTRAINT [FK_CourseCompetencyLevel_Course] FOREIGN KEY ([EducationOrganizationId], [CourseCode]) REFERENCES [edfi].[Course] ([EducationOrganizationId], [CourseCode]) ON DELETE CASCADE
GO
