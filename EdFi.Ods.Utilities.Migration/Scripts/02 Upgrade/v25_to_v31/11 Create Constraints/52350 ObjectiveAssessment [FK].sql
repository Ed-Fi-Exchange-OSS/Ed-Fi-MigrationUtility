-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ObjectiveAssessment]'
GO
ALTER TABLE [edfi].[ObjectiveAssessment] ADD CONSTRAINT [FK_ObjectiveAssessment_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace])
GO
ALTER TABLE [edfi].[ObjectiveAssessment] ADD CONSTRAINT [FK_ObjectiveAssessment_ObjectiveAssessment] FOREIGN KEY ([AssessmentIdentifier], [ParentIdentificationCode], [Namespace]) REFERENCES [edfi].[ObjectiveAssessment] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO
