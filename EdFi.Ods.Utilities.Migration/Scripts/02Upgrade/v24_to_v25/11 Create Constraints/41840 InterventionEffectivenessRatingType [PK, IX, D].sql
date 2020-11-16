-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionEffectivenessRatingType_PK] on [edfi].[InterventionEffectivenessRatingType]'
GO
ALTER TABLE [edfi].[InterventionEffectivenessRatingType] ADD CONSTRAINT [InterventionEffectivenessRatingType_PK] PRIMARY KEY CLUSTERED  ([InterventionEffectivenessRatingTypeId])
GO
PRINT N'Creating index [UX_InterventionEffectivenessRatingType_Id] on [edfi].[InterventionEffectivenessRatingType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_InterventionEffectivenessRatingType_Id] ON [edfi].[InterventionEffectivenessRatingType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[InterventionEffectivenessRatingType]'
GO
ALTER TABLE [edfi].[InterventionEffectivenessRatingType] ADD CONSTRAINT [InterventionEffectivenessRatingType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[InterventionEffectivenessRatingType] ADD CONSTRAINT [InterventionEffectivenessRatingType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[InterventionEffectivenessRatingType] ADD CONSTRAINT [InterventionEffectivenessRatingType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

