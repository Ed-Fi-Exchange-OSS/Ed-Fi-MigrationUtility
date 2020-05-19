-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[DisciplineIncidentBehavior]'
GO
ALTER TABLE [edfi].[DisciplineIncidentBehavior] ADD CONSTRAINT [FK_DisciplineIncidentBehavior_BehaviorDescriptor] FOREIGN KEY ([BehaviorDescriptorId]) REFERENCES [edfi].[BehaviorDescriptor] ([BehaviorDescriptorId])
GO
ALTER TABLE [edfi].[DisciplineIncidentBehavior] ADD CONSTRAINT [FK_DisciplineIncidentBehavior_DisciplineIncident] FOREIGN KEY ([IncidentIdentifier], [SchoolId]) REFERENCES [edfi].[DisciplineIncident] ([IncidentIdentifier], [SchoolId]) ON DELETE CASCADE
GO
