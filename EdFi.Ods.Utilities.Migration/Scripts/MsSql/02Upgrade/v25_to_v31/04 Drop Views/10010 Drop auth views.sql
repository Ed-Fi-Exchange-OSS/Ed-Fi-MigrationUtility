-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping auth views'
GO

PRINT N'Dropping [auth].[EducationOrganizationToStaff_Assignment]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationToStaff_Assignment]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationToStaff_Assignment]
GO

PRINT N'Dropping [auth].[EducationOrganizationToStaff_Employment]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationToStaff_Employment]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationToStaff_Employment]
GO

PRINT N'Dropping [auth].[EducationOrganizationToStaffUSI_Assignment]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationToStaffUSI_Assignment]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationToStaffUSI_Assignment]
GO

PRINT N'Dropping [auth].[EducationOrganizationToStaffUSI_Employment]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationToStaffUSI_Employment]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationToStaffUSI_Employment]
GO

PRINT N'Dropping [auth].[LocalEducationAgency]'
GO
IF OBJECT_ID(N'[auth].[LocalEducationAgency]', 'V') IS NOT NULL
DROP VIEW [auth].[LocalEducationAgency]
GO

PRINT N'Dropping [auth].[LocalEducationAgencyIdToParent]'
GO
IF OBJECT_ID(N'[auth].[LocalEducationAgencyIdToParent]', 'V') IS NOT NULL
DROP VIEW [auth].[LocalEducationAgencyIdToParent]
GO

PRINT N'Dropping [auth].[LocalEducationAgencyIdToParentUSI]'
GO
IF OBJECT_ID(N'[auth].[LocalEducationAgencyIdToParentUSI]', 'V') IS NOT NULL
DROP VIEW [auth].[LocalEducationAgencyIdToParentUSI]
GO

PRINT N'Dropping [auth].[LocalEducationAgencyIdToSchoolGuid]'
GO
IF OBJECT_ID(N'[auth].[LocalEducationAgencyIdToSchoolGuid]', 'V') IS NOT NULL
DROP VIEW [auth].[LocalEducationAgencyIdToSchoolGuid]
GO

PRINT N'Dropping [auth].[LocalEducationAgencyIdToSchoolId]'
GO
IF OBJECT_ID(N'[auth].[LocalEducationAgencyIdToSchoolId]', 'V') IS NOT NULL
DROP VIEW [auth].[LocalEducationAgencyIdToSchoolId]
GO

PRINT N'Dropping [auth].[LocalEducationAgencyIdToStaff]'
GO
IF OBJECT_ID(N'[auth].[LocalEducationAgencyIdToStaff]', 'V') IS NOT NULL
DROP VIEW [auth].[LocalEducationAgencyIdToStaff]
GO

PRINT N'Dropping [auth].[LocalEducationAgencyIdToStaffUSI]'
GO
IF OBJECT_ID(N'[auth].[LocalEducationAgencyIdToStaffUSI]', 'V') IS NOT NULL
DROP VIEW [auth].[LocalEducationAgencyIdToStaffUSI]
GO

PRINT N'Dropping [auth].[LocalEducationAgencyIdToStudent]'
GO
IF OBJECT_ID(N'[auth].[LocalEducationAgencyIdToStudent]', 'V') IS NOT NULL
DROP VIEW [auth].[LocalEducationAgencyIdToStudent]
GO

PRINT N'Dropping [auth].[LocalEducationAgencyIdToStudentUSI]'
GO
IF OBJECT_ID(N'[auth].[LocalEducationAgencyIdToStudentUSI]', 'V') IS NOT NULL
DROP VIEW [auth].[LocalEducationAgencyIdToStudentUSI]
GO

PRINT N'Dropping [auth].[ParentToStudent]'
GO
IF OBJECT_ID(N'[auth].[ParentToStudent]', 'V') IS NOT NULL
DROP VIEW [auth].[ParentToStudent]
GO

PRINT N'Dropping [auth].[ParentUSIToStudentUSI]'
GO
IF OBJECT_ID(N'[auth].[ParentUSIToStudentUSI]', 'V') IS NOT NULL
DROP VIEW [auth].[ParentUSIToStudentUSI]
GO

PRINT N'Dropping [auth].[School]'
GO
IF OBJECT_ID(N'[auth].[School]', 'V') IS NOT NULL
DROP VIEW [auth].[School]
GO

PRINT N'Dropping [auth].[SchoolIdToStaff]'
GO
IF OBJECT_ID(N'[auth].[SchoolIdToStaff]', 'V') IS NOT NULL
DROP VIEW [auth].[SchoolIdToStaff]
GO

PRINT N'Dropping [auth].[SchoolIdToStaffUSI]'
GO
IF OBJECT_ID(N'[auth].[SchoolIdToStaffUSI]', 'V') IS NOT NULL
DROP VIEW [auth].[SchoolIdToStaffUSI]
GO

