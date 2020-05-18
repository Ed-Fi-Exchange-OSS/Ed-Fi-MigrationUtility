-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentFamily_PK] on [edfi].[AssessmentFamily]'
GO
ALTER TABLE [edfi].[AssessmentFamily] ADD CONSTRAINT [AssessmentFamily_PK] PRIMARY KEY CLUSTERED  ([AssessmentFamilyTitle])
GO
PRINT N'Creating index [UX_AssessmentFamily_Id] on [edfi].[AssessmentFamily]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AssessmentFamily_Id] ON [edfi].[AssessmentFamily] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_AssessmentFamily_AcademicSubjectDescriptor] on [edfi].[AssessmentFamily]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamily_AcademicSubjectDescriptor] ON [edfi].[AssessmentFamily] ([AcademicSubjectDescriptorId])
GO
PRINT N'Creating index [FK_AssessmentFamily_GradeLevelDescriptor] on [edfi].[AssessmentFamily]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamily_GradeLevelDescriptor] ON [edfi].[AssessmentFamily] ([AssessedGradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_AssessmentFamily_AssessmentCategoryDescriptor] on [edfi].[AssessmentFamily]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamily_AssessmentCategoryDescriptor] ON [edfi].[AssessmentFamily] ([AssessmentCategoryDescriptorId])
GO
PRINT N'Creating index [FK_AssessmentFamily_GradeLevelDescriptor1] on [edfi].[AssessmentFamily]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamily_GradeLevelDescriptor1] ON [edfi].[AssessmentFamily] ([LowestAssessedGradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_AssessmentFamily_AssessmentFamily] on [edfi].[AssessmentFamily]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamily_AssessmentFamily] ON [edfi].[AssessmentFamily] ([ParentAssessmentFamilyTitle])
GO

PRINT N'Adding constraints to [edfi].[AssessmentFamily]'
GO
ALTER TABLE [edfi].[AssessmentFamily] ADD CONSTRAINT [AssessmentFamily_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AssessmentFamily] ADD CONSTRAINT [AssessmentFamily_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AssessmentFamily] ADD CONSTRAINT [AssessmentFamily_DF_Id] DEFAULT (newid()) FOR [Id]
GO

