-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[StaffEducationOrganizationEmploymentAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] DROP CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_DF_CreateDate];


GO
PRINT N'Dropping [edfi].[StaffEducationOrganizationEmploymentAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] DROP CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping [auth].[EducationOrganizationToStaffUSI_Employment].[UCIX_EducationOrganizationToStaffUSI_Employment]...';


GO
DROP INDEX [UCIX_EducationOrganizationToStaffUSI_Employment]
    ON [auth].[EducationOrganizationToStaffUSI_Employment];


GO
PRINT N'Removing schema binding from [auth].[EducationOrganizationToStaffUSI_Employment]...';


GO
ALTER VIEW [auth].[EducationOrganizationToStaffUSI_Employment]
AS
SELECT   edorg.EducationOrganizationId,
         empl.StaffUSI,
         empl.HireDate AS BeginDate,
         empl.EndDate,
         COUNT_BIG(*) AS Count
FROM     edfi.EducationOrganization AS edorg
         INNER JOIN
         edfi.StaffEducationOrganizationEmploymentAssociation AS empl
         ON edorg.EducationOrganizationId = empl.EducationOrganizationId
GROUP BY empl.StaffUSI, edorg.EducationOrganizationId, HireDate, EndDate;


GO
PRINT N'Altering [edfi].[StaffEducationOrganizationEmploymentAssociation]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;

ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ALTER COLUMN [LastModifiedDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[StaffEducationOrganizationEmploymentAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation]
    ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [edfi].[StaffEducationOrganizationEmploymentAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation]
    ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Adding schema binding to [auth].[EducationOrganizationToStaffUSI_Employment]...';


GO



ALTER VIEW auth.EducationOrganizationToStaffUSI_Employment
WITH SCHEMABINDING
AS
-- EdOrg to Staff (through Employment)
select	edorg.EducationOrganizationId, empl.StaffUSI, empl.HireDate as BeginDate, empl.EndDate, COUNT_BIG(*) as Count
from	edfi.EducationOrganization edorg
		inner join edfi.StaffEducationOrganizationEmploymentAssociation empl
			on edorg.EducationOrganizationId = empl.EducationOrganizationId
group by empl.StaffUSI, edorg.EducationOrganizationId, HireDate, EndDate

--
GO
PRINT N'Creating [auth].[EducationOrganizationToStaffUSI_Employment].[UCIX_EducationOrganizationToStaffUSI_Employment]...';


GO
CREATE UNIQUE CLUSTERED INDEX [UCIX_EducationOrganizationToStaffUSI_Employment]
    ON [auth].[EducationOrganizationToStaffUSI_Employment]([StaffUSI] ASC, [EducationOrganizationId] ASC, [BeginDate] ASC, [EndDate] ASC);


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
