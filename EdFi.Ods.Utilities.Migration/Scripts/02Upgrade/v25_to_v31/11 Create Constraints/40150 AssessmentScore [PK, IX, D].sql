-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentScore_PK] on [edfi].[AssessmentScore]'
GO
ALTER TABLE [edfi].[AssessmentScore] ADD CONSTRAINT [AssessmentScore_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodDescriptorId], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentScore_Assessment] on [edfi].[AssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentScore_Assessment] ON [edfi].[AssessmentScore] ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentScore_AssessmentReportingMethodDescriptor] on [edfi].[AssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentScore_AssessmentReportingMethodDescriptor] ON [edfi].[AssessmentScore] ([AssessmentReportingMethodDescriptorId])
GO

PRINT N'Creating index [FK_AssessmentScore_ResultDatatypeTypeDescriptor] on [edfi].[AssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentScore_ResultDatatypeTypeDescriptor] ON [edfi].[AssessmentScore] ([ResultDatatypeTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentScore]'
GO
ALTER TABLE [edfi].[AssessmentScore] ADD CONSTRAINT [AssessmentScore_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
