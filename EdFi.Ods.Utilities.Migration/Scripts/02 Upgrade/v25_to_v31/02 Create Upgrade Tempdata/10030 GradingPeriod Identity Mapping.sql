-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating GradingPeriod identity mappings'
GO

IF OBJECT_ID('migration_tempdata.GradingPeriodMapping', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[GradingPeriodIdentityMapping]
GO

CREATE TABLE [migration_tempdata].[GradingPeriodIdentityMapping]
(

[GradingPeriodDescriptorId] [int] NOT NULL,
[SchoolId] [int] NOT NULL, 
[BeginDate] [DATE] NOT NULL,
[PeriodSequence] [int] NOT NULL,
[SchoolYear] [smallint] NOT NULL,
CONSTRAINT [PK_GradingPeriod_20] PRIMARY KEY ([GradingPeriodDescriptorId], [SchoolId], [BeginDate])
)
GO

;WITH [SchoolYearReference] AS
(
	SELECT
		g.[BeginDate]
		, g.[SchoolId]
		, c.[SchoolYear]
	FROM [edfi].[GradingPeriod] g
	INNER JOIN [migration_tempdata].[CalendarConfig] c
	ON c.[SchoolId] = g.[SchoolId]
		AND g.[BeginDate] >= c.[BeginDate]
		AND g.[BeginDate] <= c.[EndDate]
	GROUP BY g.[SchoolId], c.[SchoolYear], g.[BeginDate]
)
INSERT  [migration_tempdata].[GradingPeriodIdentityMapping]
(
[GradingPeriodDescriptorId],
[SchoolId], 
[BeginDate],
[PeriodSequence],
[SchoolYear]
)
SELECT 
g.[GradingPeriodDescriptorId],
g.[SchoolId], 
g.[BeginDate],
ISNULL(g.[PeriodSequence], 1),
s.[SchoolYear]
FROM [edfi].[GradingPeriod] g
LEFT JOIN [SchoolYearReference] s
	ON s.[BeginDate] = g.[BeginDate]
	AND s.[SchoolId] = g.[SchoolId]
GO

