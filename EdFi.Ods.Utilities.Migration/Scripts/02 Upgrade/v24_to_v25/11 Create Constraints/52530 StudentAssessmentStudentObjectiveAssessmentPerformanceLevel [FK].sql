-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [FK_StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_StudentAssessmentStudentObjectiveAssessment] FOREIGN KEY ([AssessmentIdentifier], [IdentificationCode], [Namespace], [StudentAssessmentIdentifier], [StudentUSI]) REFERENCES [edfi].[StudentAssessmentStudentObjectiveAssessment] ([AssessmentIdentifier], [IdentificationCode], [Namespace], [StudentAssessmentIdentifier], [StudentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [FK_StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_AssessmentReportingMethodType] FOREIGN KEY ([AssessmentReportingMethodTypeId]) REFERENCES [edfi].[AssessmentReportingMethodType] ([AssessmentReportingMethodTypeId])
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [FK_StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_PerformanceLevelDescriptor] FOREIGN KEY ([PerformanceLevelDescriptorId]) REFERENCES [edfi].[PerformanceLevelDescriptor] ([PerformanceLevelDescriptorId])
GO
