-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[BellScheduleGradeLevel]'
GO

CREATE TABLE [edfi].[BellScheduleGradeLevel]
(
[BellScheduleName] [nvarchar] (60) NOT NULL,
[GradeLevelDescriptorId] [int] NOT NULL,
[SchoolId] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

DECLARE @CreateDate datetime = GETDATE()

INSERT [edfi].[BellScheduleGradeLevel] 
(
[BellScheduleName],
[GradeLevelDescriptorId],
[SchoolId],
[CreateDate]
)
SELECT DISTINCT [BellScheduleName], [GradeLevelDescriptorId], [SchoolId], @CreateDate FROM [edfi].[BellSchedule]
UNION
SELECT DISTINCT [BellScheduleName], [GradeLevelDescriptorId], [SchoolId], @CreateDate FROM [edfi].[BellScheduleMeetingTime]
GO
