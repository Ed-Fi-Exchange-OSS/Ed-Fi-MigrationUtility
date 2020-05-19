-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [RecognitionType_PK] on [edfi].[RecognitionType]'
GO
ALTER TABLE [edfi].[RecognitionType] ADD CONSTRAINT [RecognitionType_PK] PRIMARY KEY CLUSTERED  ([RecognitionTypeId])
GO
PRINT N'Creating index [UX_RecognitionType_Id] on [edfi].[RecognitionType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_RecognitionType_Id] ON [edfi].[RecognitionType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[RecognitionType]'
GO
ALTER TABLE [edfi].[RecognitionType] ADD CONSTRAINT [RecognitionType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[RecognitionType] ADD CONSTRAINT [RecognitionType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[RecognitionType] ADD CONSTRAINT [RecognitionType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

