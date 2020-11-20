-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationDisability]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationDisability]
(
[DisabilityDescriptorId] [int] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[DisabilityDiagnosis] [nvarchar] (80) NULL,
[OrderOfDisability] [int] NULL,
[DisabilityDeterminationSourceTypeId] [int] NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationDisability]
(
[DisabilityDescriptorId],
[EducationOrganizationId],
[StudentUSI],
[DisabilityDiagnosis],
[OrderOfDisability],
[DisabilityDeterminationSourceTypeId],
[CreateDate]
)
SELECT
s.[DisabilityDescriptorId],
a.[EducationOrganizationId],
s.[StudentUSI],
s.[DisabilityDiagnosis],
s.[OrderOfDisability],
s.[DisabilityDeterminationSourceTypeId],
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentDisability] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
	ON s.[StudentUSI] = a.[StudentUSI]
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationDisability',
'edfi', 'DisabilityDeterminationSourceTypeDescriptor',
'edfi', 'DisabilityDeterminationSourceType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisability]
DROP COLUMN [DisabilityDeterminationSourceTypeId]
GO


