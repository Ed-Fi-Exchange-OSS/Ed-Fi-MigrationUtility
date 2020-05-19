-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StaffAbsenceEvent]'
GO


CREATE TABLE [edfi].[StaffAbsenceEvent]
(
[LeaveEventCategoryTypeId] [int] NOT NULL,
[EventDate] [date] NOT NULL,
[StaffUSI] [int] NOT NULL,
[AbsenceEventReason] [nvarchar] (40) NULL,
[HoursAbsent] [decimal] (18, 2) NULL,
[CreateDate] [datetime] NOT NULL,
[LastModifiedDate] [datetime] NOT NULL,
[Id] [uniqueidentifier] NOT NULL
)
GO


INSERT [edfi].[StaffAbsenceEvent]
(
	[LeaveEventCategoryTypeId],
	[EventDate],
	[StaffUSI],
	[AbsenceEventReason],
	[CreateDate],
	[LastModifiedDate],
	[Id]
)
SELECT
	l.[LeaveEventCategoryTypeId],
	l.[EventDate],
	l.[StaffUSI],
	l.[LeaveEventReason] AS [AbsenceEventReason],
	ISNULL(l.[CreateDate], GETDATE()),
	ISNULL(l.[LastModifiedDate], GETDATE()),
	ISNULL(l.[Id], NEWID())
FROM [edfi].[LeaveEvent] l
GO

PRINT N'Converting type to descriptor on [edfi].[StaffAbsenceEvent]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StaffAbsenceEvent',
'edfi', 'AbsenceEventCategoryDescriptor',
'edfi', 'LeaveEventCategoryType',
'LeaveEventCategoryTypeId', 'AbsenceEventCategoryDescriptorId'
GO

ALTER TABLE [edfi].[StaffAbsenceEvent]
ALTER COLUMN [AbsenceEventCategoryDescriptorId] [INT] NOT NULL
GO

ALTER TABLE [edfi].[StaffAbsenceEvent]
DROP COLUMN [LeaveEventCategoryTypeId]
GO

