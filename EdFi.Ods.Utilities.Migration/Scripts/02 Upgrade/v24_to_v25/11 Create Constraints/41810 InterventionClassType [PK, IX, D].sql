-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionClassType_PK] on [edfi].[InterventionClassType]'
GO
ALTER TABLE [edfi].[InterventionClassType] ADD CONSTRAINT [InterventionClassType_PK] PRIMARY KEY CLUSTERED  ([InterventionClassTypeId])
GO
PRINT N'Creating index [UX_InterventionClassType_Id] on [edfi].[InterventionClassType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_InterventionClassType_Id] ON [edfi].[InterventionClassType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[InterventionClassType]'
GO
ALTER TABLE [edfi].[InterventionClassType] ADD CONSTRAINT [InterventionClassType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[InterventionClassType] ADD CONSTRAINT [InterventionClassType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[InterventionClassType] ADD CONSTRAINT [InterventionClassType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

