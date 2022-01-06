-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE OR ALTER VIEW [auth].[LocalEducationAgencyIdToOrganizationDepartmentId]
AS
    SELECT  LocalEducationAgencyId, OrganizationDepartmentId
    FROM    edfi.LocalEducationAgency lea
        INNER JOIN edfi.OrganizationDepartment od
            ON lea.LocalEducationAgencyId = od.ParentEducationOrganizationId

    UNION

    SELECT  LocalEducationAgencyId, OrganizationDepartmentId
    FROM    edfi.School sch
        INNER JOIN edfi.OrganizationDepartment od
            ON sch.SchoolId = od.ParentEducationOrganizationId
GO

CREATE OR ALTER VIEW [auth].[OrganizationDepartmentIdToSchoolId]
AS
    SELECT  SchoolId, OrganizationDepartmentId
    FROM    edfi.School sch
        INNER JOIN edfi.OrganizationDepartment od
            ON sch.SchoolId = od.ParentEducationOrganizationId
GO


-- ALTER VIEW auth.educationorganizationidentifiers;
CREATE OR ALTER VIEW [auth].[EducationOrganizationIdentifiers]
AS
-- NOTE: Multiple results for a single Education Organization are possible if they are a part of multiple Education Organization Networks
SELECT
    edorg.EducationOrganizationId,
    CASE
        WHEN sea.StateEducationAgencyId IS NOT NULL THEN N'StateEducationAgency'
        WHEN esc.EducationServiceCenterId IS NOT NULL THEN N'EducationServiceCenter'
        WHEN lea.LocalEducationAgencyId IS NOT NULL THEN N'LocalEducationAgency'
        WHEN sch.SchoolId IS NOT NULL THEN N'School'
        WHEN co.CommunityOrganizationId IS NOT NULL THEN N'CommunityOrganization'
        WHEN cp.CommunityProviderId IS NOT NULL THEN N'CommunityProvider'
        WHEN co.CommunityOrganizationId IS NOT NULL THEN N'CommunityOrganization'
        WHEN psi.PostSecondaryInstitutionId IS NOT NULL THEN N'PostSecondaryInstitution'
        WHEN od.OrganizationDepartmentId IS NOT NULL THEN N'OrganizationDepartment'
    END AS EducationOrganizationType,
    COALESCE(sea.StateEducationAgencyId, esc.StateEducationAgencyId, lea.StateEducationAgencyId, lea_sch.StateEducationAgencyId) AS StateEducationAgencyId, 
    COALESCE(esc.EducationServiceCenterId, lea.EducationServiceCenterId, lea_sch.EducationServiceCenterId) AS EducationServiceCenterId,
    COALESCE(lea.LocalEducationAgencyId, sch.LocalEducationAgencyId) AS LocalEducationAgencyId,
    COALESCE(co.CommunityOrganizationID, cp.CommunityOrganizationId) AS CommunityOrganizationId, 
    cp.CommunityProviderId,
    psi.PostSecondaryInstitutionId,
	od.OrganizationDepartmentId,
    sch.SchoolId,
    edorg.Discriminator AS FullEducationOrganizationType,
    edorg.NameOfInstitution
FROM edfi.EducationOrganization edorg
    LEFT JOIN edfi.StateEducationAgency sea
        ON edorg.EducationOrganizationId = sea.StateEducationAgencyId
    LEFT JOIN edfi.EducationServiceCenter esc
        ON edorg.EducationOrganizationId = esc.EducationServiceCenterId
    LEFT JOIN edfi.LocalEducationAgency lea
        ON edorg.EducationOrganizationId = lea.LocalEducationAgencyId
    LEFT JOIN edfi.School sch
        ON edorg.EducationOrganizationId = sch.SchoolId
    LEFT JOIN edfi.LocalEducationAgency lea_sch
        ON sch.LocalEducationAgencyId = lea_sch.LocalEducationAgencyId
    LEFT JOIN edfi.CommunityOrganization co
        ON edorg.EducationOrganizationId = co.CommunityOrganizationId
    LEFT JOIN edfi.CommunityProvider cp
        ON edorg.EducationOrganizationId = cp.CommunityProviderId
    LEFT JOIN edfi.CommunityOrganization cp_co
        ON cp.CommunityOrganizationId = cp_co.CommunityOrganizationId
    LEFT JOIN edfi.PostSecondaryInstitution psi
        ON edorg.EducationOrganizationId = psi.PostSecondaryInstitutionId
    LEFT JOIN edfi.OrganizationDepartment od
        ON edorg.EducationOrganizationId = od.OrganizationDepartmentId
