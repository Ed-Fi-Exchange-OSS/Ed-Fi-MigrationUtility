-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentDisciplineIncidentAssociation_PK] on [edfi].[StudentDisciplineIncidentAssociation]'
GO
ALTER TABLE [edfi].[StudentDisciplineIncidentAssociation] ADD CONSTRAINT [StudentDisciplineIncidentAssociation_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [SchoolId], [IncidentIdentifier])
GO
PRINT N'Creating index [UX_StudentDisciplineIncidentAssociation_Id] on [edfi].[StudentDisciplineIncidentAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentDisciplineIncidentAssociation_Id] ON [edfi].[StudentDisciplineIncidentAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StudentDisciplineIncidentAssociation_DisciplineIncident] on [edfi].[StudentDisciplineIncidentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentAssociation_DisciplineIncident] ON [edfi].[StudentDisciplineIncidentAssociation] ([IncidentIdentifier], [SchoolId])
GO
PRINT N'Creating index [FK_StudentDisciplineIncidentAssociation_StudentParticipationCodeType] on [edfi].[StudentDisciplineIncidentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentAssociation_StudentParticipationCodeType] ON [edfi].[StudentDisciplineIncidentAssociation] ([StudentParticipationCodeTypeId])
GO
PRINT N'Creating index [FK_StudentDisciplineIncidentAssociation_Student] on [edfi].[StudentDisciplineIncidentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentAssociation_Student] ON [edfi].[StudentDisciplineIncidentAssociation] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentDisciplineIncidentAssociation]'
GO
ALTER TABLE [edfi].[StudentDisciplineIncidentAssociation] ADD CONSTRAINT [StudentDisciplineIncidentAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentDisciplineIncidentAssociation] ADD CONSTRAINT [StudentDisciplineIncidentAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentDisciplineIncidentAssociation] ADD CONSTRAINT [StudentDisciplineIncidentAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO

