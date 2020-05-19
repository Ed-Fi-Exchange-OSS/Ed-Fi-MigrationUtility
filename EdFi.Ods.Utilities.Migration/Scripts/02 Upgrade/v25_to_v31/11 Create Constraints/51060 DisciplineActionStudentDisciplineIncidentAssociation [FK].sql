-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[DisciplineActionStudentDisciplineIncidentAssociation]'
GO
ALTER TABLE [edfi].[DisciplineActionStudentDisciplineIncidentAssociation] ADD CONSTRAINT [FK_DisciplineActionStudentDisciplineIncidentAssociation_DisciplineAction] FOREIGN KEY ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI]) REFERENCES [edfi].[DisciplineAction] ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[DisciplineActionStudentDisciplineIncidentAssociation] ADD CONSTRAINT [FK_DisciplineActionStudentDisciplineIncidentAssociation_StudentDisciplineIncidentAssociation] FOREIGN KEY ([IncidentIdentifier], [SchoolId], [StudentUSI]) REFERENCES [edfi].[StudentDisciplineIncidentAssociation] ([IncidentIdentifier], [SchoolId], [StudentUSI])
GO
