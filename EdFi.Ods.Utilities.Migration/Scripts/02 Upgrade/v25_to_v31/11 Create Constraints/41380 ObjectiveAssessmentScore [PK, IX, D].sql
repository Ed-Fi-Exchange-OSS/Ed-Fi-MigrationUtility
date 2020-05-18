-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ObjectiveAssessmentScore_PK] on [edfi].[ObjectiveAssessmentScore]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentScore] ADD CONSTRAINT [ObjectiveAssessmentScore_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodDescriptorId], [IdentificationCode], [Namespace])
GO

PRINT N'Creating index [FK_ObjectiveAssessmentScore_ObjectiveAssessment] on [edfi].[ObjectiveAssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentScore_ObjectiveAssessment] ON [edfi].[ObjectiveAssessmentScore] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO

PRINT N'Creating index [FK_ObjectiveAssessmentScore_AssessmentReportingMethodDescriptor] on [edfi].[ObjectiveAssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentScore_AssessmentReportingMethodDescriptor] ON [edfi].[ObjectiveAssessmentScore] ([AssessmentReportingMethodDescriptorId])
GO

PRINT N'Creating index [FK_ObjectiveAssessmentScore_ResultDatatypeTypeDescriptor] on [edfi].[ObjectiveAssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentScore_ResultDatatypeTypeDescriptor] ON [edfi].[ObjectiveAssessmentScore] ([ResultDatatypeTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[ObjectiveAssessmentScore]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentScore] ADD CONSTRAINT [ObjectiveAssessmentScore_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
