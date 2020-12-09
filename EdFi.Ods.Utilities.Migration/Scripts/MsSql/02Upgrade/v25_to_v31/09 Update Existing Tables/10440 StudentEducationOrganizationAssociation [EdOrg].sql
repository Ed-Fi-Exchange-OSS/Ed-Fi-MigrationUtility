-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StudentEducationOrganizationAssociation]'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation]
ADD
[SexTypeId] [int] NULL,
[ProfileThumbnail] [nvarchar] (255) NULL,
[HispanicLatinoEthnicity] [bit] NULL,
[OldEthnicityTypeId] [int] NULL,
[LimitedEnglishProficiencyDescriptorId] [int] NULL,
[LoginId] [nvarchar] (60) NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation]
DROP COLUMN [ResponsibilityDescriptorId]
GO

UPDATE [edfi].[StudentEducationOrganizationAssociation]
SET [SexTypeId] = s.[SexTypeId],
[ProfileThumbnail] = s.[ProfileThumbnail],
[HispanicLatinoEthnicity] = s.[HispanicLatinoEthnicity],
[OldEthnicityTypeId] = s.[OldEthnicityTypeId],
[LimitedEnglishProficiencyDescriptorId] = s.[LimitedEnglishProficiencyDescriptorId],
[LoginId] = s.[LoginId]
FROM [edfi].[StudentEducationOrganizationAssociation] e
INNER JOIN [edfi].[Student] s
ON e.[StudentUSI] = s.[StudentUSI]
GO

INSERT [edfi].[StudentEducationOrganizationAssociation]
([EducationOrganizationId]
,[StudentUSI]
,[SexTypeId]
,[ProfileThumbnail]
,[HispanicLatinoEthnicity]
,[OldEthnicityTypeId]
,[LimitedEnglishProficiencyDescriptorId]
,[LoginId]
,[CreateDate]
,[LastModifiedDate]
,[Id])
SELECT
allStudentEdOrgs.[EducationOrganizationId]
,allStudentEdOrgs.[StudentUSI]
,s.[SexTypeId]
,s.[ProfileThumbnail]
,s.[HispanicLatinoEthnicity]
,s.[OldEthnicityTypeId]
,s.[LimitedEnglishProficiencyDescriptorId]
,s.[LoginId]
,GETDATE()
,GETDATE()
,NEWID()
FROM [edfi].[Student] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] allStudentEdOrgs
ON s.[StudentUSI] = allStudentEdOrgs.[StudentUSI]
WHERE NOT EXISTS 
(
	SELECT 1 FROM [edfi].[StudentEducationOrganizationAssociation] currentStudentEdOrgs
	WHERE currentStudentEdOrgs.[StudentUSI] = allStudentEdOrgs.[StudentUSI]
	AND currentStudentEdOrgs.[EducationOrganizationId] = allStudentEdOrgs.[EducationOrganizationId]
)
GO

;WITH [StudentEducationOrganizationAssociationKey] AS 
(
SELECT 
	[EducationOrganizationId],
	[StudentUSI],
	ROW_NUMBER() OVER
	(
		PARTITION BY [EducationOrganizationId], [StudentUSI]
		ORDER BY [EducationOrganizationId], [StudentUSI], [CreateDate]
	) AS [StudentKeyNumber]
	FROM [edfi].[StudentEducationOrganizationAssociation]
)
DELETE FROM [StudentEducationOrganizationAssociationKey] 
WHERE [StudentKeyNumber] > 1
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociation',
'edfi', 'SexDescriptor',
'edfi', 'SexType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociation',
'edfi', 'OldEthnicityDescriptor',
'edfi', 'OldEthnicityType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation]
ALTER COLUMN [SexDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP COLUMN
[SexTypeId],
[OldEthnicityTypeId]
GO