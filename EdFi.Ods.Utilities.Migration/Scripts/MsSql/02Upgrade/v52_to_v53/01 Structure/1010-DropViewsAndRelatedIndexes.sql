IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
	DROP VIEW [auth].[CommunityOrganizationIdToCommunityProviderId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToEducationOrganizationId]'))
DROP VIEW [auth].[CommunityOrganizationIdToEducationOrganizationId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityProviderIdToEducationOrganizationId]'))
DROP VIEW [auth].[CommunityProviderIdToEducationOrganizationId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityProviderIdToStaffUSI]'))
DROP VIEW [auth].[CommunityProviderIdToStaffUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationIdToEducationServiceCenterId]'))
DROP VIEW [auth].[EducationOrganizationIdToEducationServiceCenterId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationIdToStateAgencyId]'))
DROP VIEW [auth].[EducationOrganizationIdToStateAgencyId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationIdToLocalEducationAgencyId]'))
DROP VIEW [auth].[EducationOrganizationIdToLocalEducationAgencyId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationIdToPostSecondaryInstitutionId]'))
DROP VIEW [auth].[EducationOrganizationIdToPostSecondaryInstitutionId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationIdToSchoolId]'))
DROP VIEW [auth].[EducationOrganizationIdToSchoolId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[LocalEducationAgencyIdToStaffUSI]'))
DROP VIEW [auth].[LocalEducationAgencyIdToStaffUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[PostSecondaryInstitutionIdToStaffUSI]'))
DROP VIEW [auth].[PostSecondaryInstitutionIdToStaffUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [UCIX_EducationOrganizationToStaffUSI_Employment]
    ON [auth].[EducationOrganizationToStaffUSI_Employment];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationToStaffUSI_Employment]'))
DROP VIEW [auth].[EducationOrganizationToStaffUSI_Employment];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [IX_LocalEducationAgency_LocalEducationAgencyId]
    ON [auth].[LocalEducationAgency];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [UCIX_LocalEducationAgency]
    ON [auth].[LocalEducationAgency];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[LocalEducationAgency]'))
DROP VIEW [auth].[LocalEducationAgency];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[LocalEducationAgencyIdToOrganizationDepartmentId]'))
DROP VIEW [auth].[LocalEducationAgencyIdToOrganizationDepartmentId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [UCIX_LocalEducationAgencyIdToParentUSI]
    ON [auth].[LocalEducationAgencyIdToParentUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[LocalEducationAgencyIdToParentUSI]'))
DROP VIEW [auth].[LocalEducationAgencyIdToParentUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[LocalEducationAgencyIdToSchoolId]'))
DROP VIEW [auth].[LocalEducationAgencyIdToSchoolId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [UCIX_LocalEducationAgencyToStudentUSI]
    ON [auth].[LocalEducationAgencyIdToStudentUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[LocalEducationAgencyIdToStudentUSI]'))
DROP VIEW [auth].[LocalEducationAgencyIdToStudentUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation]'))
DROP VIEW [auth].[LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[OrganizationDepartmentIdToSchoolId]'))
DROP VIEW [auth].[OrganizationDepartmentIdToSchoolId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[ParentUSIToSchoolId]'))
DROP VIEW [auth].[ParentUSIToSchoolId];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [IX_ParentUSIToStudentUSI]
    ON [auth].[ParentUSIToStudentUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [UCIX_ParentUSIToStudentUSI]
    ON [auth].[ParentUSIToStudentUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[ParentUSIToStudentUSI]'))
DROP VIEW [auth].[ParentUSIToStudentUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [IX_School_LocalEducationAgencyId]
    ON [auth].[School];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [IX_School_SchoolId]
    ON [auth].[School];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [UCIX_School]
    ON [auth].[School];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[School]'))
DROP VIEW [auth].[School];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[SchoolIdToStaffUSI]'))
DROP VIEW [auth].[SchoolIdToStaffUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [UCIX_SchoolIdToStudentUSI]
    ON [auth].[SchoolIdToStudentUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[SchoolIdToStudentUSI]'))
DROP VIEW [auth].[SchoolIdToStudentUSI];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[SchoolIdToStudentUSIThroughEdOrgAssociation]'))
DROP VIEW [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationIdentifiers]'))
DROP VIEW [auth].[EducationOrganizationIdentifiers];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
DROP INDEX [UCIX_EducationOrganizationToStaffUSI_Assignment]
    ON [auth].[EducationOrganizationToStaffUSI_Assignment];
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationToStaffUSI_Assignment]'))
DROP VIEW [auth].[EducationOrganizationToStaffUSI_Assignment];
GO
