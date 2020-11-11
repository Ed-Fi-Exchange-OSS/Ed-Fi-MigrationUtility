-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisciplineIncident_PK] on [edfi].[DisciplineIncident]'
GO
ALTER TABLE [edfi].[DisciplineIncident] ADD CONSTRAINT [DisciplineIncident_PK] PRIMARY KEY CLUSTERED  ([IncidentIdentifier], [SchoolId])
GO

PRINT N'Creating index [UX_DisciplineIncident_Id] on [edfi].[DisciplineIncident]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_DisciplineIncident_Id] ON [edfi].[DisciplineIncident] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_DisciplineIncident_IncidentLocationDescriptor] on [edfi].[DisciplineIncident]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineIncident_IncidentLocationDescriptor] ON [edfi].[DisciplineIncident] ([IncidentLocationDescriptorId])
GO

PRINT N'Creating index [FK_DisciplineIncident_ReporterDescriptionDescriptor] on [edfi].[DisciplineIncident]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineIncident_ReporterDescriptionDescriptor] ON [edfi].[DisciplineIncident] ([ReporterDescriptionDescriptorId])
GO

PRINT N'Creating index [FK_DisciplineIncident_School] on [edfi].[DisciplineIncident]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineIncident_School] ON [edfi].[DisciplineIncident] ([SchoolId])
GO

PRINT N'Creating index [FK_DisciplineIncident_Staff] on [edfi].[DisciplineIncident]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineIncident_Staff] ON [edfi].[DisciplineIncident] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[DisciplineIncident]'
GO
ALTER TABLE [edfi].[DisciplineIncident] ADD CONSTRAINT [DisciplineIncident_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[DisciplineIncident] ADD CONSTRAINT [DisciplineIncident_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[DisciplineIncident] ADD CONSTRAINT [DisciplineIncident_DF_Id] DEFAULT (newid()) FOR [Id]
GO
