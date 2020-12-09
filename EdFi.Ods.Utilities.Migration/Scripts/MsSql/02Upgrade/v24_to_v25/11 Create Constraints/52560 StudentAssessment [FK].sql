-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentAssessment]'
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_AdministrationEnvironmentType] FOREIGN KEY ([AdministrationEnvironmentTypeId]) REFERENCES [edfi].[AdministrationEnvironmentType] ([AdministrationEnvironmentTypeId])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_EventCircumstanceType] FOREIGN KEY ([EventCircumstanceTypeId]) REFERENCES [edfi].[EventCircumstanceType] ([EventCircumstanceTypeId])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_GradeLevelDescriptor] FOREIGN KEY ([WhenAssessedGradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_LanguageDescriptor] FOREIGN KEY ([AdministrationLanguageDescriptorId]) REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_ReasonNotTestedType] FOREIGN KEY ([ReasonNotTestedTypeId]) REFERENCES [edfi].[ReasonNotTestedType] ([ReasonNotTestedTypeId])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_RetestIndicatorType] FOREIGN KEY ([RetestIndicatorTypeId]) REFERENCES [edfi].[RetestIndicatorType] ([RetestIndicatorTypeId])
GO

