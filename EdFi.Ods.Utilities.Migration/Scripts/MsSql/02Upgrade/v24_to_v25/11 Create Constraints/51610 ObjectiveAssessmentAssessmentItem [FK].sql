-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ObjectiveAssessmentAssessmentItem]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentAssessmentItem] ADD CONSTRAINT [FK_ObjectiveAssessmentAssessmentItem_AssessmentItem] FOREIGN KEY ([AssessmentIdentifier], [AssessmentItemIdentificationCode], [Namespace]) REFERENCES [edfi].[AssessmentItem] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO
ALTER TABLE [edfi].[ObjectiveAssessmentAssessmentItem] ADD CONSTRAINT [FK_ObjectiveAssessmentAssessmentItem_ObjectiveAssessment] FOREIGN KEY ([AssessmentIdentifier], [IdentificationCode], [Namespace]) REFERENCES [edfi].[ObjectiveAssessment] ([AssessmentIdentifier], [IdentificationCode], [Namespace]) ON DELETE CASCADE
GO
