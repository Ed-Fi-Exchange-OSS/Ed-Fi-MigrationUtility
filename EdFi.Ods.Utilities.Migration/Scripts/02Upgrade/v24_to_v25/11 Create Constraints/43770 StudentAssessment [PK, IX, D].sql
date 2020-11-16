-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAssessment_PK] on [edfi].[StudentAssessment]'
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [StudentAssessment_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO
PRINT N'Creating index [UX_StudentAssessment_Id] on [edfi].[StudentAssessment]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentAssessment_Id] ON [edfi].[StudentAssessment] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StudentAssessment_AdministrationEnvironmentType] on [edfi].[StudentAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessment_AdministrationEnvironmentType] ON [edfi].[StudentAssessment] ([AdministrationEnvironmentTypeId])
GO
PRINT N'Creating index [FK_StudentAssessment_LanguageDescriptor] on [edfi].[StudentAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessment_LanguageDescriptor] ON [edfi].[StudentAssessment] ([AdministrationLanguageDescriptorId])
GO
PRINT N'Creating index [FK_StudentAssessment_Assessment] on [edfi].[StudentAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessment_Assessment] ON [edfi].[StudentAssessment] ([AssessmentIdentifier], [Namespace])
GO
PRINT N'Creating index [FK_StudentAssessment_EventCircumstanceType] on [edfi].[StudentAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessment_EventCircumstanceType] ON [edfi].[StudentAssessment] ([EventCircumstanceTypeId])
GO
PRINT N'Creating index [FK_StudentAssessment_ReasonNotTestedType] on [edfi].[StudentAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessment_ReasonNotTestedType] ON [edfi].[StudentAssessment] ([ReasonNotTestedTypeId])
GO
PRINT N'Creating index [FK_StudentAssessment_RetestIndicatorType] on [edfi].[StudentAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessment_RetestIndicatorType] ON [edfi].[StudentAssessment] ([RetestIndicatorTypeId])
GO
PRINT N'Creating index [FK_StudentAssessment_Student] on [edfi].[StudentAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessment_Student] ON [edfi].[StudentAssessment] ([StudentUSI])
GO
PRINT N'Creating index [FK_StudentAssessment_GradeLevelDescriptor] on [edfi].[StudentAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessment_GradeLevelDescriptor] ON [edfi].[StudentAssessment] ([WhenAssessedGradeLevelDescriptorId])
GO
PRINT N'Adding constraints to [edfi].[StudentAssessment]'
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [StudentAssessment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [StudentAssessment_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [StudentAssessment_DF_Id] DEFAULT (newid()) FOR [Id]
GO
