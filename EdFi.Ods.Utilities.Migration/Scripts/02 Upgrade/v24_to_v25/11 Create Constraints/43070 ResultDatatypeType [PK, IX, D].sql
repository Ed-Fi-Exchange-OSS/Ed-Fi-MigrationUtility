-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ResultDatatypeType_PK] on [edfi].[ResultDatatypeType]'
GO
ALTER TABLE [edfi].[ResultDatatypeType] ADD CONSTRAINT [ResultDatatypeType_PK] PRIMARY KEY CLUSTERED  ([ResultDatatypeTypeId])
GO
PRINT N'Creating index [UX_ResultDatatypeType_Id] on [edfi].[ResultDatatypeType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ResultDatatypeType_Id] ON [edfi].[ResultDatatypeType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[ResultDatatypeType]'
GO
ALTER TABLE [edfi].[ResultDatatypeType] ADD CONSTRAINT [ResultDatatypeType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ResultDatatypeType] ADD CONSTRAINT [ResultDatatypeType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ResultDatatypeType] ADD CONSTRAINT [ResultDatatypeType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

