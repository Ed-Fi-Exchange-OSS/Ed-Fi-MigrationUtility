-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[AssessmentScore]'
GO
ALTER TABLE [edfi].[AssessmentScore] ADD CONSTRAINT [FK_AssessmentScore_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[AssessmentScore] ADD CONSTRAINT [FK_AssessmentScore_AssessmentReportingMethodType] FOREIGN KEY ([AssessmentReportingMethodTypeId]) REFERENCES [edfi].[AssessmentReportingMethodType] ([AssessmentReportingMethodTypeId])
GO
ALTER TABLE [edfi].[AssessmentScore] ADD CONSTRAINT [FK_AssessmentScore_ResultDatatypeType] FOREIGN KEY ([ResultDatatypeTypeId]) REFERENCES [edfi].[ResultDatatypeType] ([ResultDatatypeTypeId])
GO
