-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ExitWithdrawType_PK] on [edfi].[ExitWithdrawType]'
GO
ALTER TABLE [edfi].[ExitWithdrawType] ADD CONSTRAINT [ExitWithdrawType_PK] PRIMARY KEY CLUSTERED  ([ExitWithdrawTypeId])
GO
PRINT N'Creating index [UX_ExitWithdrawType_Id] on [edfi].[ExitWithdrawType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ExitWithdrawType_Id] ON [edfi].[ExitWithdrawType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[ExitWithdrawType]'
GO
ALTER TABLE [edfi].[ExitWithdrawType] ADD CONSTRAINT [ExitWithdrawType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ExitWithdrawType] ADD CONSTRAINT [ExitWithdrawType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ExitWithdrawType] ADD CONSTRAINT [ExitWithdrawType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

