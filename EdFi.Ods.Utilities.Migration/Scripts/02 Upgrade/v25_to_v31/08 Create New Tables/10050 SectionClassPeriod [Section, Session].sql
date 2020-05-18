-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[SectionClassPeriod]'

CREATE TABLE [edfi].[SectionClassPeriod]
(
[ClassPeriodName] [nvarchar] (60) NOT NULL,
[LocalCourseCode] [nvarchar] (60) NOT NULL,
[SchoolId] [int] NOT NULL,
[SchoolYear] [smallint] NOT NULL,
[SectionIdentifier] [nvarchar] (255) NOT NULL,
[SessionName] [nvarchar] (60) NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT INTO [edfi].[SectionClassPeriod]
(
	[ClassPeriodName]
	, [LocalCourseCode]
	, [SchoolId]
	, [SchoolYear]
	, [SectionIdentifier]
	, [SessionName]
	, [CreateDate]
)
SELECT [ClassPeriodName]
	, [LocalCourseCode]
	, [SchoolId]
	, [SchoolYear]
	, [SectionIdentifier]
	, [SessionName]
	, GETDATE()
FROM [migration_tempdata].[SectionIdentityMapping]
GO
