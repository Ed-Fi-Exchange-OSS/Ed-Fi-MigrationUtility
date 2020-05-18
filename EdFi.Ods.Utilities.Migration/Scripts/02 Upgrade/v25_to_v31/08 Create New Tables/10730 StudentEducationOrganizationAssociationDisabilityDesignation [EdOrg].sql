-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation]
(
[DisabilityDescriptorId] [int] NOT NULL,
[DisabilityCategoryTypeId] [int] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO
INSERT [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation]
(
[DisabilityDescriptorId],
[DisabilityCategoryTypeId],
[EducationOrganizationId],
[StudentUSI],
[CreateDate]
)
SELECT 
s.[DisabilityDescriptorId],
d.[DisabilityCategoryTypeId],
a.[EducationOrganizationId],
s.[StudentUSI],
GETDATE()
FROM [edfi].[StudentDisability] s
INNER JOIN [edfi].[DisabilityDescriptor] d
	ON s.[DisabilityDescriptorId] = d.[DisabilityDescriptorId]
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
	ON s.[StudentUSI] = a.[StudentUSI]
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationDisabilityDesignation',
'edfi', 'DisabilityDesignationDescriptor',
'edfi', 'DisabilityCategoryType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation]
ALTER COLUMN [DisabilityDesignationDescriptorId] INT NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation]
DROP COLUMN [DisabilityCategoryTypeId] 
GO



