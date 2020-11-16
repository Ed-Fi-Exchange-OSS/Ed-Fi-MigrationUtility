-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF EXISTS (SELECT * from INFORMATION_SCHEMA.VIEWS v WHERE v.TABLE_SCHEMA = 'auth' AND v.TABLE_NAME = 'LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation')
	DROP VIEW [auth].[LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation]
GO

CREATE VIEW [auth].LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation
AS
select lea.LocalEducationAgencyId, seoa_lea.StudentUSI
from	edfi.LocalEducationAgency lea
			inner join edfi.StudentEducationOrganizationAssociation seoa_lea
			on lea.LocalEducationAgencyId = seoa_lea.EducationOrganizationId
UNION
select sch.LocalEducationAgencyId, seoa_sch.StudentUSI
from		
		edfi.School sch
		inner join edfi.StudentEducationOrganizationAssociation seoa_sch
			on sch.SchoolId = seoa_sch.EducationOrganizationId
GO

IF EXISTS (SELECT * from INFORMATION_SCHEMA.VIEWS v WHERE v.TABLE_SCHEMA = 'auth' AND v.TABLE_NAME = 'SchoolIdToStudentUSIThroughEdOrgAssociation')
	DROP VIEW [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation]
GO

CREATE VIEW [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation]
WITH SCHEMABINDING
AS
select	SchoolId, seoa.StudentUSI --, ssa.EntryDate as BeginDate, ssa.ExitWithdrawDate as EndDate
from	edfi.School sch
		inner join edfi.StudentEducationOrganizationAssociation seoa
			on sch.SchoolId = seoa.EducationOrganizationId
GO
