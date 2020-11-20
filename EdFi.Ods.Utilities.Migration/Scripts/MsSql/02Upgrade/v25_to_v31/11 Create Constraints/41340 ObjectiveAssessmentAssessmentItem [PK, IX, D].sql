-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ObjectiveAssessmentAssessmentItem_PK] on [edfi].[ObjectiveAssessmentAssessmentItem]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentAssessmentItem] ADD CONSTRAINT [ObjectiveAssessmentAssessmentItem_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentItemIdentificationCode], [IdentificationCode], [Namespace])
GO

PRINT N'Creating index [FK_ObjectiveAssessmentAssessmentItem_AssessmentItem] on [edfi].[ObjectiveAssessmentAssessmentItem]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentAssessmentItem_AssessmentItem] ON [edfi].[ObjectiveAssessmentAssessmentItem] ([AssessmentIdentifier], [AssessmentItemIdentificationCode], [Namespace])
GO

PRINT N'Creating index [FK_ObjectiveAssessmentAssessmentItem_ObjectiveAssessment] on [edfi].[ObjectiveAssessmentAssessmentItem]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentAssessmentItem_ObjectiveAssessment] ON [edfi].[ObjectiveAssessmentAssessmentItem] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO

PRINT N'Adding constraints to [edfi].[ObjectiveAssessmentAssessmentItem]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentAssessmentItem] ADD CONSTRAINT [ObjectiveAssessmentAssessmentItem_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
