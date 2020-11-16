-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [MethodCreditEarnedType_PK] on [edfi].[MethodCreditEarnedType]'
GO
ALTER TABLE [edfi].[MethodCreditEarnedType] ADD CONSTRAINT [MethodCreditEarnedType_PK] PRIMARY KEY CLUSTERED  ([MethodCreditEarnedTypeId])
GO
PRINT N'Creating index [UX_MethodCreditEarnedType_Id] on [edfi].[MethodCreditEarnedType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_MethodCreditEarnedType_Id] ON [edfi].[MethodCreditEarnedType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[MethodCreditEarnedType]'
GO
ALTER TABLE [edfi].[MethodCreditEarnedType] ADD CONSTRAINT [MethodCreditEarnedType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[MethodCreditEarnedType] ADD CONSTRAINT [MethodCreditEarnedType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[MethodCreditEarnedType] ADD CONSTRAINT [MethodCreditEarnedType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

