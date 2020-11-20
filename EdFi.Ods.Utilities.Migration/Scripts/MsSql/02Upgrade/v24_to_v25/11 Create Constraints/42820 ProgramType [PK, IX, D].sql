-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProgramType_PK] on [edfi].[ProgramType]'
GO
ALTER TABLE [edfi].[ProgramType] ADD CONSTRAINT [ProgramType_PK] PRIMARY KEY CLUSTERED  ([ProgramTypeId])
GO
PRINT N'Creating index [UX_ProgramType_Id] on [edfi].[ProgramType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ProgramType_Id] ON [edfi].[ProgramType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[ProgramType]'
GO
ALTER TABLE [edfi].[ProgramType] ADD CONSTRAINT [ProgramType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ProgramType] ADD CONSTRAINT [ProgramType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ProgramType] ADD CONSTRAINT [ProgramType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

