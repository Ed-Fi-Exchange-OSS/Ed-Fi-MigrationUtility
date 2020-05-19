-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[StaffEducationOrganizationAssignmentAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_CreateDate];


GO
PRINT N'Dropping [edfi].[StaffEducationOrganizationAssignmentAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping [auth].[EducationOrganizationToStaffUSI_Assignment].[UCIX_EducationOrganizationToStaffUSI_Assignment]...';


GO
DROP INDEX [UCIX_EducationOrganizationToStaffUSI_Assignment]
    ON [auth].[EducationOrganizationToStaffUSI_Assignment];


GO
PRINT N'Removing schema binding from [auth].[EducationOrganizationToStaffUSI_Assignment]...';


GO
ALTER VIEW [auth].[EducationOrganizationToStaffUSI_Assignment]
AS
SELECT   edorg.EducationOrganizationId,
         assgn.StaffUSI,
         assgn.BeginDate,
         assgn.EndDate,
         COUNT_BIG(*) AS Count
FROM     edfi.EducationOrganization AS edorg
         INNER JOIN
         edfi.StaffEducationOrganizationAssignmentAssociation AS assgn
         ON edorg.EducationOrganizationId = assgn.EducationOrganizationId
GROUP BY assgn.StaffUSI, edorg.EducationOrganizationId, BeginDate, EndDate;


GO
PRINT N'Altering [edfi].[StaffEducationOrganizationAssignmentAssociation]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] ALTER COLUMN [LastModifiedDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[StaffEducationOrganizationAssignmentAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation]
    ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [edfi].[StaffEducationOrganizationAssignmentAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation]
    ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Adding schema binding to [auth].[EducationOrganizationToStaffUSI_Assignment]...';


GO



ALTER VIEW auth.EducationOrganizationToStaffUSI_Assignment
WITH SCHEMABINDING
AS
-- EdOrg to Staff (through assignment)
select	edorg.EducationOrganizationId, assgn.StaffUSI, assgn.BeginDate, assgn.EndDate, COUNT_BIG(*) as Count
from	edfi.EducationOrganization edorg
		inner join edfi.StaffEducationOrganizationAssignmentAssociation assgn
			on edorg.EducationOrganizationId = assgn.EducationOrganizationId
group by assgn.StaffUSI, edorg.EducationOrganizationId, BeginDate, EndDate

--
GO
PRINT N'Creating [auth].[EducationOrganizationToStaffUSI_Assignment].[UCIX_EducationOrganizationToStaffUSI_Assignment]...';


GO
CREATE UNIQUE CLUSTERED INDEX [UCIX_EducationOrganizationToStaffUSI_Assignment]
    ON [auth].[EducationOrganizationToStaffUSI_Assignment]([StaffUSI] ASC, [EducationOrganizationId] ASC, [BeginDate] ASC, [EndDate] ASC);


GO
PRINT N'Refreshing [auth].[SchoolIdToStaffUSI]...';


GO
EXECUTE sp_refreshsqlmodule N'[auth].[SchoolIdToStaffUSI]';


GO
PRINT N'Refreshing [auth].[LocalEducationAgencyIdToStaffUSI]...';


GO
EXECUTE sp_refreshsqlmodule N'[auth].[LocalEducationAgencyIdToStaffUSI]';


GO
PRINT N'Refreshing [auth].[EducationOrganizationIdToStaffUSI]...';


GO
EXECUTE sp_refreshsqlmodule N'[auth].[EducationOrganizationIdToStaffUSI]';


GO
