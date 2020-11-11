-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LearningObjectiveAcademicSubject]'
GO
ALTER TABLE [edfi].[LearningObjectiveAcademicSubject] ADD CONSTRAINT [FK_LearningObjectiveAcademicSubject_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO
ALTER TABLE [edfi].[LearningObjectiveAcademicSubject] ADD CONSTRAINT [FK_LearningObjectiveAcademicSubject_LearningObjective] FOREIGN KEY ([LearningObjectiveId], [Namespace]) REFERENCES [edfi].[LearningObjective] ([LearningObjectiveId], [Namespace]) ON DELETE CASCADE
GO
