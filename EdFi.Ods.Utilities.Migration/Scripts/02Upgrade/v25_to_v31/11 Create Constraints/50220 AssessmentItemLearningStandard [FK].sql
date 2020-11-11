-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[AssessmentItemLearningStandard]'
GO
ALTER TABLE [edfi].[AssessmentItemLearningStandard] ADD CONSTRAINT [FK_AssessmentItemLearningStandard_AssessmentItem] FOREIGN KEY ([AssessmentIdentifier], [IdentificationCode], [Namespace]) REFERENCES [edfi].[AssessmentItem] ([AssessmentIdentifier], [IdentificationCode], [Namespace]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[AssessmentItemLearningStandard] ADD CONSTRAINT [FK_AssessmentItemLearningStandard_LearningStandard] FOREIGN KEY ([LearningStandardId]) REFERENCES [edfi].[LearningStandard] ([LearningStandardId])
GO
