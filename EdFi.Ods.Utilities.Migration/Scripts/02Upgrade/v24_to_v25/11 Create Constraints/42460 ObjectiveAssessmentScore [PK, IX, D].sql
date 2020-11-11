-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ObjectiveAssessmentScore_PK] on [edfi].[ObjectiveAssessmentScore]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentScore] ADD CONSTRAINT [ObjectiveAssessmentScore_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodTypeId], [IdentificationCode], [Namespace])
GO
PRINT N'Creating index [FK_ObjectiveAssessmentScore_ObjectiveAssessment] on [edfi].[ObjectiveAssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentScore_ObjectiveAssessment] ON [edfi].[ObjectiveAssessmentScore] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO
PRINT N'Creating index [FK_ObjectiveAssessmentScore_AssessmentReportingMethodType] on [edfi].[ObjectiveAssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentScore_AssessmentReportingMethodType] ON [edfi].[ObjectiveAssessmentScore] ([AssessmentReportingMethodTypeId])
GO
PRINT N'Creating index [FK_ObjectiveAssessmentScore_ResultDatatypeType] on [edfi].[ObjectiveAssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentScore_ResultDatatypeType] ON [edfi].[ObjectiveAssessmentScore] ([ResultDatatypeTypeId])
GO

PRINT N'Adding constraints to [edfi].[ObjectiveAssessmentScore]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentScore] ADD CONSTRAINT [ObjectiveAssessmentScore_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

