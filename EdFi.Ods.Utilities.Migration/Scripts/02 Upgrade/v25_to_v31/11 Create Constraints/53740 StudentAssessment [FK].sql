-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentAssessment]'
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_AdministrationEnvironmentDescriptor] FOREIGN KEY ([AdministrationEnvironmentDescriptorId]) REFERENCES [edfi].[AdministrationEnvironmentDescriptor] ([AdministrationEnvironmentDescriptorId])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_EventCircumstanceDescriptor] FOREIGN KEY ([EventCircumstanceDescriptorId]) REFERENCES [edfi].[EventCircumstanceDescriptor] ([EventCircumstanceDescriptorId])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_GradeLevelDescriptor] FOREIGN KEY ([WhenAssessedGradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_LanguageDescriptor] FOREIGN KEY ([AdministrationLanguageDescriptorId]) REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_ReasonNotTestedDescriptor] FOREIGN KEY ([ReasonNotTestedDescriptorId]) REFERENCES [edfi].[ReasonNotTestedDescriptor] ([ReasonNotTestedDescriptorId])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_RetestIndicatorDescriptor] FOREIGN KEY ([RetestIndicatorDescriptorId]) REFERENCES [edfi].[RetestIndicatorDescriptor] ([RetestIndicatorDescriptorId])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_SchoolYearType] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
ALTER TABLE [edfi].[StudentAssessment] ADD CONSTRAINT [FK_StudentAssessment_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
