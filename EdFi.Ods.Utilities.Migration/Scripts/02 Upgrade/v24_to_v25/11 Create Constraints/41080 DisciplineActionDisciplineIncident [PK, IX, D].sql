-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisciplineActionDisciplineIncident_PK] on [edfi].[DisciplineActionDisciplineIncident]'
GO
ALTER TABLE [edfi].[DisciplineActionDisciplineIncident] ADD CONSTRAINT [DisciplineActionDisciplineIncident_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [DisciplineActionIdentifier], [DisciplineDate], [SchoolId], [IncidentIdentifier])
GO
PRINT N'Creating index [FK_DisciplineActionDisciplineIncident_DisciplineAction] on [edfi].[DisciplineActionDisciplineIncident]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineActionDisciplineIncident_DisciplineAction] ON [edfi].[DisciplineActionDisciplineIncident] ([DisciplineActionIdentifier], [StudentUSI], [DisciplineDate])
GO
PRINT N'Creating index [FK_DisciplineActionDisciplineIncident_DisciplineIncident] on [edfi].[DisciplineActionDisciplineIncident]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineActionDisciplineIncident_DisciplineIncident] ON [edfi].[DisciplineActionDisciplineIncident] ([IncidentIdentifier], [SchoolId])
GO

PRINT N'Adding constraints to [edfi].[DisciplineActionDisciplineIncident]'
GO
ALTER TABLE [edfi].[DisciplineActionDisciplineIncident] ADD CONSTRAINT [DisciplineActionDisciplineIncident_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

