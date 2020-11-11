-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[AssessmentItem]'
GO
ALTER TABLE [edfi].[AssessmentItem] ADD CONSTRAINT [FK_AssessmentItem_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace])
GO
ALTER TABLE [edfi].[AssessmentItem] ADD CONSTRAINT [FK_AssessmentItem_AssessmentItemCategoryType] FOREIGN KEY ([AssessmentItemCategoryTypeId]) REFERENCES [edfi].[AssessmentItemCategoryType] ([AssessmentItemCategoryTypeId])
GO
