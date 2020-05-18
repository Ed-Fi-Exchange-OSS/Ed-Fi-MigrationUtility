-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAssessmentItem_PK] on [edfi].[StudentAssessmentItem]'
GO
ALTER TABLE [edfi].[StudentAssessmentItem] ADD CONSTRAINT [StudentAssessmentItem_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [IdentificationCode], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO
PRINT N'Creating index [FK_StudentAssessmentItem_AssessmentItem] on [edfi].[StudentAssessmentItem]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentItem_AssessmentItem] ON [edfi].[StudentAssessmentItem] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO
PRINT N'Creating index [FK_StudentAssessmentItem_StudentAssessment] on [edfi].[StudentAssessmentItem]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentItem_StudentAssessment] ON [edfi].[StudentAssessmentItem] ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO
PRINT N'Creating index [FK_StudentAssessmentItem_AssessmentItemResultType] on [edfi].[StudentAssessmentItem]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentItem_AssessmentItemResultType] ON [edfi].[StudentAssessmentItem] ([AssessmentItemResultTypeId])
GO
PRINT N'Creating index [FK_StudentAssessmentItem_ResponseIndicatorType] on [edfi].[StudentAssessmentItem]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentItem_ResponseIndicatorType] ON [edfi].[StudentAssessmentItem] ([ResponseIndicatorTypeId])
GO
PRINT N'Adding constraints to [edfi].[StudentAssessmentItem]'
GO
ALTER TABLE [edfi].[StudentAssessmentItem] ADD CONSTRAINT [StudentAssessmentItem_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
