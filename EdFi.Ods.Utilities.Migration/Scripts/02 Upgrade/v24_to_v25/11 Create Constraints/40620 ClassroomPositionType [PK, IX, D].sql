-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ClassroomPositionType_PK] on [edfi].[ClassroomPositionType]'
GO
ALTER TABLE [edfi].[ClassroomPositionType] ADD CONSTRAINT [ClassroomPositionType_PK] PRIMARY KEY CLUSTERED  ([ClassroomPositionTypeId])
GO
PRINT N'Creating index [UX_ClassroomPositionType_Id] on [edfi].[ClassroomPositionType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ClassroomPositionType_Id] ON [edfi].[ClassroomPositionType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[ClassroomPositionType]'
GO
ALTER TABLE [edfi].[ClassroomPositionType] ADD CONSTRAINT [ClassroomPositionType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ClassroomPositionType] ADD CONSTRAINT [ClassroomPositionType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ClassroomPositionType] ADD CONSTRAINT [ClassroomPositionType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

