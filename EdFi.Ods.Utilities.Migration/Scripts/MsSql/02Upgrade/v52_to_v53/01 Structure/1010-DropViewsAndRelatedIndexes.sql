DROP VIEW [auth].[CommunityOrganizationIdToCommunityProviderId];

GO
DROP VIEW [auth].[CommunityOrganizationIdToEducationOrganizationId];


GO
PRINT N'Dropping View [auth].[CommunityProviderIdToEducationOrganizationId]...';


GO
DROP VIEW [auth].[CommunityProviderIdToEducationOrganizationId];


GO
PRINT N'Dropping View [auth].[CommunityProviderIdToStaffUSI]...';


GO
DROP VIEW [auth].[CommunityProviderIdToStaffUSI];


GO
PRINT N'Dropping View [auth].[EducationOrganizationIdToEducationServiceCenterId]...';


GO
DROP VIEW [auth].[EducationOrganizationIdToEducationServiceCenterId];


GO
PRINT N'Dropping View [auth].[EducationOrganizationIdToStateAgencyId]...';


GO
DROP VIEW [auth].[EducationOrganizationIdToStateAgencyId];


GO
PRINT N'Dropping View [auth].[EducationOrganizationIdToLocalEducationAgencyId]...';


GO
DROP VIEW [auth].[EducationOrganizationIdToLocalEducationAgencyId];


GO
PRINT N'Dropping View [auth].[EducationOrganizationIdToPostSecondaryInstitutionId]...';


GO
DROP VIEW [auth].[EducationOrganizationIdToPostSecondaryInstitutionId];


GO
PRINT N'Dropping View [auth].[EducationOrganizationIdToSchoolId]...';


GO
DROP VIEW [auth].[EducationOrganizationIdToSchoolId];


GO
PRINT N'Dropping View [auth].[LocalEducationAgencyIdToStaffUSI]...';


GO
DROP VIEW [auth].[LocalEducationAgencyIdToStaffUSI];


GO
PRINT N'Dropping View [auth].[PostSecondaryInstitutionIdToStaffUSI]...';


GO
DROP VIEW [auth].[PostSecondaryInstitutionIdToStaffUSI];


GO
PRINT N'Dropping Index [auth].[EducationOrganizationToStaffUSI_Employment].[UCIX_EducationOrganizationToStaffUSI_Employment]...';


GO
DROP INDEX [UCIX_EducationOrganizationToStaffUSI_Employment]
    ON [auth].[EducationOrganizationToStaffUSI_Employment];


GO
PRINT N'Dropping View [auth].[EducationOrganizationToStaffUSI_Employment]...';


GO
DROP VIEW [auth].[EducationOrganizationToStaffUSI_Employment];


GO
PRINT N'Dropping Index [auth].[LocalEducationAgency].[IX_LocalEducationAgency_LocalEducationAgencyId]...';


GO
DROP INDEX [IX_LocalEducationAgency_LocalEducationAgencyId]
    ON [auth].[LocalEducationAgency];


GO
PRINT N'Dropping Index [auth].[LocalEducationAgency].[UCIX_LocalEducationAgency]...';


GO
DROP INDEX [UCIX_LocalEducationAgency]
    ON [auth].[LocalEducationAgency];


GO
PRINT N'Dropping View [auth].[LocalEducationAgency]...';


GO
DROP VIEW [auth].[LocalEducationAgency];


GO
PRINT N'Dropping View [auth].[LocalEducationAgencyIdToOrganizationDepartmentId]...';


GO
DROP VIEW [auth].[LocalEducationAgencyIdToOrganizationDepartmentId];


GO
PRINT N'Dropping Index [auth].[LocalEducationAgencyIdToParentUSI].[UCIX_LocalEducationAgencyIdToParentUSI]...';


GO
DROP INDEX [UCIX_LocalEducationAgencyIdToParentUSI]
    ON [auth].[LocalEducationAgencyIdToParentUSI];


GO
PRINT N'Dropping View [auth].[LocalEducationAgencyIdToParentUSI]...';


GO
DROP VIEW [auth].[LocalEducationAgencyIdToParentUSI];


