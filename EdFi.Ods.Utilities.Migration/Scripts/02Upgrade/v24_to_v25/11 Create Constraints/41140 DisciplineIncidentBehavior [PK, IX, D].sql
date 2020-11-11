-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisciplineIncidentBehavior_PK] on [edfi].[DisciplineIncidentBehavior]'
GO
ALTER TABLE [edfi].[DisciplineIncidentBehavior] ADD CONSTRAINT [DisciplineIncidentBehavior_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [IncidentIdentifier], [BehaviorDescriptorId])
GO
PRINT N'Creating index [FK_DisciplineIncidentBehavior_BehaviorDescriptor] on [edfi].[DisciplineIncidentBehavior]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineIncidentBehavior_BehaviorDescriptor] ON [edfi].[DisciplineIncidentBehavior] ([BehaviorDescriptorId])
GO
PRINT N'Creating index [FK_DisciplineIncidentBehavior_DisciplineIncident] on [edfi].[DisciplineIncidentBehavior]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineIncidentBehavior_DisciplineIncident] ON [edfi].[DisciplineIncidentBehavior] ([IncidentIdentifier], [SchoolId])
GO

PRINT N'Adding constraints to [edfi].[DisciplineIncidentBehavior]'
GO
ALTER TABLE [edfi].[DisciplineIncidentBehavior] ADD CONSTRAINT [DisciplineIncidentBehavior_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

