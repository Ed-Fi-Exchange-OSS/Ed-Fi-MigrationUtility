-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseOfferedGradeLevel_PK] on [edfi].[CourseOfferedGradeLevel]'
GO
ALTER TABLE [edfi].[CourseOfferedGradeLevel] ADD CONSTRAINT [CourseOfferedGradeLevel_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [CourseCode], [GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_CourseOfferedGradeLevel_Course] on [edfi].[CourseOfferedGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseOfferedGradeLevel_Course] ON [edfi].[CourseOfferedGradeLevel] ([EducationOrganizationId], [CourseCode])
GO
PRINT N'Creating index [FK_CourseOfferedGradeLevel_GradeLevelDescriptor] on [edfi].[CourseOfferedGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseOfferedGradeLevel_GradeLevelDescriptor] ON [edfi].[CourseOfferedGradeLevel] ([GradeLevelDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[CourseOfferedGradeLevel]'
GO
ALTER TABLE [edfi].[CourseOfferedGradeLevel] ADD CONSTRAINT [CourseOfferedGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

