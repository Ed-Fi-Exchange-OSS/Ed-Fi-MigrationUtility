DROP VIEW [auth].[CommunityOrganizationIdToCommunityProviderId];

GO
DROP VIEW [auth].[CommunityOrganizationIdToEducationOrganizationId];


GO

DROP VIEW [auth].[CommunityProviderIdToEducationOrganizationId];


GO

DROP VIEW [auth].[CommunityProviderIdToStaffUSI];


GO

DROP VIEW [auth].[EducationOrganizationIdToEducationServiceCenterId];


GO

DROP VIEW [auth].[EducationOrganizationIdToStateAgencyId];


GO

DROP VIEW [auth].[EducationOrganizationIdToLocalEducationAgencyId];


GO

DROP VIEW [auth].[EducationOrganizationIdToPostSecondaryInstitutionId];


GO

DROP VIEW [auth].[EducationOrganizationIdToSchoolId];


GO

DROP VIEW [auth].[LocalEducationAgencyIdToStaffUSI];


GO

DROP VIEW [auth].[PostSecondaryInstitutionIdToStaffUSI];


GO

DROP INDEX [UCIX_EducationOrganizationToStaffUSI_Employment]
    ON [auth].[EducationOrganizationToStaffUSI_Employment];


GO

DROP VIEW [auth].[EducationOrganizationToStaffUSI_Employment];


GO

DROP INDEX [IX_LocalEducationAgency_LocalEducationAgencyId]
    ON [auth].[LocalEducationAgency];


GO

DROP INDEX [UCIX_LocalEducationAgency]
    ON [auth].[LocalEducationAgency];


GO

DROP VIEW [auth].[LocalEducationAgency];


GO

DROP VIEW [auth].[LocalEducationAgencyIdToOrganizationDepartmentId];


GO

DROP INDEX [UCIX_LocalEducationAgencyIdToParentUSI]
    ON [auth].[LocalEducationAgencyIdToParentUSI];


GO

DROP VIEW [auth].[LocalEducationAgencyIdToParentUSI];


GO

DROP VIEW [auth].[LocalEducationAgencyIdToSchoolId];


GO

DROP INDEX [UCIX_LocalEducationAgencyToStudentUSI]
    ON [auth].[LocalEducationAgencyIdToStudentUSI];


GO

DROP VIEW [auth].[LocalEducationAgencyIdToStudentUSI];


GO

DROP VIEW [auth].[LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation];


GO

DROP VIEW [auth].[OrganizationDepartmentIdToSchoolId];


GO

DROP VIEW [auth].[ParentUSIToSchoolId];


GO

DROP INDEX [IX_ParentUSIToStudentUSI]
    ON [auth].[ParentUSIToStudentUSI];


GO

DROP INDEX [UCIX_ParentUSIToStudentUSI]
    ON [auth].[ParentUSIToStudentUSI];


GO

DROP VIEW [auth].[ParentUSIToStudentUSI];


GO

DROP INDEX [IX_School_LocalEducationAgencyId]
    ON [auth].[School];


GO

DROP INDEX [IX_School_SchoolId]
    ON [auth].[School];


GO

DROP INDEX [UCIX_School]
    ON [auth].[School];


GO

DROP VIEW [auth].[School];


GO

DROP VIEW [auth].[SchoolIdToStaffUSI];


GO

DROP INDEX [UCIX_SchoolIdToStudentUSI]
    ON [auth].[SchoolIdToStudentUSI];


GO

DROP VIEW [auth].[SchoolIdToStudentUSI];


GO

DROP VIEW [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation];


GO

DROP VIEW [auth].[EducationOrganizationIdentifiers];


GO

DROP INDEX [UCIX_EducationOrganizationToStaffUSI_Assignment]
    ON [auth].[EducationOrganizationToStaffUSI_Assignment];


GO

DROP VIEW [auth].[EducationOrganizationToStaffUSI_Assignment];


GO
