-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Cohort_PK] on [edfi].[Cohort]'
GO
ALTER TABLE [edfi].[Cohort] ADD CONSTRAINT [Cohort_PK] PRIMARY KEY CLUSTERED  ([CohortIdentifier], [EducationOrganizationId])
GO
PRINT N'Creating index [UX_Cohort_Id] on [edfi].[Cohort]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Cohort_Id] ON [edfi].[Cohort] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_Cohort_AcademicSubjectDescriptor] on [edfi].[Cohort]'
GO
CREATE NONCLUSTERED INDEX [FK_Cohort_AcademicSubjectDescriptor] ON [edfi].[Cohort] ([AcademicSubjectDescriptorId])
GO
PRINT N'Creating index [FK_Cohort_CohortScopeType] on [edfi].[Cohort]'
GO
CREATE NONCLUSTERED INDEX [FK_Cohort_CohortScopeType] ON [edfi].[Cohort] ([CohortScopeTypeId])
GO
PRINT N'Creating index [FK_Cohort_CohortType] on [edfi].[Cohort]'
GO
CREATE NONCLUSTERED INDEX [FK_Cohort_CohortType] ON [edfi].[Cohort] ([CohortTypeId])
GO
PRINT N'Creating index [FK_Cohort_EducationOrganization] on [edfi].[Cohort]'
GO
CREATE NONCLUSTERED INDEX [FK_Cohort_EducationOrganization] ON [edfi].[Cohort] ([EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[Cohort]'
GO
ALTER TABLE [edfi].[Cohort] ADD CONSTRAINT [Cohort_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Cohort] ADD CONSTRAINT [Cohort_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Cohort] ADD CONSTRAINT [Cohort_DF_Id] DEFAULT (newid()) FOR [Id]
GO

