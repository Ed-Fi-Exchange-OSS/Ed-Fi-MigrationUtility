-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[BellScheduleDate]'
GO

CREATE TABLE [edfi].[BellScheduleDate]
(
[BellScheduleName] [nvarchar] (60) NOT NULL,
[Date] [date] NOT NULL,
[SchoolId] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

DECLARE @CreateDate datetime = GETDATE()

INSERT [edfi].[BellScheduleDate] 
(
[BellScheduleName],
[Date],
[SchoolId],
[CreateDate]
)
SELECT DISTINCT [BellScheduleName], [Date], [SchoolId], @CreateDate FROM [edfi].[BellSchedule]
UNION
SELECT DISTINCT [BellScheduleName], [Date], [SchoolId], @CreateDate FROM [edfi].[BellScheduleMeetingTime]
GO
