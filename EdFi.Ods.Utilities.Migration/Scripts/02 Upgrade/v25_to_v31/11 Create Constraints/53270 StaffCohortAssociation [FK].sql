-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffCohortAssociation]'
GO
ALTER TABLE [edfi].[StaffCohortAssociation] ADD CONSTRAINT [FK_StaffCohortAssociation_Cohort] FOREIGN KEY ([CohortIdentifier], [EducationOrganizationId]) REFERENCES [edfi].[Cohort] ([CohortIdentifier], [EducationOrganizationId])
GO
ALTER TABLE [edfi].[StaffCohortAssociation] ADD CONSTRAINT [FK_StaffCohortAssociation_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI])
GO
