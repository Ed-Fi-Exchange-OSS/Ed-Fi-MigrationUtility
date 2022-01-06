DROP VIEW auth.CommunityOrganizationIdToCommunityProviderId;


DROP VIEW auth.CommunityOrganizationIdToEducationOrganizationId;



DROP VIEW auth.CommunityProviderIdToEducationOrganizationId;



DROP VIEW auth.CommunityProviderIdToStaffUSI;



DROP VIEW auth.EducationOrganizationIdToEducationServiceCenterId;



DROP VIEW auth.EducationOrganizationIdToStateAgencyId;



DROP VIEW auth.EducationOrganizationIdToLocalEducationAgencyId;



DROP VIEW auth.EducationOrganizationIdToPostSecondaryInstitutionId;



DROP VIEW auth.EducationOrganizationIdToSchoolId;



DROP VIEW auth.LocalEducationAgencyIdToStaffUSI;



DROP VIEW auth.PostSecondaryInstitutionIdToStaffUSI;



DROP INDEX UCIX_EducationOrganizationToStaffUSI_Employment
    ON auth.EducationOrganizationToStaffUSI_Employment;



DROP VIEW auth.EducationOrganizationToStaffUSI_Employment;



DROP INDEX IX_LocalEducationAgency_LocalEducationAgencyId
    ON auth.LocalEducationAgency;



DROP INDEX UCIX_LocalEducationAgency
    ON auth.LocalEducationAgency;



DROP VIEW auth.LocalEducationAgency;



DROP VIEW auth.LocalEducationAgencyIdToOrganizationDepartmentId;



DROP INDEX UCIX_LocalEducationAgencyIdToParentUSI
    ON auth.LocalEducationAgencyIdToParentUSI;



DROP VIEW auth.LocalEducationAgencyIdToParentUSI;



DROP VIEW auth.LocalEducationAgencyIdToSchoolId;



DROP INDEX UCIX_LocalEducationAgencyToStudentUSI
    ON auth.LocalEducationAgencyIdToStudentUSI;



DROP VIEW auth.LocalEducationAgencyIdToStudentUSI;



DROP VIEW auth.LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation;



DROP VIEW auth.OrganizationDepartmentIdToSchoolId;



DROP VIEW auth.ParentUSIToSchoolId;



DROP INDEX IX_ParentUSIToStudentUSI
    ON auth.ParentUSIToStudentUSI;



DROP INDEX UCIX_ParentUSIToStudentUSI
    ON auth.ParentUSIToStudentUSI;



DROP VIEW auth.ParentUSIToStudentUSI;



DROP INDEX IX_School_LocalEducationAgencyId
    ON auth.School;



DROP INDEX IX_School_SchoolId
    ON auth.School;



DROP INDEX UCIX_School
    ON auth.School;



DROP VIEW auth.School;



DROP VIEW auth.SchoolIdToStaffUSI;



DROP INDEX UCIX_SchoolIdToStudentUSI
    ON auth.SchoolIdToStudentUSI;



DROP VIEW auth.SchoolIdToStudentUSI;



DROP VIEW auth.SchoolIdToStudentUSIThroughEdOrgAssociation;



DROP VIEW auth.EducationOrganizationIdentifiers;



DROP INDEX UCIX_EducationOrganizationToStaffUSI_Assignment
    ON auth.EducationOrganizationToStaffUSI_Assignment;



DROP VIEW auth.EducationOrganizationToStaffUSI_Assignment;
