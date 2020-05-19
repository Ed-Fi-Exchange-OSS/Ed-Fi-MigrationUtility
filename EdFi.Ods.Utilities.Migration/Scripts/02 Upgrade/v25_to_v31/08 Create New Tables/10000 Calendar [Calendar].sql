-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[Calendar]'
GO

CREATE TABLE [edfi].[Calendar]
(
[CalendarCode] [nvarchar] (60) NOT NULL,
[SchoolId] [int] NOT NULL,
[SchoolYear] [smallint] NOT NULL,
[CalendarTypeDescriptorId] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL,
[LastModifiedDate] [datetime] NOT NULL,
[Id] [uniqueidentifier] NOT NULL
)
GO

DECLARE @CalendarTypeDescriptorId INT = 
(
	SELECT TOP 1 [CalendarTypeDescriptorId]
	FROM [edfi].[CalendarTypeDescriptor] c
	INNER JOIN [edfi].[Descriptor] d
	ON c.[CalendarTypeDescriptorId] = d.[DescriptorId]
	WHERE d.[CodeValue] = 'Student Specific'
);

INSERT INTO [edfi].[Calendar]
(
	[CalendarCode]
	, [SchoolId]
	, [SchoolYear]
	, [CalendarTypeDescriptorId]
	, [CreateDate]
	, [LastModifiedDate]
	, [Id]
)
SELECT 
	CONCAT (m.[SchoolId], '_', m.[SchoolYear])
	, m.[SchoolId]
	, m.[SchoolYear]
	, @CalendarTypeDescriptorId
	, GETDATE()
	, GETDATE()
	, NEWID()
FROM [migration_tempdata].[CalendarConfig] m
GO
