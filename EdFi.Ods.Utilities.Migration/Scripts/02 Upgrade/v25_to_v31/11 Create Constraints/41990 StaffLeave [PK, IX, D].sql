-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffLeave_PK] on [edfi].[StaffLeave]'
GO
ALTER TABLE [edfi].[StaffLeave] ADD CONSTRAINT [StaffLeave_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [StaffLeaveEventCategoryDescriptorId], [StaffUSI])
GO

PRINT N'Creating index [UX_StaffLeave_Id] on [edfi].[StaffLeave]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StaffLeave_Id] ON [edfi].[StaffLeave] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StaffLeave_StaffLeaveEventCategoryDescriptor] on [edfi].[StaffLeave]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffLeave_StaffLeaveEventCategoryDescriptor] ON [edfi].[StaffLeave] ([StaffLeaveEventCategoryDescriptorId])
GO

PRINT N'Creating index [FK_StaffLeave_Staff] on [edfi].[StaffLeave]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffLeave_Staff] ON [edfi].[StaffLeave] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffLeave]'
GO
ALTER TABLE [edfi].[StaffLeave] ADD CONSTRAINT [StaffLeave_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StaffLeave] ADD CONSTRAINT [StaffLeave_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StaffLeave] ADD CONSTRAINT [StaffLeave_DF_Id] DEFAULT (newid()) FOR [Id]
GO
