-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StaffLeave]'
GO

CREATE TABLE [edfi].[StaffLeave]
(
[BeginDate] [date] NOT NULL,
[StaffLeaveEventCategoryDescriptorId] [int] NOT NULL,
[StaffUSI] [int] NOT NULL,
[EndDate] [date] NULL,
[Reason] [nvarchar] (40) NULL,
[SubstituteAssigned] [bit] NULL,
[CreateDate] [datetime] NOT NULL,
[LastModifiedDate] [datetime] NOT NULL,
[Id] [uniqueidentifier] NOT NULL
)
GO
