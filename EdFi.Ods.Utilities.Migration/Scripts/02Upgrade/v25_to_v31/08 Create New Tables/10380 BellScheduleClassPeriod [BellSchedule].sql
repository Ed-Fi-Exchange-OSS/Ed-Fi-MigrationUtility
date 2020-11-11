-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE [edfi].[BellScheduleClassPeriod]
(
[BellScheduleName] [nvarchar] (60) NOT NULL,
[ClassPeriodName] [nvarchar] (60) NOT NULL,
[SchoolId] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL 
)
GO

INSERT [edfi].[BellScheduleClassPeriod]
(
	[BellScheduleName],
	[ClassPeriodName],
	[SchoolId],
	[CreateDate]
)
SELECT DISTINCT
	[BellScheduleName],
	[ClassPeriodName],
	[SchoolId],
	GETDATE()
FROM [edfi].[BellScheduleMeetingTime]
GO