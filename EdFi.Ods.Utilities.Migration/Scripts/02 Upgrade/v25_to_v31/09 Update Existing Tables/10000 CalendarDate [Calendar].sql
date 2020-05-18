-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding School Year and CalendarCode to [edfi].[CalendarDate]'
GO

ALTER TABLE [edfi].[CalendarDate]
ADD 
	[CalendarCode] [nvarchar] (60) NULL,
	[SchoolYear] [smallint] NULL
GO

;WITH SchoolYearReference AS
(
	SELECT
		c.[Date]
		, c.[SchoolId]
		, m.[SchoolYear] AS SchoolYear
	FROM [edfi].[CalendarDate] c
	INNER JOIN [migration_tempdata].[CalendarConfig] m
	ON c.[SchoolId] = m.[SchoolId]
		AND c.[Date] >= m.[BeginDate]
		AND c.[Date] <= m.[EndDate]
	GROUP BY c.[SchoolId], m.[SchoolYear], c.[Date]
)
UPDATE [edfi].[CalendarDate]
SET
	[CalendarCode] = c.[CalendarCode]
	, [SchoolYear] = s.[SchoolYear]
FROM [edfi].[CalendarDate] cd
LEFT JOIN SchoolYearReference s
	ON (cd.[SchoolId] = s.[SchoolId] AND cd.[Date] = s.[Date])
INNER JOIN [edfi].[Calendar] c
	ON (c.[SchoolId] = s.[SchoolId] AND c.[SchoolYear] = s.[SchoolYear])
GO

ALTER TABLE [edfi].[CalendarDate]
ALTER COLUMN
	[CalendarCode] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[CalendarDate]
ALTER COLUMN
	[SchoolYear] [smallint] NOT NULL
GO
