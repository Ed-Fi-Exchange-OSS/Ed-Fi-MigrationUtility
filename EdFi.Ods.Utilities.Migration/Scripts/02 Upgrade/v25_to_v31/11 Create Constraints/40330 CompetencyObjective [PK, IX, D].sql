-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CompetencyObjective_PK] on [edfi].[CompetencyObjective]'
GO
ALTER TABLE [edfi].[CompetencyObjective] ADD CONSTRAINT [CompetencyObjective_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [Objective], [ObjectiveGradeLevelDescriptorId])
GO

PRINT N'Creating index [UX_CompetencyObjective_Id] on [edfi].[CompetencyObjective]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CompetencyObjective_Id] ON [edfi].[CompetencyObjective] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_CompetencyObjective_EducationOrganization] on [edfi].[CompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_CompetencyObjective_EducationOrganization] ON [edfi].[CompetencyObjective] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_CompetencyObjective_GradeLevelDescriptor] on [edfi].[CompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_CompetencyObjective_GradeLevelDescriptor] ON [edfi].[CompetencyObjective] ([ObjectiveGradeLevelDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[CompetencyObjective]'
GO
ALTER TABLE [edfi].[CompetencyObjective] ADD CONSTRAINT [CompetencyObjective_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CompetencyObjective] ADD CONSTRAINT [CompetencyObjective_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CompetencyObjective] ADD CONSTRAINT [CompetencyObjective_DF_Id] DEFAULT (newid()) FOR [Id]
GO
