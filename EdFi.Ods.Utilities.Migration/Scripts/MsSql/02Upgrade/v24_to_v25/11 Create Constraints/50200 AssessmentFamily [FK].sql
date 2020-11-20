-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[AssessmentFamily]'
GO
ALTER TABLE [edfi].[AssessmentFamily] ADD CONSTRAINT [FK_AssessmentFamily_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO
ALTER TABLE [edfi].[AssessmentFamily] ADD CONSTRAINT [FK_AssessmentFamily_AssessmentCategoryDescriptor] FOREIGN KEY ([AssessmentCategoryDescriptorId]) REFERENCES [edfi].[AssessmentCategoryDescriptor] ([AssessmentCategoryDescriptorId])
GO
ALTER TABLE [edfi].[AssessmentFamily] ADD CONSTRAINT [FK_AssessmentFamily_AssessmentFamily] FOREIGN KEY ([ParentAssessmentFamilyTitle]) REFERENCES [edfi].[AssessmentFamily] ([AssessmentFamilyTitle])
GO
ALTER TABLE [edfi].[AssessmentFamily] ADD CONSTRAINT [FK_AssessmentFamily_GradeLevelDescriptor] FOREIGN KEY ([AssessedGradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
ALTER TABLE [edfi].[AssessmentFamily] ADD CONSTRAINT [FK_AssessmentFamily_GradeLevelDescriptor1] FOREIGN KEY ([LowestAssessedGradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
