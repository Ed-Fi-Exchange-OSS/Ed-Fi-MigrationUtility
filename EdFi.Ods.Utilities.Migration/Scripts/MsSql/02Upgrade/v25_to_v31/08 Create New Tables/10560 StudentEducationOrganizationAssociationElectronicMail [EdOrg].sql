-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationElectronicMail]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationElectronicMail]
(
[EducationOrganizationId] [int] NOT NULL,
[ElectronicMailTypeId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[ElectronicMailAddress] [nvarchar] (128) NOT NULL,
[PrimaryEmailAddressIndicator] [bit] NULL,
[DoNotPublishIndicator] [bit] NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationElectronicMail]
(
[EducationOrganizationId],
[ElectronicMailTypeId],
[StudentUSI],
[ElectronicMailAddress],
[PrimaryEmailAddressIndicator],
[CreateDate]
)
SELECT
a.[EducationOrganizationId],
s.[ElectronicMailTypeId],
s.[StudentUSI],
s.[ElectronicMailAddress],
s.[PrimaryEmailAddressIndicator],
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentElectronicMail] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
	ON s.[StudentUSI] = a.[StudentUSI]
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationElectronicMail',
'edfi', 'ElectronicMailTypeDescriptor',
'edfi', 'ElectronicMailType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationElectronicMail]
ALTER COLUMN [ElectronicMailTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationElectronicMail]
DROP COLUMN [ElectronicMailTypeId]
GO

