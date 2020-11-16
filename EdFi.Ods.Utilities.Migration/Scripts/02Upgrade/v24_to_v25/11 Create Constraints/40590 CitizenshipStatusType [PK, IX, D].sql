-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CitizenshipStatusType_PK] on [edfi].[CitizenshipStatusType]'
GO
ALTER TABLE [edfi].[CitizenshipStatusType] ADD CONSTRAINT [CitizenshipStatusType_PK] PRIMARY KEY CLUSTERED  ([CitizenshipStatusTypeId])
GO
PRINT N'Creating index [UX_CitizenshipStatusType_Id] on [edfi].[CitizenshipStatusType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CitizenshipStatusType_Id] ON [edfi].[CitizenshipStatusType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CitizenshipStatusType]'
GO
ALTER TABLE [edfi].[CitizenshipStatusType] ADD CONSTRAINT [CitizenshipStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CitizenshipStatusType] ADD CONSTRAINT [CitizenshipStatusType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CitizenshipStatusType] ADD CONSTRAINT [CitizenshipStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

