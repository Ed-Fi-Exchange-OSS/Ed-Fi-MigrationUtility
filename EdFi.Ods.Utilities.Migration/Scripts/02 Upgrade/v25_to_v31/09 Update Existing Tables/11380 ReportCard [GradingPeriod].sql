-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating GradingPeriod reference on [edfi].[ReportCard]'
GO

ALTER TABLE [edfi].[ReportCard]
ADD [GradingPeriodSequence] [INT] NULL,
[GradingPeriodSchoolYear] [smallint] NULL,
[GradingPeriodSchoolId] [INT] NULL
GO

UPDATE [edfi].[ReportCard]
SET [GradingPeriodSequence] = m.[PeriodSequence]
,[GradingPeriodSchoolYear] = m.[SchoolYear]
, [GradingPeriodSchoolId] = m.[SchoolId]
FROM [edfi].[ReportCard] r
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] m
	ON m.[GradingPeriodDescriptorId] = r.[GradingPeriodDescriptorId]
	AND m.[SchoolId] = r.[SchoolId]
	AND m.[BeginDate] = r.[GradingPeriodBeginDate]
GO

ALTER TABLE [edfi].[ReportCard]
ALTER COLUMN [GradingPeriodSequence] [INT] NOT NULL
GO

ALTER TABLE [edfi].[ReportCard]
ALTER COLUMN [GradingPeriodSchoolYear] [smallint] NOT NULL
GO

ALTER TABLE [edfi].[ReportCard]
ALTER COLUMN [GradingPeriodSchoolId] [INT] NOT NULL
GO

ALTER TABLE [edfi].[ReportCard]
DROP COLUMN [GradingPeriodBeginDate], [SchoolId]
GO
