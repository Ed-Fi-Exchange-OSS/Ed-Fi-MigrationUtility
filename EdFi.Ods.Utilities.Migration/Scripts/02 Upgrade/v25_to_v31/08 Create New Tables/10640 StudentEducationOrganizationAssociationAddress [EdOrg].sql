-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationAddress]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationAddress]
(
[AddressTypeId] [int] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[StreetNumberName] [nvarchar] (150) NOT NULL,
[ApartmentRoomSuiteNumber] [nvarchar] (50) NULL,
[BuildingSiteNumber] [nvarchar] (20) NULL,
[City] [nvarchar] (30) NOT NULL,
[StateAbbreviationTypeId] [int] NOT NULL,
[PostalCode] [nvarchar] (17) NOT NULL,
[NameOfCounty] [nvarchar] (30) NULL,
[CountyFIPSCode] [nvarchar] (5) NULL,
[Latitude] [nvarchar] (20) NULL,
[Longitude] [nvarchar] (20) NULL,
[DoNotPublishIndicator] [bit] NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationAddress]
(
	[AddressTypeId]
	,[EducationOrganizationId]
	,[StudentUSI]
	,[StreetNumberName]
	,[ApartmentRoomSuiteNumber]
	,[BuildingSiteNumber]
	,[City]
	,[StateAbbreviationTypeId]
	,[PostalCode]
	,[NameOfCounty]
	,[CountyFIPSCode]
	,[Latitude]
	,[Longitude]
	,[CreateDate]
)
SELECT
	s.[AddressTypeId]
	,a.[EducationOrganizationId]
	,s.[StudentUSI]
	,s.[StreetNumberName]
	,s.[ApartmentRoomSuiteNumber]
	,s.[BuildingSiteNumber]
	,s.[City]
	,s.[StateAbbreviationTypeId]
	,s.[PostalCode]
	,s.[NameOfCounty]
	,s.[CountyFIPSCode]
	,s.[Latitude]
	,s.[Longitude]
	,ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentAddress] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
ON s.[StudentUSI] = a.[StudentUSI]

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationAddress',
'edfi', 'AddressTypeDescriptor',
'edfi', 'AddressType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationAddress',
'edfi', 'StateAbbreviationDescriptor',
'edfi', 'StateAbbreviationType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddress]
ALTER COLUMN [AddressTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddress]
ALTER COLUMN [StateAbbreviationDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddress]
DROP COLUMN
[AddressTypeId],
[StateAbbreviationTypeId]
GO
