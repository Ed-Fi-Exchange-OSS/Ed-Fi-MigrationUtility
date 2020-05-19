-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding session reference to [edfi].[SessionGradingPeriod]'

ALTER TABLE [edfi].[SessionGradingPeriod]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[SessionGradingPeriod]
SET [SessionName] = sess.[SessionName]
FROM [edfi].[SessionGradingPeriod] sgp
INNER JOIN [edfi].[Session] sess
	ON sess.[SchoolId]  = sgp.[SchoolId]
	AND sess.[TermDescriptorId] = sgp.[TermDescriptorId]
	AND sess.[SchoolYear] = sgp.[SchoolYear]
GO

ALTER TABLE [edfi].[SessionGradingPeriod]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

PRINT N'Updating GradingPeriod reference on [edfi].[SessionGradingPeriod]'
GO

ALTER TABLE [edfi].[SessionGradingPeriod]
ADD [PeriodSequence] [INT] NULL
GO

UPDATE [edfi].[SessionGradingPeriod]
SET [PeriodSequence] = m.[PeriodSequence]
FROM [edfi].[SessionGradingPeriod] s
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] m
	ON m.[GradingPeriodDescriptorId] = s.[GradingPeriodDescriptorId]
	AND m.[SchoolId] = s.[SchoolId]
	AND m.[BeginDate] = s.[BeginDate]
GO

ALTER TABLE [edfi].[SessionGradingPeriod]
ALTER COLUMN [PeriodSequence] [INT] NOT NULL
GO

ALTER TABLE [edfi].[SessionGradingPeriod] DROP
COLUMN [TermDescriptorId],
COLUMN [BeginDate]
GO
