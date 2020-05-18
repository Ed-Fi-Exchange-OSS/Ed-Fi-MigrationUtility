-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [IncidentLocationType_PK] on [edfi].[IncidentLocationType]'
GO
ALTER TABLE [edfi].[IncidentLocationType] ADD CONSTRAINT [IncidentLocationType_PK] PRIMARY KEY CLUSTERED  ([IncidentLocationTypeId])
GO
PRINT N'Creating index [UX_IncidentLocationType_Id] on [edfi].[IncidentLocationType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_IncidentLocationType_Id] ON [edfi].[IncidentLocationType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[IncidentLocationType]'
GO
ALTER TABLE [edfi].[IncidentLocationType] ADD CONSTRAINT [IncidentLocationType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[IncidentLocationType] ADD CONSTRAINT [IncidentLocationType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[IncidentLocationType] ADD CONSTRAINT [IncidentLocationType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

