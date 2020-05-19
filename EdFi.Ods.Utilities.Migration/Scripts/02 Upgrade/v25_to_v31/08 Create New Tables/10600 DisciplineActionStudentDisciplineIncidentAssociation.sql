-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[DisciplineActionStudentDisciplineIncidentAssociation]'
GO

CREATE TABLE [edfi].[DisciplineActionStudentDisciplineIncidentAssociation]
(
[DisciplineActionIdentifier] [nvarchar] (20) NOT NULL,
[DisciplineDate] [date] NOT NULL,
[IncidentIdentifier] [nvarchar] (20) NOT NULL,
[SchoolId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[DisciplineActionStudentDisciplineIncidentAssociation]
([DisciplineActionIdentifier]
,[DisciplineDate]
,[IncidentIdentifier]
,[SchoolId]
,[StudentUSI]
,[CreateDate])
SELECT
d.[DisciplineActionIdentifier]
,d.[DisciplineDate]
,s.[IncidentIdentifier]
,s.[SchoolId]
,s.[StudentUSI]
,GETDATE()
FROM [edfi].[DisciplineActionDisciplineIncident] d
INNER JOIN [edfi].[StudentDisciplineIncidentAssociation] s
ON  d.[StudentUSI] = s.[StudentUSI]
AND d.[SchoolId] = s.[SchoolId]
AND d.[IncidentIdentifier] = s.[IncidentIdentifier]
