-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StaffEducationOrganizationContactAssociationAddress]'
GO

CREATE TABLE [edfi].[StaffEducationOrganizationContactAssociationAddress]
(
[ContactTitle] [nvarchar] (75) NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[StaffUSI] [int] NOT NULL,
[StreetNumberName] [nvarchar] (150) NOT NULL,
[ApartmentRoomSuiteNumber] [nvarchar] (50) NULL,
[BuildingSiteNumber] [nvarchar] (20) NULL,
[City] [nvarchar] (30) NOT NULL,
[StateAbbreviationDescriptorId] [int] NOT NULL,
[PostalCode] [nvarchar] (17) NOT NULL,
[NameOfCounty] [nvarchar] (30) NULL,
[CountyFIPSCode] [nvarchar] (5) NULL,
[Latitude] [nvarchar] (20) NULL,
[Longitude] [nvarchar] (20) NULL,
[AddressTypeDescriptorId] [int] NOT NULL,
[DoNotPublishIndicator] [bit] NULL,
[CreateDate] [datetime] NOT NULL
)

