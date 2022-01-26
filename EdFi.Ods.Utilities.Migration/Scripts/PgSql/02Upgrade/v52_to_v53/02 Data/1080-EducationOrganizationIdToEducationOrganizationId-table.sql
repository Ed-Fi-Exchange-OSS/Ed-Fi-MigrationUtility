-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

INSERT INTO auth.EducationOrganizationIdToEducationOrganizationId
	-- EdOrgId to self
	SELECT	edOrg.EducationOrganizationId AS SourceEducationOrganizationId,
			edOrg.EducationOrganizationId AS TargetEducationOrganizationId
	FROM	edfi.EducationOrganization edOrg
	UNION
	-- SEA to ESC
	SELECT	esc.StateEducationAgencyId AS SourceEducationOrganizationId,
			esc.EducationServiceCenterId AS TargetEducationOrganizationId
	FROM	edfi.EducationServiceCenter esc
	WHERE	esc.StateEducationAgencyId IS NOT NULL
	UNION
	-- SEA to LEA
	SELECT	lea.StateEducationAgencyId AS SourceEducationOrganizationId,
			lea.LocalEducationAgencyId AS TargetEducationOrganizationId
	FROM	edfi.LocalEducationAgency lea
	WHERE	lea.StateEducationAgencyId IS NOT NULL
	UNION
	-- SEA to School
	SELECT	lea.StateEducationAgencyId AS SourceEducationOrganizationId,
			sch.SchoolId AS TargetEducationOrganizationId
	FROM	edfi.LocalEducationAgency lea
		INNER JOIN edfi.School sch
			ON lea.LocalEducationAgencyId = sch.LocalEducationAgencyId
	WHERE	lea.StateEducationAgencyId IS NOT NULL
	UNION
	-- ESC to LEA
	SELECT	lea.EducationServiceCenterId AS SourceEducationOrganizationId,
			lea.LocalEducationAgencyId AS TargetEducationOrganizationId
	FROM	edfi.LocalEducationAgency lea
	WHERE	lea.EducationServiceCenterId IS NOT NULL
	UNION
	-- ESC to School
	SELECT	lea.EducationServiceCenterId AS SourceEducationOrganizationId,
			sch.SchoolId AS TargetEducationOrganizationId
	FROM	edfi.LocalEducationAgency lea
		INNER JOIN edfi.School sch
			ON lea.LocalEducationAgencyId = sch.LocalEducationAgencyId
	WHERE	lea.EducationServiceCenterId IS NOT NULL
	UNION
	-- LEA to School
	SELECT	sch.LocalEducationAgencyId AS SourceEducationOrganizationId,
			sch.SchoolId AS TargetEducationOrganizationId
	FROM	edfi.School sch
	WHERE	sch.LocalEducationAgencyId IS NOT NULL
	UNION
	-- Community Organization to Community Provider
	SELECT	cp.CommunityOrganizationId AS SourceEducationOrganizationId,
			cp.CommunityProviderId AS TargetEducationOrganizationId
	FROM	edfi.CommunityProvider cp
	WHERE	cp.CommunityOrganizationId IS NOT NULL;

WITH orgdepts AS (SELECT * FROM edfi.OrganizationDepartment)
    INSERT INTO auth.EducationOrganizationIdToEducationOrganizationId(SourceEducationOrganizationId, TargetEducationOrganizationId)
    SELECT sources.SourceEducationOrganizationId, targets.TargetEducationOrganizationId
    FROM (
        -- Find ancestors that need to have tuples inserted due to assignment of the ParentEducationOrganizationId
        SELECT  tuples.SourceEducationOrganizationId, new.OrganizationDepartmentId
        FROM    orgdepts new
                INNER JOIN auth.EducationOrganizationIdToEducationOrganizationId tuples
                    ON new.ParentEducationOrganizationId = tuples.TargetEducationOrganizationId
        WHERE   new.ParentEducationOrganizationId IS NOT NULL
        ) AS sources
    CROSS JOIN
        -- Get all the existing targets/descendants (to be cross joined with all the affected ancestor sources)
        (
            SELECT  new.OrganizationDepartmentId, tuples.TargetEducationOrganizationId
            FROM    orgdepts new
                    INNER JOIN auth.EducationOrganizationIdToEducationOrganizationId tuples
                        ON new.OrganizationDepartmentId = tuples.SourceEducationOrganizationId
        ) as targets
    WHERE sources.OrganizationDepartmentId = targets.OrganizationDepartmentId;