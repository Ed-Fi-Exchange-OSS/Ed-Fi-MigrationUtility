-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [TitleIPartAParticipantType_PK] on [edfi].[TitleIPartAParticipantType]'
GO
ALTER TABLE [edfi].[TitleIPartAParticipantType] ADD CONSTRAINT [TitleIPartAParticipantType_PK] PRIMARY KEY CLUSTERED  ([TitleIPartAParticipantTypeId])
GO
PRINT N'Creating index [UX_TitleIPartAParticipantType_Id] on [edfi].[TitleIPartAParticipantType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_TitleIPartAParticipantType_Id] ON [edfi].[TitleIPartAParticipantType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[TitleIPartAParticipantType]'
GO
ALTER TABLE [edfi].[TitleIPartAParticipantType] ADD CONSTRAINT [TitleIPartAParticipantType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[TitleIPartAParticipantType] ADD CONSTRAINT [TitleIPartAParticipantType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[TitleIPartAParticipantType] ADD CONSTRAINT [TitleIPartAParticipantType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

