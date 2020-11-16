-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisabilityType_PK] on [edfi].[DisabilityType]'
GO
ALTER TABLE [edfi].[DisabilityType] ADD CONSTRAINT [DisabilityType_PK] PRIMARY KEY CLUSTERED  ([DisabilityTypeId])
GO
PRINT N'Creating index [UX_DisabilityType_Id] on [edfi].[DisabilityType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_DisabilityType_Id] ON [edfi].[DisabilityType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[DisabilityType]'
GO
ALTER TABLE [edfi].[DisabilityType] ADD CONSTRAINT [DisabilityType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[DisabilityType] ADD CONSTRAINT [DisabilityType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[DisabilityType] ADD CONSTRAINT [DisabilityType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

