-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [NetworkPurposeType_PK] on [edfi].[NetworkPurposeType]'
GO
ALTER TABLE [edfi].[NetworkPurposeType] ADD CONSTRAINT [NetworkPurposeType_PK] PRIMARY KEY CLUSTERED  ([NetworkPurposeTypeId])
GO
PRINT N'Creating index [UX_NetworkPurposeType_Id] on [edfi].[NetworkPurposeType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_NetworkPurposeType_Id] ON [edfi].[NetworkPurposeType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[NetworkPurposeType]'
GO
ALTER TABLE [edfi].[NetworkPurposeType] ADD CONSTRAINT [NetworkPurposeType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[NetworkPurposeType] ADD CONSTRAINT [NetworkPurposeType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[NetworkPurposeType] ADD CONSTRAINT [NetworkPurposeType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

