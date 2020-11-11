-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[EducationOrganization_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganization] DROP CONSTRAINT [EducationOrganization_DF_CreateDate];


GO
PRINT N'Dropping [edfi].[EducationOrganization_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationOrganization] DROP CONSTRAINT [EducationOrganization_DF_LastModifiedDate];


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
PRINT N'Dropping [auth].[LocalEducationAgency].[IX_LocalEducationAgency_LocalEducationAgencyId]...';


GO
DROP INDEX [IX_LocalEducationAgency_LocalEducationAgencyId]
    ON [auth].[LocalEducationAgency];


GO
PRINT N'Dropping [auth].[LocalEducationAgency].[UCIX_LocalEducationAgency]...';


GO
DROP INDEX [UCIX_LocalEducationAgency]
    ON [auth].[LocalEducationAgency];


GO
PRINT N'Removing schema binding from [auth].[LocalEducationAgency]...';


GO
ALTER VIEW [auth].[LocalEducationAgency]
AS
SELECT Id,
       LocalEducationAgencyId
FROM   edfi.LocalEducationAgency AS lea
       INNER JOIN
       edfi.EducationOrganization AS edorg
       ON edorg.EducationOrganizationId = lea.LocalEducationAgencyId;


GO
PRINT N'Dropping [auth].[School].[IX_School_LocalEducationAgencyId]...';


GO
DROP INDEX [IX_School_LocalEducationAgencyId]
    ON [auth].[School];


GO
PRINT N'Dropping [auth].[School].[IX_School_SchoolId]...';


GO
DROP INDEX [IX_School_SchoolId]
    ON [auth].[School];


GO
PRINT N'Dropping [auth].[School].[UCIX_School]...';


GO
DROP INDEX [UCIX_School]
    ON [auth].[School];


GO
PRINT N'Removing schema binding from [auth].[School]...';


GO
ALTER VIEW [auth].[School]
AS
SELECT Id,
       SchoolId,
       LocalEducationAgencyId
FROM   edfi.School AS sch
       INNER JOIN
       edfi.EducationOrganization AS edorg
       ON edorg.EducationOrganizationId = sch.SchoolId;


GO
PRINT N'Altering [edfi].[EducationOrganization]...';


GO
ALTER TABLE [edfi].[EducationOrganization] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;

ALTER TABLE [edfi].[EducationOrganization] ALTER COLUMN [LastModifiedDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[EducationOrganization_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganization]
    ADD CONSTRAINT [EducationOrganization_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [edfi].[EducationOrganization_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationOrganization]
    ADD CONSTRAINT [EducationOrganization_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Refreshing [auth].[EducationOrganizationIdentifiers]...';


GO
EXECUTE sp_refreshsqlmodule N'[auth].[EducationOrganizationIdentifiers]';


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
PRINT N'Adding schema binding to [auth].[LocalEducationAgency]...';


GO


ALTER VIEW auth.LocalEducationAgency
WITH SCHEMABINDING
AS
	select	Id, LocalEducationAgencyId 
	from	edfi.LocalEducationAgency lea
			inner join edfi.EducationOrganization edorg
				on edorg.EducationOrganizationId = lea.LocalEducationAgencyId
--
GO
PRINT N'Creating [auth].[LocalEducationAgency].[UCIX_LocalEducationAgency]...';


GO
CREATE UNIQUE CLUSTERED INDEX [UCIX_LocalEducationAgency]
    ON [auth].[LocalEducationAgency]([Id] ASC, [LocalEducationAgencyId] ASC);


GO
PRINT N'Creating [auth].[LocalEducationAgency].[IX_LocalEducationAgency_LocalEducationAgencyId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalEducationAgency_LocalEducationAgencyId]
    ON [auth].[LocalEducationAgency]([LocalEducationAgencyId] ASC, [Id] ASC);


GO
PRINT N'Adding schema binding to [auth].[School]...';


GO


ALTER VIEW auth.School
WITH SCHEMABINDING
AS
	select	Id, SchoolId, LocalEducationAgencyId
	from	edfi.School sch
			inner join edfi.EducationOrganization edorg
				on edorg.EducationOrganizationId = sch.SchoolId
--
GO
PRINT N'Creating [auth].[School].[UCIX_School]...';


GO
CREATE UNIQUE CLUSTERED INDEX [UCIX_School]
    ON [auth].[School]([Id] ASC, [SchoolId] ASC, [LocalEducationAgencyId] ASC);


GO
PRINT N'Creating [auth].[School].[IX_School_LocalEducationAgencyId]...';


GO
CREATE NONCLUSTERED INDEX [IX_School_LocalEducationAgencyId]
    ON [auth].[School]([LocalEducationAgencyId] ASC, [SchoolId] ASC, [Id] ASC);


GO
PRINT N'Creating [auth].[School].[IX_School_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_School_SchoolId]
    ON [auth].[School]([SchoolId] ASC, [LocalEducationAgencyId] ASC, [Id] ASC);


GO
PRINT N'Refreshing [auth].[EducationOrganizationIdToEducationServiceCenterId]...';


GO
EXECUTE sp_refreshsqlmodule N'[auth].[EducationOrganizationIdToEducationServiceCenterId]';


GO
PRINT N'Refreshing [auth].[EducationOrganizationIdToStateAgencyId]...';


GO
EXECUTE sp_refreshsqlmodule N'[auth].[EducationOrganizationIdToStateAgencyId]';


GO
PRINT N'Refreshing [auth].[LocalEducationAgencyIdToStaffUSI]...';


GO
EXECUTE sp_refreshsqlmodule N'[auth].[LocalEducationAgencyIdToStaffUSI]';


GO
PRINT N'Refreshing [auth].[EducationOrganizationIdToStaffUSI]...';


GO
EXECUTE sp_refreshsqlmodule N'[auth].[EducationOrganizationIdToStaffUSI]';


GO