WHERE   --Use same CASE as above to eliminate non-institutions (e.g. Networks)
    CASE 
        WHEN sea.StateEducationAgencyId IS NOT NULL THEN N'StateEducationAgency'
        WHEN esc.EducationServiceCenterId IS NOT NULL THEN N'EducationServiceCenter'
        WHEN lea.LocalEducationAgencyId IS NOT NULL THEN N'LocalEducationAgency'
        WHEN sch.SchoolId IS NOT NULL THEN N'School'
        WHEN co.CommunityOrganizationId IS NOT NULL THEN N'CommunityOrganization'
        WHEN cp.CommunityProviderId IS NOT NULL THEN N'CommunityProvider'
        WHEN psi.PostSecondaryInstitutionId IS NOT NULL THEN N'PostSecondaryInstitution'
        WHEN od.OrganizationDepartmentId IS NOT NULL THEN N'OrganizationDepartment'
    END IS NOT NULL
GO

CREATE OR ALTER VIEW [auth].[EducationOrganizationIdToLocalEducationAgencyId]

AS
    -- Schools in the LEA
    SELECT LocalEducationAgencyId
         ,SchoolId AS EducationOrganizationId
    FROM edfi.School

    UNION
	
    -- LEA-level claims can access the LEA's School's departments
    SELECT LocalEducationAgencyId
        , OrganizationDepartmentId AS EducationOrganizationId
    FROM  edfi.School sch
        INNER JOIN edfi.OrganizationDepartment od
            ON sch.SchoolId = od.ParentEducationOrganizationId

    UNION

    -- LEA-level claims also can access the LEA
    SELECT LocalEducationAgencyId
         ,LocalEducationAgencyId AS EducationOrganizationId
    FROM edfi.LocalEducationAgency

    UNION

    -- LEA-level claims also can access LEA's departments
    SELECT LocalEducationAgencyId
         ,OrganizationDepartmentId AS EducationOrganizationId
    FROM edfi.LocalEducationAgency lea
        INNER JOIN edfi.OrganizationDepartment od
            ON lea.LocalEducationAgencyId = od.ParentEducationOrganizationId
GO


CREATE OR ALTER VIEW [auth].[EducationOrganizationIdToSchoolId]
AS
-- School-level claims only can access the school
SELECT SchoolId
     ,SchoolId AS EducationOrganizationId
FROM edfi.School

UNION

-- School-level claims can access the school's departments
SELECT SchoolId
    ,OrganizationDepartmentId AS EducationOrganizationId
FROM edfi.School sch
    INNER JOIN edfi.OrganizationDepartment od
        ON sch.SchoolId = od.ParentEducationOrganizationId;
GO


