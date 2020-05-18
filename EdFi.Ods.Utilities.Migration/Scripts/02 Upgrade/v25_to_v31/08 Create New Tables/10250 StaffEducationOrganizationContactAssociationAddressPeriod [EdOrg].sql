-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod]'
GO

CREATE TABLE [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod]
(
[BeginDate] [date] NOT NULL,
[ContactTitle] [nvarchar] (75) NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[StaffUSI] [int] NOT NULL,
[EndDate] [date] NULL,
[CreateDate] [datetime] NOT NULL 
)
GO