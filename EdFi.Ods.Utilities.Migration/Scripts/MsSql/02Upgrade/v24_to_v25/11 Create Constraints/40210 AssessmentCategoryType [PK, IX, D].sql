-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentCategoryType_PK] on [edfi].[AssessmentCategoryType]'
GO
ALTER TABLE [edfi].[AssessmentCategoryType] ADD CONSTRAINT [AssessmentCategoryType_PK] PRIMARY KEY CLUSTERED  ([AssessmentCategoryTypeId])
GO
PRINT N'Creating index [UX_AssessmentCategoryType_Id] on [edfi].[AssessmentCategoryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AssessmentCategoryType_Id] ON [edfi].[AssessmentCategoryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AssessmentCategoryType]'
GO
ALTER TABLE [edfi].[AssessmentCategoryType] ADD CONSTRAINT [AssessmentCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AssessmentCategoryType] ADD CONSTRAINT [AssessmentCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AssessmentCategoryType] ADD CONSTRAINT [AssessmentCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

