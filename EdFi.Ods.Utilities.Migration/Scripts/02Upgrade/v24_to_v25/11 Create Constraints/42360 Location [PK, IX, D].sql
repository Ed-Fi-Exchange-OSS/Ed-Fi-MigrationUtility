-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Location_PK] on [edfi].[Location]'
GO
ALTER TABLE [edfi].[Location] ADD CONSTRAINT [Location_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [ClassroomIdentificationCode])
GO
PRINT N'Creating index [UX_Location_Id] on [edfi].[Location]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Location_Id] ON [edfi].[Location] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_Location_School] on [edfi].[Location]'
GO
CREATE NONCLUSTERED INDEX [FK_Location_School] ON [edfi].[Location] ([SchoolId])
GO

PRINT N'Adding constraints to [edfi].[Location]'
GO
ALTER TABLE [edfi].[Location] ADD CONSTRAINT [Location_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Location] ADD CONSTRAINT [Location_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Location] ADD CONSTRAINT [Location_DF_Id] DEFAULT (newid()) FOR [Id]
GO

