-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[Student]'
GO

IF EXISTS (SELECT 1 FROM [edfi].[Student] WHERE [EconomicDisadvantaged] IS NOT NULL)
BEGIN
	PRINT N'Warning: [edfi].[Student]: EconomicDisadvantaged status is not directly upgradable.  This column will be dropped during upgrade.  Data will be backed up to [v2_to_v3_deprecated].[Student] before proceeding.'
END

IF EXISTS (SELECT 1 FROM [edfi].[Student] WHERE [SchoolFoodServicesEligibilityDescriptorId] IS NOT NULL)
BEGIN
	PRINT N'Warning: [edfi].[Student]: SchoolFoodServicesEligibility status is not directly upgradable. This column will be dropped during upgrade.  Data will be backed up to [v2_to_v3_deprecated].[Student] before proceeding.'
END

IF EXISTS (SELECT 1 FROM [edfi].[Student] WHERE [DisplacementStatus] IS NOT NULL)
BEGIN
	PRINT N'Warning: [edfi].[Student]: Displacement status is not directly upgradable.  This column will be dropped during upgrade.  Data will be backed up to [v2_to_v3_deprecated].[Student] before proceeding.'
END

SELECT
[SexTypeId],
[BirthStateAbbreviationTypeId],
[CitizenshipStatusTypeId],
[OldEthnicityTypeId],
[EconomicDisadvantaged],
[SchoolFoodServicesEligibilityDescriptorId],
[LimitedEnglishProficiencyDescriptorId],
[DisplacementStatus],
[ProfileThumbnail],
[HispanicLatinoEthnicity],
[LoginId]
INTO [v2_to_v3_deprecated].[Student]
FROM [edfi].[Student]

ALTER TABLE [edfi].[Student]
ADD [BirthSexDescriptorId] [int] NULL
GO

PRINT N'Converting types to descriptors on [edfi].[Student]'
GO
	
EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Student',
'edfi', 'StateAbbreviationDescriptor',
'edfi', 'StateAbbreviationType',
'BirthStateAbbreviationTypeId', 'BirthStateAbbreviationDescriptorId'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Student',
'edfi', 'CitizenshipStatusDescriptor',
'edfi', 'CitizenshipStatusType'
GO

ALTER TABLE [edfi].[Student] DROP COLUMN
[SexTypeId],
[BirthStateAbbreviationTypeId],
[CitizenshipStatusTypeId],
[OldEthnicityTypeId],
[EconomicDisadvantaged],
[SchoolFoodServicesEligibilityDescriptorId],
[LimitedEnglishProficiencyDescriptorId],
[DisplacementStatus],
[ProfileThumbnail],
[HispanicLatinoEthnicity],
[LoginId]
GO