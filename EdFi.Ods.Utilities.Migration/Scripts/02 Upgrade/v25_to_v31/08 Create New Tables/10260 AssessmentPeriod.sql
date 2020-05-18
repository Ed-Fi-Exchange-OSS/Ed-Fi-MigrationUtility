-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[AssessmentPeriod]'
GO

CREATE TABLE [edfi].[AssessmentPeriod]
(
[AssessmentIdentifier] [nvarchar] (60) NOT NULL,
[Namespace] [nvarchar] (255) NOT NULL,
[AssessmentPeriodDescriptorId] [int] NOT NULL,
[BeginDate] [date] NULL,
[EndDate] [date] NULL,
[CreateDate] [datetime] NOT NULL 
)
GO

INSERT [edfi].[AssessmentPeriod]
(
	[AssessmentIdentifier],
	[Namespace],
	[AssessmentPeriodDescriptorId],
	[CreateDate]
)
SELECT
	[AssessmentIdentifier],
	[Namespace],
	[AssessmentPeriodDescriptorId],
	GETDATE()
FROM [edfi].[Assessment]
WHERE [AssessmentPeriodDescriptorId] IS NOT NULL
GO

PRINT N'Converting namespace to v3 format on [edfi].[AssessmentPeriod]'
GO

UPDATE [edfi].[AssessmentPeriod]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[AssessmentPeriod] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]
GO