CREATE OR ALTER VIEW [auth].[LocalEducationAgencyIdToStaffUSI]
AS
    -- LEA to Staff (through LEA employment)
    SELECT lea.LocalEducationAgencyId
        ,emp.StaffUSI
    FROM edfi.LocalEducationAgency lea
        INNER JOIN auth.EducationOrganizationToStaffUSI_Employment emp
            ON lea.LocalEducationAgencyId = emp.EducationOrganizationId

    UNION

    -- LEA to Staff (through LEA-level department employment)
    SELECT lea.LocalEducationAgencyId
        ,emp.StaffUSI
    FROM edfi.LocalEducationAgency lea
		INNER JOIN edfi.OrganizationDepartment od
            ON lea.LocalEducationAgencyId = od.ParentEducationOrganizationId
        INNER JOIN auth.EducationOrganizationToStaffUSI_Employment emp
            ON od.OrganizationDepartmentId = emp.EducationOrganizationId

    UNION

    -- LEA to Staff (through LEA assignment)
    SELECT lea.LocalEducationAgencyId
         ,assgn.StaffUSI
    FROM edfi.LocalEducationAgency lea
        INNER JOIN auth.EducationOrganizationToStaffUSI_Assignment assgn
            ON lea.LocalEducationAgencyId = assgn.EducationOrganizationId

    UNION

    -- LEA to Staff (through LEA-level department assignment)
    SELECT lea.LocalEducationAgencyId
         ,assgn.StaffUSI
    FROM edfi.LocalEducationAgency lea
        INNER JOIN edfi.OrganizationDepartment od
            ON lea.LocalEducationAgencyId = od.ParentEducationOrganizationId
        INNER JOIN auth.EducationOrganizationToStaffUSI_Assignment assgn
            ON od.OrganizationDepartmentId = assgn.EducationOrganizationId

    UNION

    -- LEA to Staff (through School employment)
    SELECT sch.LocalEducationAgencyId
         ,emp.StaffUSI
    FROM edfi.School sch
        INNER JOIN auth.EducationOrganizationToStaffUSI_Employment emp
            ON sch.SchoolId = emp.EducationOrganizationId

    UNION

    -- LEA to Staff (through School-level department employment)
    SELECT sch.LocalEducationAgencyId
         ,emp.StaffUSI
    FROM edfi.School sch
        INNER JOIN edfi.OrganizationDepartment od
            ON sch.SchoolId = od.ParentEducationOrganizationId
        INNER JOIN auth.EducationOrganizationToStaffUSI_Employment emp
            ON od.OrganizationDepartmentId = emp.EducationOrganizationId

    UNION

    -- LEA to Staff (through School assignment)
    SELECT sch.LocalEducationAgencyId
         ,assgn.StaffUSI
    FROM edfi.School sch
        INNER JOIN auth.EducationOrganizationToStaffUSI_Assignment assgn
            ON sch.SchoolId = assgn.EducationOrganizationId
            
    UNION

    -- LEA to Staff (through School-level department assignment)
    SELECT sch.LocalEducationAgencyId
         ,assgn.StaffUSI
    FROM edfi.School sch
        INNER JOIN edfi.OrganizationDepartment od
            ON sch.SchoolId = od.ParentEducationOrganizationId
        INNER JOIN auth.EducationOrganizationToStaffUSI_Assignment assgn
            ON od.OrganizationDepartmentId = assgn.EducationOrganizationId;
GO

CREATE OR ALTER VIEW [auth].[ParentUSIToSchoolId]
    WITH SCHEMABINDING
AS
    -- School to Parent USI
    SELECT ssa.SchoolId
        ,spa.ParentUSI
        ,COUNT_BIG(*) AS Count
    FROM edfi.StudentSchoolAssociation ssa
            INNER JOIN edfi.StudentParentAssociation spa ON
            ssa.StudentUSI = spa.StudentUSI
    GROUP BY spa.ParentUSI
        ,SchoolId;
GO

CREATE OR ALTER VIEW [auth].[SchoolIdToStaffUSI]
AS
    -- School to Staff (through School employment)
    SELECT sch.SchoolId
        ,seo_empl.StaffUSI
    FROM edfi.School sch
        INNER JOIN edfi.StaffEducationOrganizationEmploymentAssociation seo_empl
            ON sch.SchoolId = seo_empl.EducationOrganizationId

    UNION

    -- School to Staff (through School-level department employment)
    SELECT sch.SchoolId
        ,seo_empl.StaffUSI
    FROM edfi.School sch
        INNER JOIN edfi.OrganizationDepartment od
            ON sch.SchoolId = od.ParentEducationOrganizationId
        INNER JOIN edfi.StaffEducationOrganizationEmploymentAssociation seo_empl
            ON od.OrganizationDepartmentId = seo_empl.EducationOrganizationId

    UNION

    -- School to Staff (through School assignment)
    SELECT sch.SchoolId
        ,seo_assgn.StaffUSI
    FROM edfi.School sch
        INNER JOIN edfi.StaffEducationOrganizationAssignmentAssociation seo_assgn
            ON sch.SchoolId = seo_assgn.EducationOrganizationId

    UNION

    -- School to Staff (through School-level department assignment)
    SELECT sch.SchoolId
        ,seo_assgn.StaffUSI
    FROM edfi.School sch
        INNER JOIN edfi.OrganizationDepartment od
            ON sch.SchoolId = od.ParentEducationOrganizationId
        INNER JOIN edfi.StaffEducationOrganizationAssignmentAssociation seo_assgn
            ON od.OrganizationDepartmentId = seo_assgn.EducationOrganizationId;
GO

