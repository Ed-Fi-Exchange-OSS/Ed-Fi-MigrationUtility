-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationIdToCommunityOrganizationId]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [auth].[EducationOrganizationIdToCommunityOrganizationId]
AS
	SELECT	CommunityOrganizationId, CommunityProviderId AS EducationOrganizationId
	FROM	edfi.CommunityProvider
	UNION	
	SELECT	CommunityOrganizationId, CommunityOrganizationId AS EducationOrganizationId
	FROM	edfi.CommunityOrganization'
GO

IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationIdToCommunityProviderId]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [auth].[EducationOrganizationIdToCommunityProviderId]
AS
	SELECT	CommunityProviderId, CommunityProviderId as EducationOrganizationId
	FROM	edfi.CommunityProvider'
GO

IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[CommunityOrganizationIdToCommunityProviderId]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [auth].[CommunityOrganizationIdToCommunityProviderId]
AS
select	CommunityOrganizationId, CommunityProviderId 
from	edfi.CommunityProvider'
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationIdentifiers]'))
	DROP VIEW [auth].[EducationOrganizationIdentifiers];
GO

EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [auth].[EducationOrganizationIdentifiers]
AS
-- NOTE: Multiple results for a single Education Organization are possible if they are a part of multiple Education Organization Networks
SELECT	edorg.EducationOrganizationId,
		CASE 
			WHEN sea.StateEducationAgencyId IS NOT NULL THEN N''StateEducationAgency''
			WHEN esc.EducationServiceCenterId IS NOT NULL THEN N''EducationServiceCenter''
			WHEN lea.LocalEducationAgencyId IS NOT NULL THEN N''LocalEducationAgency''
			WHEN sch.SchoolId IS NOT NULL THEN N''School''
			WHEN co.CommunityOrganizationId IS NOT NULL THEN N''CommunityOrganization''
			WHEN cp.CommunityProviderId IS NOT NULL THEN N''CommunityProvider''
		END AS EducationOrganizationType,
		COALESCE(sea.StateEducationAgencyId, esc.StateEducationAgencyId, lea.StateEducationAgencyId, lea_sch.StateEducationAgencyId) AS StateEducationAgencyId, 
		COALESCE(esc.EducationServiceCenterId, lea.EducationServiceCenterId, lea_sch.EducationServiceCenterId) AS EducationServiceCenterId,
		COALESCE(lea.LocalEducationAgencyId, sch.LocalEducationAgencyId) AS LocalEducationAgencyId,
		COALESCE(co.CommunityOrganizationID, cp.CommunityOrganizationId) AS CommunityOrganizationId, 
		cp.CommunityProviderId,
		sch.SchoolId
FROM	edfi.EducationOrganization edorg
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
WHERE	--Use same CASE as above to eliminate non-institutions (e.g. Networks)
		CASE 
			WHEN sea.StateEducationAgencyId IS NOT NULL THEN N''StateEducationAgency''
			WHEN esc.EducationServiceCenterId IS NOT NULL THEN N''EducationServiceCenter''
			WHEN lea.LocalEducationAgencyId IS NOT NULL THEN N''LocalEducationAgency''
			WHEN sch.SchoolId IS NOT NULL THEN N''School''
			WHEN co.CommunityOrganizationId IS NOT NULL THEN N''CommunityOrganization''
			WHEN cp.CommunityProviderId IS NOT NULL THEN N''CommunityProvider''
		END IS NOT NULL'
GO