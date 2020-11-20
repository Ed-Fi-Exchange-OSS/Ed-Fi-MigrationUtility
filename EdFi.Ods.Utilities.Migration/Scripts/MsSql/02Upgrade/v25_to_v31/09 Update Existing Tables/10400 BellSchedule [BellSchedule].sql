-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Removing date and grade level from [edfi].[BellSchedule]'
GO

;WITH [BellScheduleKey_20] AS
(
	SELECT
		[BellScheduleName],
		[SchoolId],
		[GradeLevelDescriptorId],
		[Date],
		ROW_NUMBER() OVER
		(
			PARTITION BY [BellScheduleName], [SchoolId]
			ORDER BY [BellScheduleName], [SchoolId], [Date], [GradeLevelDescriptorId]
		) AS [BellScheduleKey_V3_Row]
	FROM [edfi].[BellSchedule]
)
DELETE b
FROM [edfi].[BellSchedule] b
INNER JOIN [BellScheduleKey_20] k
ON
	k.[BellScheduleName] = b.[BellScheduleName]
	AND k.[SchoolId] = b.[SchoolId]
	AND k.[Date] = b.[Date]
	AND k.[GradeLevelDescriptorId] = b.[GradeLevelDescriptorId]
	AND k.[BellScheduleKey_V3_Row] > 1
GO

ALTER TABLE [edfi].[BellSchedule] DROP
COLUMN [GradeLevelDescriptorId],
COLUMN [Date]
GO

PRINT N'Moving [AlternateDayName] from [edfi].[BellScheduleMeetingTime] to [edfi].[BellSchedule]'
GO

ALTER TABLE [edfi].[BellSchedule]
ADD [AlternateDayName] NVARCHAR(20) NULL
GO

/*
Business Rule: In the event that there are multiple conflicting AlternateDayName options associated
with a single v3 BellSchedule, select the AlternateDayName value that is associated
with the corresponding v3 BellSchedule primary key the most.  If there are an equal number
of conflicting records, CreateDate will be used as a tiebreaker.
*/
;WITH [AllBellScheduleAlternateDayOptions] AS 
(
SELECT [BellScheduleName], --Select all available options for AlternateDayName for each v3 BellSchedule, the number of times each value is used, and their create dates
[SchoolId],
[AlternateDayName],
[CreateDate],
ROW_NUMBER() OVER
(
	PARTITION BY [BellScheduleName], [SchoolId], [AlternateDayName]
	ORDER BY [CreateDate]
) AS [AlternateDayNameOrderKey]
FROM [edfi].[BellScheduleMeetingTime]
WHERE [AlternateDayName] IS NOT NULL
),
[BellScheduleAlternateDayByPriority] AS
(
SELECT [BellScheduleName], --Rank each selection above by priority (first by number of usages, then by create date)
[SchoolId],
[AlternateDayName],
ROW_NUMBER() OVER
(
	PARTITION BY [BellScheduleName], [SchoolId]
	ORDER BY [AlternateDayNameOrderKey] DESC, [CreateDate] DESC
) AS [BellScheduleKey_V3_Priority]
FROM [AllBellScheduleAlternateDayOptions] 
)
UPDATE [edfi].[BellSchedule]
SET [AlternateDayName] = p.[AlternateDayName]
FROM [edfi].[BellSchedule] b
INNER JOIN [BellScheduleAlternateDayByPriority] p
ON b.[BellScheduleName] = p.[BellScheduleName]
AND b.[SchoolId] = p.[SchoolId]
AND p.[BellScheduleKey_V3_Priority] = 1 --Selects the single best matching AlternateDayName for each BellSchedule using the business rule logic commented above