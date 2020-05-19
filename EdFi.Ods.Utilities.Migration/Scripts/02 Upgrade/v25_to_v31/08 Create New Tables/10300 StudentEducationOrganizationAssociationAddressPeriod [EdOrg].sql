-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationAddressPeriod]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationAddressPeriod]
(
[AddressTypeId] [int] NOT NULL,
[BeginDate] [date] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[EndDate] [date] NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationAddressPeriod]
(
	[AddressTypeId]
   ,[BeginDate]
   ,[EducationOrganizationId]
   ,[StudentUSI]
   ,[EndDate]
   ,[CreateDate]
)
SELECT
	s.[AddressTypeId]
   ,s.[BeginDate]
   ,a.[EducationOrganizationId]
   ,s.[StudentUSI]
   ,s.[EndDate]
   ,s.[CreateDate]
FROM [edfi].[StudentAddress] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
ON s.[StudentUSI] = a.[StudentUSI]
WHERE s.[BeginDate] IS NOT NULL

PRINT N'Converting type to descriptor on [edfi].[StudentEducationOrganizationAssociationAddressPeriod]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationAddressPeriod',
'edfi', 'AddressTypeDescriptor',
'edfi', 'AddressType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddressPeriod]
ALTER COLUMN [AddressTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddressPeriod]
DROP COLUMN [AddressTypeId]
GO

