-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Session_PK] on [edfi].[Session]'
GO
ALTER TABLE [edfi].[Session] ADD CONSTRAINT [Session_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [SchoolYear], [TermDescriptorId])
GO
PRINT N'Creating index [UX_Session_Id] on [edfi].[Session]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Session_Id] ON [edfi].[Session] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_Session_School] on [edfi].[Session]'
GO
CREATE NONCLUSTERED INDEX [FK_Session_School] ON [edfi].[Session] ([SchoolId])
GO
PRINT N'Creating index [FK_Session_SchoolYearType] on [edfi].[Session]'
GO
CREATE NONCLUSTERED INDEX [FK_Session_SchoolYearType] ON [edfi].[Session] ([SchoolYear])
GO
PRINT N'Creating index [FK_Session_TermDescriptor] on [edfi].[Session]'
GO
CREATE NONCLUSTERED INDEX [FK_Session_TermDescriptor] ON [edfi].[Session] ([TermDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[Session]'
GO
ALTER TABLE [edfi].[Session] ADD CONSTRAINT [Session_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Session] ADD CONSTRAINT [Session_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Session] ADD CONSTRAINT [Session_DF_Id] DEFAULT (newid()) FOR [Id]
GO

