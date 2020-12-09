-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffIdentificationSystemType_PK] on [edfi].[StaffIdentificationSystemType]'
GO
ALTER TABLE [edfi].[StaffIdentificationSystemType] ADD CONSTRAINT [StaffIdentificationSystemType_PK] PRIMARY KEY CLUSTERED  ([StaffIdentificationSystemTypeId])
GO
PRINT N'Creating index [UX_StaffIdentificationSystemType_Id] on [edfi].[StaffIdentificationSystemType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StaffIdentificationSystemType_Id] ON [edfi].[StaffIdentificationSystemType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[StaffIdentificationSystemType]'
GO
ALTER TABLE [edfi].[StaffIdentificationSystemType] ADD CONSTRAINT [StaffIdentificationSystemType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StaffIdentificationSystemType] ADD CONSTRAINT [StaffIdentificationSystemType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StaffIdentificationSystemType] ADD CONSTRAINT [StaffIdentificationSystemType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

