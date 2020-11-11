-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningStandardContentStandard_PK] on [edfi].[LearningStandardContentStandard]'
GO
ALTER TABLE [edfi].[LearningStandardContentStandard] ADD CONSTRAINT [LearningStandardContentStandard_PK] PRIMARY KEY CLUSTERED  ([LearningStandardId])
GO

PRINT N'Creating index [FK_LearningStandardContentStandard_EducationOrganization] on [edfi].[LearningStandardContentStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandardContentStandard_EducationOrganization] ON [edfi].[LearningStandardContentStandard] ([MandatingEducationOrganizationId])
GO

PRINT N'Creating index [FK_LearningStandardContentStandard_PublicationStatusDescriptor] on [edfi].[LearningStandardContentStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandardContentStandard_PublicationStatusDescriptor] ON [edfi].[LearningStandardContentStandard] ([PublicationStatusDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[LearningStandardContentStandard]'
GO
ALTER TABLE [edfi].[LearningStandardContentStandard] ADD CONSTRAINT [LearningStandardContentStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
