-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [IntegratedTechnologyStatusType_PK] on [edfi].[IntegratedTechnologyStatusType]'
GO
ALTER TABLE [edfi].[IntegratedTechnologyStatusType] ADD CONSTRAINT [IntegratedTechnologyStatusType_PK] PRIMARY KEY CLUSTERED  ([IntegratedTechnologyStatusTypeId])
GO
PRINT N'Creating index [UX_IntegratedTechnologyStatusType_Id] on [edfi].[IntegratedTechnologyStatusType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_IntegratedTechnologyStatusType_Id] ON [edfi].[IntegratedTechnologyStatusType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[IntegratedTechnologyStatusType]'
GO
ALTER TABLE [edfi].[IntegratedTechnologyStatusType] ADD CONSTRAINT [IntegratedTechnologyStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[IntegratedTechnologyStatusType] ADD CONSTRAINT [IntegratedTechnologyStatusType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[IntegratedTechnologyStatusType] ADD CONSTRAINT [IntegratedTechnologyStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

