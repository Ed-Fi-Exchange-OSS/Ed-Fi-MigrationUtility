-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PopulationServedType_PK] on [edfi].[PopulationServedType]'
GO
ALTER TABLE [edfi].[PopulationServedType] ADD CONSTRAINT [PopulationServedType_PK] PRIMARY KEY CLUSTERED  ([PopulationServedTypeId])
GO
PRINT N'Creating index [UX_PopulationServedType_Id] on [edfi].[PopulationServedType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_PopulationServedType_Id] ON [edfi].[PopulationServedType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[PopulationServedType]'
GO
ALTER TABLE [edfi].[PopulationServedType] ADD CONSTRAINT [PopulationServedType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[PopulationServedType] ADD CONSTRAINT [PopulationServedType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[PopulationServedType] ADD CONSTRAINT [PopulationServedType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

