-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationInternationalAddress]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress]
(
[AddressTypeId] [int] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[AddressLine1] [nvarchar] (150) NOT NULL,
[AddressLine2] [nvarchar] (150) NULL,
[AddressLine3] [nvarchar] (150) NULL,
[AddressLine4] [nvarchar] (150) NULL,
[CountryDescriptorId] [int] NOT NULL,
[Latitude] [nvarchar] (20) NULL,
[Longitude] [nvarchar] (20) NULL,
[BeginDate] [date] NULL,
[EndDate] [date] NULL,
[CreateDate] [datetime] NOT NULL
)

INSERT [edfi].[StudentEducationOrganizationAssociationInternationalAddress]
(
[AddressTypeId],
[EducationOrganizationId],
[StudentUSI],
[AddressLine1],
[AddressLine2],
[AddressLine3],
[AddressLine4],
[CountryDescriptorId],
[Latitude],
[Longitude],
[BeginDate],
[EndDate],
[CreateDate]
)
SELECT
s.[AddressTypeId],
a.[EducationOrganizationId],
s.[StudentUSI],
s.[AddressLine1],
s.[AddressLine2],
s.[AddressLine3],
s.[AddressLine4],
s.[CountryDescriptorId],
s.[Latitude],
s.[Longitude],
s.[BeginDate],
s.[EndDate],
s.[CreateDate]
FROM [edfi].[StudentInternationalAddress] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
	ON s.[StudentUSI] = a.[StudentUSI]
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationInternationalAddress',
'edfi', 'AddressTypeDescriptor',
'edfi', 'AddressType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress]
ALTER COLUMN [AddressTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress]
DROP COLUMN [AddressTypeId]
GO
