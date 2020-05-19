-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisciplineActionStudentDisciplineIncidentAssociation_PK] on [edfi].[DisciplineActionStudentDisciplineIncidentAssociation]'
GO
ALTER TABLE [edfi].[DisciplineActionStudentDisciplineIncidentAssociation] ADD CONSTRAINT [DisciplineActionStudentDisciplineIncidentAssociation_PK] PRIMARY KEY CLUSTERED  ([DisciplineActionIdentifier], [DisciplineDate], [IncidentIdentifier], [SchoolId], [StudentUSI])
GO

PRINT N'Creating index [FK_DisciplineActionStudentDisciplineIncidentAssociation_DisciplineAction] on [edfi].[DisciplineActionStudentDisciplineIncidentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineActionStudentDisciplineIncidentAssociation_DisciplineAction] ON [edfi].[DisciplineActionStudentDisciplineIncidentAssociation] ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
GO

PRINT N'Creating index [FK_DisciplineActionStudentDisciplineIncidentAssociation_StudentDisciplineIncidentAssociation] on [edfi].[DisciplineActionStudentDisciplineIncidentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineActionStudentDisciplineIncidentAssociation_StudentDisciplineIncidentAssociation] ON [edfi].[DisciplineActionStudentDisciplineIncidentAssociation] ([IncidentIdentifier], [SchoolId], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[DisciplineActionStudentDisciplineIncidentAssociation]'
GO
ALTER TABLE [edfi].[DisciplineActionStudentDisciplineIncidentAssociation] ADD CONSTRAINT [DisciplineActionStudentDisciplineIncidentAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
