-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.


IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToEducationOrganizationId]'))
    DROP VIEW auth.CommunityOrganizationIdToEducationOrganizationId;
GO

CREATE VIEW [auth].[CommunityOrganizationIdToEducationOrganizationId]
AS
    SELECT CommunityOrganizationId
         ,CommunityProviderId AS EducationOrganizationId
    FROM edfi.CommunityProvider

    UNION

    SELECT CommunityOrganizationId
         ,CommunityOrganizationId AS EducationOrganizationId
    FROM edfi.CommunityOrganization;
GO


IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityProviderIdToEducationOrganizationId]'))
    DROP VIEW auth.CommunityProviderIdToEducationOrganizationId;
GO

CREATE VIEW [auth].[CommunityProviderIdToEducationOrganizationId]
AS
SELECT CommunityProviderId
     ,CommunityProviderId AS EducationOrganizationId
FROM edfi.CommunityProvider;
GO


IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityProviderIdToStaffUSI]'))
    DROP VIEW auth.CommunityProviderIdToStaffUSI;
GO

CREATE VIEW [auth].[CommunityProviderIdToStaffUSI]
AS
    SELECT emp.EducationOrganizationId AS CommunityProviderId
          ,emp.StaffUSI
    FROM edfi.CommunityProvider cp
        INNER JOIN auth.EducationOrganizationToStaffUSI_Employment emp ON
        cp.CommunityProviderId = emp.EducationOrganizationId

    UNION ALL

    SELECT assgn.EducationOrganizationId AS CommunityProviderId
          ,assgn.StaffUSI
    FROM edfi.CommunityProvider cp
             INNER JOIN auth.EducationOrganizationToStaffUSI_Assignment assgn ON
        cp.CommunityProviderId = assgn.EducationOrganizationId
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[PostSecondaryInstitutionIdToStaffUSI]'))
    DROP VIEW auth.PostSecondaryInstitutionIdToStaffUSI;
GO

CREATE VIEW [auth].[PostSecondaryInstitutionIdToStaffUSI]
AS
    SELECT emp.EducationOrganizationId AS PostSecondaryInstitutionId
          ,emp.StaffUSI
    FROM edfi.PostSecondaryInstitution psi
        INNER JOIN auth.EducationOrganizationToStaffUSI_Employment emp ON
        psi.PostSecondaryInstitutionId = emp.EducationOrganizationId

    UNION ALL

    SELECT assgn.EducationOrganizationId AS PostSecondaryInstitutionId
          ,assgn.StaffUSI
    FROM edfi.PostSecondaryInstitution psi
             INNER JOIN auth.EducationOrganizationToStaffUSI_Assignment assgn ON
        psi.PostSecondaryInstitutionId = assgn.EducationOrganizationId
GO