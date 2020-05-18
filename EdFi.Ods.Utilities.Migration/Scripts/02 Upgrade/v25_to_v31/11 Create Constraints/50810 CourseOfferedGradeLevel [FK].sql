-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CourseOfferedGradeLevel]'
GO
ALTER TABLE [edfi].[CourseOfferedGradeLevel] ADD CONSTRAINT [FK_CourseOfferedGradeLevel_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId]) REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[CourseOfferedGradeLevel] ADD CONSTRAINT [FK_CourseOfferedGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
