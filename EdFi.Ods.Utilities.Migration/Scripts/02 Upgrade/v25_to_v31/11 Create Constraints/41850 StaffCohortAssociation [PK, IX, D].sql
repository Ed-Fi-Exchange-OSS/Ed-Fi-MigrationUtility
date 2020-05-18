-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffCohortAssociation_PK] on [edfi].[StaffCohortAssociation]'
GO
ALTER TABLE [edfi].[StaffCohortAssociation] ADD CONSTRAINT [StaffCohortAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [CohortIdentifier], [EducationOrganizationId], [StaffUSI])
GO

PRINT N'Creating index [UX_StaffCohortAssociation_Id] on [edfi].[StaffCohortAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StaffCohortAssociation_Id] ON [edfi].[StaffCohortAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StaffCohortAssociation_Cohort] on [edfi].[StaffCohortAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffCohortAssociation_Cohort] ON [edfi].[StaffCohortAssociation] ([CohortIdentifier], [EducationOrganizationId])
GO

PRINT N'Creating index [FK_StaffCohortAssociation_Staff] on [edfi].[StaffCohortAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffCohortAssociation_Staff] ON [edfi].[StaffCohortAssociation] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffCohortAssociation]'
GO
ALTER TABLE [edfi].[StaffCohortAssociation] ADD CONSTRAINT [StaffCohortAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StaffCohortAssociation] ADD CONSTRAINT [StaffCohortAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StaffCohortAssociation] ADD CONSTRAINT [StaffCohortAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