GO
PRINT N'Dropping View [auth].[LocalEducationAgencyIdToSchoolId]...';


GO
DROP VIEW [auth].[LocalEducationAgencyIdToSchoolId];


GO
PRINT N'Dropping Index [auth].[LocalEducationAgencyIdToStudentUSI].[UCIX_LocalEducationAgencyToStudentUSI]...';


GO
DROP INDEX [UCIX_LocalEducationAgencyToStudentUSI]
    ON [auth].[LocalEducationAgencyIdToStudentUSI];


GO
PRINT N'Dropping View [auth].[LocalEducationAgencyIdToStudentUSI]...';


GO
DROP VIEW [auth].[LocalEducationAgencyIdToStudentUSI];


GO
PRINT N'Dropping View [auth].[LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation]...';


GO
DROP VIEW [auth].[LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation];


GO
PRINT N'Dropping View [auth].[OrganizationDepartmentIdToSchoolId]...';


GO
DROP VIEW [auth].[OrganizationDepartmentIdToSchoolId];


GO
PRINT N'Dropping View [auth].[ParentUSIToSchoolId]...';


GO
DROP VIEW [auth].[ParentUSIToSchoolId];


GO
PRINT N'Dropping Index [auth].[ParentUSIToStudentUSI].[IX_ParentUSIToStudentUSI]...';


GO
DROP INDEX [IX_ParentUSIToStudentUSI]
    ON [auth].[ParentUSIToStudentUSI];


GO
PRINT N'Dropping Index [auth].[ParentUSIToStudentUSI].[UCIX_ParentUSIToStudentUSI]...';


GO
DROP INDEX [UCIX_ParentUSIToStudentUSI]
    ON [auth].[ParentUSIToStudentUSI];


GO
PRINT N'Dropping View [auth].[ParentUSIToStudentUSI]...';


GO
DROP VIEW [auth].[ParentUSIToStudentUSI];


GO
PRINT N'Dropping Index [auth].[School].[IX_School_LocalEducationAgencyId]...';


GO
DROP INDEX [IX_School_LocalEducationAgencyId]
    ON [auth].[School];


GO
PRINT N'Dropping Index [auth].[School].[IX_School_SchoolId]...';


GO
DROP INDEX [IX_School_SchoolId]
    ON [auth].[School];


GO
PRINT N'Dropping Index [auth].[School].[UCIX_School]...';


GO
DROP INDEX [UCIX_School]
    ON [auth].[School];


GO
PRINT N'Dropping View [auth].[School]...';


GO
DROP VIEW [auth].[School];


GO
PRINT N'Dropping View [auth].[SchoolIdToStaffUSI]...';


GO
DROP VIEW [auth].[SchoolIdToStaffUSI];


GO
PRINT N'Dropping Index [auth].[SchoolIdToStudentUSI].[UCIX_SchoolIdToStudentUSI]...';


GO
DROP INDEX [UCIX_SchoolIdToStudentUSI]
    ON [auth].[SchoolIdToStudentUSI];


GO
PRINT N'Dropping View [auth].[SchoolIdToStudentUSI]...';


GO
DROP VIEW [auth].[SchoolIdToStudentUSI];


GO
PRINT N'Dropping View [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation]...';


GO
DROP VIEW [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation];


GO
PRINT N'Dropping View [auth].[EducationOrganizationIdentifiers]...';


GO
DROP VIEW [auth].[EducationOrganizationIdentifiers];


GO
PRINT N'Dropping Index [auth].[EducationOrganizationToStaffUSI_Assignment].[UCIX_EducationOrganizationToStaffUSI_Assignment]...';


GO
DROP INDEX [UCIX_EducationOrganizationToStaffUSI_Assignment]
    ON [auth].[EducationOrganizationToStaffUSI_Assignment];


GO
PRINT N'Dropping View [auth].[EducationOrganizationToStaffUSI_Assignment]...';


GO
DROP VIEW [auth].[EducationOrganizationToStaffUSI_Assignment];


GO
PRINT N'Update complete.';


GO
