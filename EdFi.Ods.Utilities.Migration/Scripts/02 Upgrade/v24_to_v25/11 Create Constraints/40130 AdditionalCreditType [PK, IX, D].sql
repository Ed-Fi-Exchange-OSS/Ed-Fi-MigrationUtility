-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AdditionalCreditType_PK] on [edfi].[AdditionalCreditType]'
GO
ALTER TABLE [edfi].[AdditionalCreditType] ADD CONSTRAINT [AdditionalCreditType_PK] PRIMARY KEY CLUSTERED  ([AdditionalCreditTypeId])
GO
PRINT N'Creating index [UX_AdditionalCreditType_Id] on [edfi].[AdditionalCreditType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AdditionalCreditType_Id] ON [edfi].[AdditionalCreditType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AdditionalCreditType]'
GO
ALTER TABLE [edfi].[AdditionalCreditType] ADD CONSTRAINT [AdditionalCreditType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AdditionalCreditType] ADD CONSTRAINT [AdditionalCreditType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AdditionalCreditType] ADD CONSTRAINT [AdditionalCreditType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

