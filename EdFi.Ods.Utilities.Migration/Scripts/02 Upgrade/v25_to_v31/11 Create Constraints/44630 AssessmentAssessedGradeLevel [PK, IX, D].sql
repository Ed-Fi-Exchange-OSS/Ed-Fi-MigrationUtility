-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentAssessedGradeLevel_PK] on [edfi].[AssessmentAssessedGradeLevel]'
GO
ALTER TABLE [edfi].[AssessmentAssessedGradeLevel] ADD CONSTRAINT [AssessmentAssessedGradeLevel_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [GradeLevelDescriptorId], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentAssessedGradeLevel_Assessment] on [edfi].[AssessmentAssessedGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentAssessedGradeLevel_Assessment] ON [edfi].[AssessmentAssessedGradeLevel] ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentAssessedGradeLevel_GradeLevelDescriptor] on [edfi].[AssessmentAssessedGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentAssessedGradeLevel_GradeLevelDescriptor] ON [edfi].[AssessmentAssessedGradeLevel] ([GradeLevelDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentAssessedGradeLevel]'
GO
ALTER TABLE [edfi].[AssessmentAssessedGradeLevel] ADD CONSTRAINT [AssessmentAssessedGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
