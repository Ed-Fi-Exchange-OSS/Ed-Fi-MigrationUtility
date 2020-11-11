-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [OperationalStatusType_PK] on [edfi].[OperationalStatusType]'
GO
ALTER TABLE [edfi].[OperationalStatusType] ADD CONSTRAINT [OperationalStatusType_PK] PRIMARY KEY CLUSTERED  ([OperationalStatusTypeId])
GO
PRINT N'Creating index [UX_OperationalStatusType_Id] on [edfi].[OperationalStatusType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_OperationalStatusType_Id] ON [edfi].[OperationalStatusType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[OperationalStatusType]'
GO
ALTER TABLE [edfi].[OperationalStatusType] ADD CONSTRAINT [OperationalStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[OperationalStatusType] ADD CONSTRAINT [OperationalStatusType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[OperationalStatusType] ADD CONSTRAINT [OperationalStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