PRINT N'Dropping [auth].[SchoolIdToStudent]'
GO
IF OBJECT_ID(N'[auth].[SchoolIdToStudent]', 'V') IS NOT NULL
DROP VIEW [auth].[SchoolIdToStudent]
GO

PRINT N'Dropping [auth].[SchoolIdToStudentUSI]'
GO
IF OBJECT_ID(N'[auth].[SchoolIdToStudentUSI]', 'V') IS NOT NULL
DROP VIEW [auth].[SchoolIdToStudentUSI]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdToStaffUSI]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdToStaffUSI]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdToStaffUSI]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdToStudentUSI]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdToStudentUSI]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdToStudentUSI]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdentifiers]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdentifiers]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdentifiers]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdToSchoolId]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdToSchoolId]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdToSchoolId]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdToLocalEducationAgencyId]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdToLocalEducationAgencyId]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdToLocalEducationAgencyId]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdToEducationServiceCenterId]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdToEducationServiceCenterId]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdToEducationServiceCenterId]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdToStateAgencyId]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdToStateAgencyId]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdToStateAgencyId]
GO

PRINT N'Dropping [auth].[ParentToSchoolId]'
GO
IF OBJECT_ID(N'[auth].[ParentToSchoolId]', 'V') IS NOT NULL
DROP VIEW [auth].[ParentToSchoolId]
GO

PRINT N'Dropping [auth].[ParentUSIToSchoolId]'
GO
IF OBJECT_ID(N'[auth].[ParentUSIToSchoolId]', 'V') IS NOT NULL
DROP VIEW [auth].[ParentUSIToSchoolId]
GO

PRINT N'Dropping [auth].[LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation]'
GO
IF OBJECT_ID(N'[auth].[LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation]', 'V') IS NOT NULL
DROP VIEW [auth].[LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation]
GO

PRINT N'Dropping [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation]'
GO
IF OBJECT_ID(N'[auth].[SchoolIdToStudentUSIThroughEdOrgAssociation]', 'V') IS NOT NULL
DROP VIEW [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdentifiers]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdentifiers]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdentifiers]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdToCommunityOrganizationId]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdToCommunityOrganizationId]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdToCommunityOrganizationId]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdToCommunityProviderId]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdToCommunityProviderId]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdToCommunityProviderId]
GO

PRINT N'Dropping [auth].[CommunityOrganizationIdToCommunityProviderId]'
GO
IF OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]', 'V') IS NOT NULL
DROP VIEW [auth].[CommunityOrganizationIdToCommunityProviderId]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdentifiers]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdentifiers]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdentifiers]
GO

PRINT N'Dropping [auth].[AssessmentItemToAssessment]'
GO
IF OBJECT_ID(N'[auth].[AssessmentItemToAssessment]', 'V') IS NOT NULL
DROP VIEW [auth].[AssessmentItemToAssessment]
GO

PRINT N'Dropping [auth].[ObjectiveAssessmentToAssessment]'
GO
IF OBJECT_ID(N'[auth].[ObjectiveAssessmentToAssessment]', 'V') IS NOT NULL
DROP VIEW [auth].[ObjectiveAssessmentToAssessment]
GO

PRINT N'Dropping [auth].[StudentAssessmentToAssessment]'
GO
IF OBJECT_ID(N'[auth].[StudentAssessmentToAssessment]', 'V') IS NOT NULL
DROP VIEW [auth].[StudentAssessmentToAssessment]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdToPostSecondaryInstitutionId]'
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdToPostSecondaryInstitutionId]', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdToPostSecondaryInstitutionId]
GO

PRINT N'Dropping [auth].[EducationOrganizationIdentifiers] '
GO
IF OBJECT_ID(N'[auth].[EducationOrganizationIdentifiers] ', 'V') IS NOT NULL
DROP VIEW [auth].[EducationOrganizationIdentifiers] 
GO

PRINT N'Dropping [auth].[AssessmentToAssessmentFamily]'
GO
IF OBJECT_ID(N'[auth].[AssessmentToAssessmentFamily]', 'V') IS NOT NULL
DROP VIEW [auth].[AssessmentToAssessmentFamily]
GO

PRINT N'Dropping [auth].[ParentUniqueIdToSchoolIdId]'
GO
IF OBJECT_ID(N'[auth].[ParentUniqueIdToSchoolIdId]', 'SN') IS NOT NULL
DROP SYNONYM [auth].[ParentUniqueIdToSchoolIdId]
GO

PRINT N'Dropping [auth].[ParentGuidToSchoolIdId]'
GO
IF OBJECT_ID(N'[auth].[ParentGuidToSchoolIdId]', 'SN') IS NOT NULL
DROP SYNONYM [auth].[ParentGuidToSchoolIdId]
GO

