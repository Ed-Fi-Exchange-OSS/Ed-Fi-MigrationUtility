-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CreditType_PK] on [edfi].[CreditType]'
GO
ALTER TABLE [edfi].[CreditType] ADD CONSTRAINT [CreditType_PK] PRIMARY KEY CLUSTERED  ([CreditTypeId])
GO
PRINT N'Creating index [UX_CreditType_Id] on [edfi].[CreditType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CreditType_Id] ON [edfi].[CreditType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CreditType]'
GO
ALTER TABLE [edfi].[CreditType] ADD CONSTRAINT [CreditType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CreditType] ADD CONSTRAINT [CreditType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CreditType] ADD CONSTRAINT [CreditType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

