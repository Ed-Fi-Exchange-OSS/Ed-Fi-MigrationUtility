-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationTelephone]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationTelephone]
(
[EducationOrganizationId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[TelephoneNumberTypeId] [int] NOT NULL,
[TelephoneNumber] [nvarchar] (24) NOT NULL,
[OrderOfPriority] [int] NULL,
[TextMessageCapabilityIndicator] [bit] NULL,
[DoNotPublishIndicator] [bit] NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationTelephone]
(
[EducationOrganizationId],
[StudentUSI],
[TelephoneNumberTypeId],
[TelephoneNumber],
[OrderOfPriority],
[TextMessageCapabilityIndicator],
[CreateDate]
)
SELECT
a.[EducationOrganizationId],
s.[StudentUSI],
s.[TelephoneNumberTypeId],
s.[TelephoneNumber],
s.[OrderOfPriority],
s.[TextMessageCapabilityIndicator],
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentTelephone] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
	ON s.[StudentUSI] = a.[StudentUSI]
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationTelephone',
'edfi', 'TelephoneNumberTypeDescriptor',
'edfi', 'TelephoneNumberType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTelephone]
ALTER COLUMN [TelephoneNumberTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTelephone]
DROP COLUMN [TelephoneNumberTypeId]
GO



