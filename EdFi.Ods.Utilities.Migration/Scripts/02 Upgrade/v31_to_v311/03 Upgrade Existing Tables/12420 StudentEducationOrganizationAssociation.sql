-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[StudentEducationOrganizationAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [StudentEducationOrganizationAssociation_DF_CreateDate];


GO
PRINT N'Dropping [edfi].[StudentEducationOrganizationAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [StudentEducationOrganizationAssociation_DF_LastModifiedDate];


GO
PRINT N'Removing schema binding from [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation]...';


GO
ALTER VIEW [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation]
AS
SELECT SchoolId,
       seoa.StudentUSI
FROM   edfi.School AS sch
       INNER JOIN
       edfi.StudentEducationOrganizationAssociation AS seoa
       ON sch.SchoolId = seoa.EducationOrganizationId;


GO
PRINT N'Altering [edfi].[StudentEducationOrganizationAssociation]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] ALTER COLUMN [LastModifiedDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[StudentEducationOrganizationAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation]
    ADD CONSTRAINT [StudentEducationOrganizationAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [edfi].[StudentEducationOrganizationAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation]
    ADD CONSTRAINT [StudentEducationOrganizationAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Refreshing [auth].[LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation]...';


GO
EXECUTE sp_refreshsqlmodule N'[auth].[LocalEducationAgencyIdToStudentUSIThroughEdOrgAssociation]';


GO
PRINT N'Adding schema binding to [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation]...';


GO

ALTER VIEW [auth].[SchoolIdToStudentUSIThroughEdOrgAssociation]
WITH SCHEMABINDING
AS
select	SchoolId, seoa.StudentUSI --, ssa.EntryDate as BeginDate, ssa.ExitWithdrawDate as EndDate
from	edfi.School sch
		inner join edfi.StudentEducationOrganizationAssociation seoa
			on sch.SchoolId = seoa.EducationOrganizationId
GO
