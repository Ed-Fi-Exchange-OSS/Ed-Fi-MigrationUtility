-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentAssessmentItem]'
GO
ALTER TABLE [edfi].[StudentAssessmentItem] ADD CONSTRAINT [FK_StudentAssessmentItem_AssessmentItem] FOREIGN KEY ([AssessmentIdentifier], [IdentificationCode], [Namespace]) REFERENCES [edfi].[AssessmentItem] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO
ALTER TABLE [edfi].[StudentAssessmentItem] ADD CONSTRAINT [FK_StudentAssessmentItem_AssessmentItemResultDescriptor] FOREIGN KEY ([AssessmentItemResultDescriptorId]) REFERENCES [edfi].[AssessmentItemResultDescriptor] ([AssessmentItemResultDescriptorId])
GO
ALTER TABLE [edfi].[StudentAssessmentItem] ADD CONSTRAINT [FK_StudentAssessmentItem_ResponseIndicatorDescriptor] FOREIGN KEY ([ResponseIndicatorDescriptorId]) REFERENCES [edfi].[ResponseIndicatorDescriptor] ([ResponseIndicatorDescriptorId])
GO
ALTER TABLE [edfi].[StudentAssessmentItem] ADD CONSTRAINT [FK_StudentAssessmentItem_StudentAssessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI]) REFERENCES [edfi].[StudentAssessment] ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI]) ON DELETE CASCADE
GO
