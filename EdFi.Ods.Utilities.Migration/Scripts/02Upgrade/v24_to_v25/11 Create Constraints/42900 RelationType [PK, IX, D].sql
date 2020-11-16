-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [RelationType_PK] on [edfi].[RelationType]'
GO
ALTER TABLE [edfi].[RelationType] ADD CONSTRAINT [RelationType_PK] PRIMARY KEY CLUSTERED  ([RelationTypeId])
GO
PRINT N'Creating index [UX_RelationType_Id] on [edfi].[RelationType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_RelationType_Id] ON [edfi].[RelationType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[RelationType]'
GO
ALTER TABLE [edfi].[RelationType] ADD CONSTRAINT [RelationType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[RelationType] ADD CONSTRAINT [RelationType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[RelationType] ADD CONSTRAINT [RelationType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

