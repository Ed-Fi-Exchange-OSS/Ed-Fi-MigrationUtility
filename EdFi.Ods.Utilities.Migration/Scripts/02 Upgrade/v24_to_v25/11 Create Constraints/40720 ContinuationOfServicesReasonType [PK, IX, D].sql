-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ContinuationOfServicesReasonType_PK] on [edfi].[ContinuationOfServicesReasonType]'
GO
ALTER TABLE [edfi].[ContinuationOfServicesReasonType] ADD CONSTRAINT [ContinuationOfServicesReasonType_PK] PRIMARY KEY CLUSTERED  ([ContinuationOfServicesReasonTypeId])
GO
PRINT N'Creating index [UX_ContinuationOfServicesReasonType_Id] on [edfi].[ContinuationOfServicesReasonType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ContinuationOfServicesReasonType_Id] ON [edfi].[ContinuationOfServicesReasonType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[ContinuationOfServicesReasonType]'
GO
ALTER TABLE [edfi].[ContinuationOfServicesReasonType] ADD CONSTRAINT [ContinuationOfServicesReasonType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ContinuationOfServicesReasonType] ADD CONSTRAINT [ContinuationOfServicesReasonType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ContinuationOfServicesReasonType] ADD CONSTRAINT [ContinuationOfServicesReasonType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

