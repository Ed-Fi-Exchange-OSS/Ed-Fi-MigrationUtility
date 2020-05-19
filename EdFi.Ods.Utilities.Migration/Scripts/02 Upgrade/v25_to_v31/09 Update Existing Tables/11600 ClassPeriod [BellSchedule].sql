-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[ClassPeriod]'
GO
ALTER TABLE [edfi].[ClassPeriod]
ALTER COLUMN [ClassPeriodName] [nvarchar] (60) NOT NULL
GO

PRINT N'Adding [OfficialAttendancePeriod] to [edfi].[ClassPeriod]'
GO
ALTER TABLE [edfi].[ClassPeriod] ADD
[OfficialAttendancePeriod] [bit] NULL
GO

/*
Business Rule: In the event that there are multiple conflicting OfficialAttendancePeriod options associated
with a single v3 ClassPeriod, select the OfficialAttendancePeriod value that is associated
with the corresponding v3 ClassPeriod primary key the most.  If there are an equal number
of conflicting records, CreateDate will be used as a tiebreaker.
*/

;WITH [AllOfficialAttendancePeriodOptions] AS
(
SELECT [ClassPeriodName],  --Select all available options for OfficialAttendancePeriod for each v3 ClassPeriod, the number of times each value is used, and their create dates
[SchoolId],
[OfficialAttendancePeriod],
[CreateDate],
ROW_NUMBER() OVER
(
	PARTITION BY [ClassPeriodName], [SchoolId], [OfficialAttendancePeriod]
	ORDER BY [CreateDate]
) AS [OfficialAttendancePeriodOrderKey]
FROM [edfi].[BellScheduleMeetingTime]
WHERE [OfficialAttendancePeriod] IS NOT NULL
),
[ClassPeriodOfficialAttendancePeriodPriority] AS
(
SELECT [ClassPeriodName], --Rank each selection above by priority (first by number of usages, then by create date)
[SchoolId],
[OfficialAttendancePeriod],
ROW_NUMBER() OVER
(
	PARTITION BY [ClassPeriodName], [SchoolId]
	ORDER BY [OfficialAttendancePeriodOrderKey] DESC, [CreateDate] DESC
) AS [ClassPeriod_V3_Priority]
FROM [AllOfficialAttendancePeriodOptions] 
)
UPDATE [edfi].[ClassPeriod]
SET [OfficialAttendancePeriod] = p.[OfficialAttendancePeriod]
FROM [edfi].[ClassPeriod] c
INNER JOIN [ClassPeriodOfficialAttendancePeriodPriority] p
ON c.[ClassPeriodName] = p.[ClassPeriodName]
AND c.[SchoolId] = p.[SchoolId]
AND p.[ClassPeriod_V3_Priority] = 1 --Selects the single best matching OfficialAttendancePeriod for each ClassPeriod using the business rule logic commented above