-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentItemResultType_PK] on [edfi].[AssessmentItemResultType]'
GO
ALTER TABLE [edfi].[AssessmentItemResultType] ADD CONSTRAINT [AssessmentItemResultType_PK] PRIMARY KEY CLUSTERED  ([AssessmentItemResultTypeId])
GO
PRINT N'Creating index [UX_AssessmentItemResultType_Id] on [edfi].[AssessmentItemResultType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AssessmentItemResultType_Id] ON [edfi].[AssessmentItemResultType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AssessmentItemResultType]'
GO
ALTER TABLE [edfi].[AssessmentItemResultType] ADD CONSTRAINT [AssessmentItemResultType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AssessmentItemResultType] ADD CONSTRAINT [AssessmentItemResultType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AssessmentItemResultType] ADD CONSTRAINT [AssessmentItemResultType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

