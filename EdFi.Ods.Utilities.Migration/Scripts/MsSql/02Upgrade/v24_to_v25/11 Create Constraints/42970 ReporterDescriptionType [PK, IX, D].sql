-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ReporterDescriptionType_PK] on [edfi].[ReporterDescriptionType]'
GO
ALTER TABLE [edfi].[ReporterDescriptionType] ADD CONSTRAINT [ReporterDescriptionType_PK] PRIMARY KEY CLUSTERED  ([ReporterDescriptionTypeId])
GO
PRINT N'Creating index [UX_ReporterDescriptionType_Id] on [edfi].[ReporterDescriptionType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ReporterDescriptionType_Id] ON [edfi].[ReporterDescriptionType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[ReporterDescriptionType]'
GO
ALTER TABLE [edfi].[ReporterDescriptionType] ADD CONSTRAINT [ReporterDescriptionType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ReporterDescriptionType] ADD CONSTRAINT [ReporterDescriptionType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ReporterDescriptionType] ADD CONSTRAINT [ReporterDescriptionType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

