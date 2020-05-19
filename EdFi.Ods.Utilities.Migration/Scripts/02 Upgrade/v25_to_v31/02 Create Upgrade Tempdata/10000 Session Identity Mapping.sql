-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating session identity mappings'
GO

IF OBJECT_ID('migration_tempdata.SessionIdentityMapping', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[SessionIdentityMapping]
GO

CREATE TABLE [migration_tempdata].[SessionIdentityMapping]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SessionName] [nvarchar](60) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[SchoolYear] [smallint] NOT NULL,
	[TermDescriptorId] [int] NOT NULL,
	CONSTRAINT PK_SessionIdentityMapping PRIMARY KEY NONCLUSTERED ([Id]),
	CONSTRAINT UC_SessionIdentityMapping UNIQUE ([SchoolId], [SchoolYear], [TermDescriptorId], [SessionName])
)
GO

CREATE UNIQUE CLUSTERED INDEX IX_SessionIdentityMapping_SessionPK20 ON [migration_tempdata].[SessionIdentityMapping] ([SchoolId], [SchoolYear], [TermDescriptorId])
GO

CREATE UNIQUE INDEX IX_SessionIdentityMapping_SessionPK21 ON [migration_tempdata].[SessionIdentityMapping] ([SchoolId], [SchoolYear], [SessionName])
GO

;WITH [SessionNumber] AS
(
SELECT [SchoolId],
	[SchoolYear],
	[TermDescriptorId],
	[SessionName],
	ROW_NUMBER() OVER (PARTITION BY [SessionName], [SchoolYear], [SchoolId] ORDER BY [SessionName], [SchoolYear], [SchoolId]) AS [SessionNameOccurrenceCount]
FROM [edfi].[Session]
)
INSERT INTO [migration_tempdata].[SessionIdentityMapping]
SELECT 
/*
	To ensure uniqueness when [TermDescriptorId] is replaced with [SessionName] in the [edfi].[Session] primary key,
	append the current TermDescriptorId to SessionName.  This is only needed if there are any sessions with the same
	session name used more than once for the same SchoolYear + SchoolId combination
*/
	CASE 
		WHEN sn.[SessionNameOccurrenceCount] = 1
			THEN sess.[SessionName]
		ELSE
			[migration_tempdata].[append_to_key](sess.[SessionName], d.[CodeValue], 60)
		END
	AS [SessionName],
	sess.[SchoolId],
	sess.[SchoolYear],
	sess.[TermDescriptorId]
FROM [edfi].[Session] sess
INNER JOIN [SessionNumber] sn
	ON sess.[SchoolId] = sn.[SchoolId]
	AND sess.[SchoolYear] = sn.[SchoolYear]
	AND sess.[TermDescriptorId] = sn.[TermDescriptorId]
INNER JOIN [edfi].[Descriptor] d
	ON d.[DescriptorId] = sess.[TermDescriptorId]
GO
