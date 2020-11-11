-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningObjectiveContentStandard_PK] on [edfi].[LearningObjectiveContentStandard]'
GO
ALTER TABLE [edfi].[LearningObjectiveContentStandard] ADD CONSTRAINT [LearningObjectiveContentStandard_PK] PRIMARY KEY CLUSTERED  ([LearningObjectiveId], [Namespace])
GO

PRINT N'Creating index [FK_LearningObjectiveContentStandard_EducationOrganization] on [edfi].[LearningObjectiveContentStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningObjectiveContentStandard_EducationOrganization] ON [edfi].[LearningObjectiveContentStandard] ([MandatingEducationOrganizationId])
GO

PRINT N'Creating index [FK_LearningObjectiveContentStandard_PublicationStatusDescriptor] on [edfi].[LearningObjectiveContentStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningObjectiveContentStandard_PublicationStatusDescriptor] ON [edfi].[LearningObjectiveContentStandard] ([PublicationStatusDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[LearningObjectiveContentStandard]'
GO
ALTER TABLE [edfi].[LearningObjectiveContentStandard] ADD CONSTRAINT [LearningObjectiveContentStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
