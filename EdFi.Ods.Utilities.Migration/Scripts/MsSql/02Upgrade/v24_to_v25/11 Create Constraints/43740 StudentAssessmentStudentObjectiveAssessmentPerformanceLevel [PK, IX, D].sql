-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_PK] on [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodTypeId], [IdentificationCode], [Namespace], [PerformanceLevelDescriptorId], [StudentAssessmentIdentifier], [StudentUSI])
GO
PRINT N'Creating index [FK_StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_StudentAssessmentStudentObjectiveAssessment] on [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_StudentAssessmentStudentObjectiveAssessment] ON [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] ([AssessmentIdentifier], [IdentificationCode], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO
PRINT N'Creating index [FK_StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_AssessmentReportingMethodType] on [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_AssessmentReportingMethodType] ON [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] ([AssessmentReportingMethodTypeId])
GO
PRINT N'Creating index [FK_StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_PerformanceLevelDescriptor] on [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_PerformanceLevelDescriptor] ON [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] ([PerformanceLevelDescriptorId])
GO
PRINT N'Adding constraints to [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
