-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentCohortAssociation_PK] on [edfi].[StudentCohortAssociation]'
GO
ALTER TABLE [edfi].[StudentCohortAssociation] ADD CONSTRAINT [StudentCohortAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [CohortIdentifier], [EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [UX_StudentCohortAssociation_Id] on [edfi].[StudentCohortAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentCohortAssociation_Id] ON [edfi].[StudentCohortAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StudentCohortAssociation_Cohort] on [edfi].[StudentCohortAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCohortAssociation_Cohort] ON [edfi].[StudentCohortAssociation] ([CohortIdentifier], [EducationOrganizationId])
GO

PRINT N'Creating index [FK_StudentCohortAssociation_Student] on [edfi].[StudentCohortAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCohortAssociation_Student] ON [edfi].[StudentCohortAssociation] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentCohortAssociation]'
GO
ALTER TABLE [edfi].[StudentCohortAssociation] ADD CONSTRAINT [StudentCohortAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentCohortAssociation] ADD CONSTRAINT [StudentCohortAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentCohortAssociation] ADD CONSTRAINT [StudentCohortAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
