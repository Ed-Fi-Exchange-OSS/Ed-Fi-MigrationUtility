-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DiplomaType_PK] on [edfi].[DiplomaType]'
GO
ALTER TABLE [edfi].[DiplomaType] ADD CONSTRAINT [DiplomaType_PK] PRIMARY KEY CLUSTERED  ([DiplomaTypeId])
GO
PRINT N'Creating index [UX_DiplomaType_Id] on [edfi].[DiplomaType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_DiplomaType_Id] ON [edfi].[DiplomaType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[DiplomaType]'
GO
ALTER TABLE [edfi].[DiplomaType] ADD CONSTRAINT [DiplomaType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[DiplomaType] ADD CONSTRAINT [DiplomaType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[DiplomaType] ADD CONSTRAINT [DiplomaType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

