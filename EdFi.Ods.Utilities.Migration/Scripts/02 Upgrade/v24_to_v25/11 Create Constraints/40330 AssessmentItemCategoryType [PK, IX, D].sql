-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentItemCategoryType_PK] on [edfi].[AssessmentItemCategoryType]'
GO
ALTER TABLE [edfi].[AssessmentItemCategoryType] ADD CONSTRAINT [AssessmentItemCategoryType_PK] PRIMARY KEY CLUSTERED  ([AssessmentItemCategoryTypeId])
GO
PRINT N'Creating index [UX_AssessmentItemCategoryType_Id] on [edfi].[AssessmentItemCategoryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AssessmentItemCategoryType_Id] ON [edfi].[AssessmentItemCategoryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AssessmentItemCategoryType]'
GO
ALTER TABLE [edfi].[AssessmentItemCategoryType] ADD CONSTRAINT [AssessmentItemCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AssessmentItemCategoryType] ADD CONSTRAINT [AssessmentItemCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AssessmentItemCategoryType] ADD CONSTRAINT [AssessmentItemCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

