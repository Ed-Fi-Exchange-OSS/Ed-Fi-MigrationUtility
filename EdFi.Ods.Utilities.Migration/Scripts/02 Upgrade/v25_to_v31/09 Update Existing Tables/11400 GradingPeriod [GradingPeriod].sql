-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating primary key on [edfi].[GradingPeriod]'
GO

ALTER TABLE [edfi].[GradingPeriod]
ADD [SchoolYear] [smallint] NULL
GO

UPDATE [edfi].[GradingPeriod]
SET [SchoolYear] = m.[SchoolYear],
[PeriodSequence] = m.[PeriodSequence]
FROM [edfi].[GradingPeriod] g
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] m
	ON m.[GradingPeriodDescriptorId] = g.[GradingPeriodDescriptorId]
	AND m.[SchoolId] = g.[SchoolId]
	AND m.[BeginDate] = g.[BeginDate]
GO

ALTER TABLE [edfi].[GradingPeriod]
ALTER COLUMN [PeriodSequence] [INT] NOT NULL
GO

ALTER TABLE [edfi].[GradingPeriod]
ALTER COLUMN [SchoolYear] [smallint] NOT NULL
GO
