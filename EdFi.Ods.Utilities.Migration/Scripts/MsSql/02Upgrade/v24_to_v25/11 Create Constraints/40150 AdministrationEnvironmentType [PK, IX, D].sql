-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AdministrationEnvironmentType_PK] on [edfi].[AdministrationEnvironmentType]'
GO
ALTER TABLE [edfi].[AdministrationEnvironmentType] ADD CONSTRAINT [AdministrationEnvironmentType_PK] PRIMARY KEY CLUSTERED  ([AdministrationEnvironmentTypeId])
GO
PRINT N'Creating index [UX_AdministrationEnvironmentType_Id] on [edfi].[AdministrationEnvironmentType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AdministrationEnvironmentType_Id] ON [edfi].[AdministrationEnvironmentType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AdministrationEnvironmentType]'
GO
ALTER TABLE [edfi].[AdministrationEnvironmentType] ADD CONSTRAINT [AdministrationEnvironmentType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AdministrationEnvironmentType] ADD CONSTRAINT [AdministrationEnvironmentType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AdministrationEnvironmentType] ADD CONSTRAINT [AdministrationEnvironmentType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

