-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentDisciplineIncidentAssociation]'
GO
ALTER TABLE [edfi].[StudentDisciplineIncidentAssociation] ADD CONSTRAINT [FK_StudentDisciplineIncidentAssociation_DisciplineIncident] FOREIGN KEY ([IncidentIdentifier], [SchoolId]) REFERENCES [edfi].[DisciplineIncident] ([IncidentIdentifier], [SchoolId])
GO
ALTER TABLE [edfi].[StudentDisciplineIncidentAssociation] ADD CONSTRAINT [FK_StudentDisciplineIncidentAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
ALTER TABLE [edfi].[StudentDisciplineIncidentAssociation] ADD CONSTRAINT [FK_StudentDisciplineIncidentAssociation_StudentParticipationCodeType] FOREIGN KEY ([StudentParticipationCodeTypeId]) REFERENCES [edfi].[StudentParticipationCodeType] ([StudentParticipationCodeTypeId])
GO
