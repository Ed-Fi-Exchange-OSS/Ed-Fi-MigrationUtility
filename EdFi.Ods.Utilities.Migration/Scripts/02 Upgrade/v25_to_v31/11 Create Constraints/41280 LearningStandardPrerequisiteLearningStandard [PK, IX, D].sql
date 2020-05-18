-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningStandardPrerequisiteLearningStandard_PK] on [edfi].[LearningStandardPrerequisiteLearningStandard]'
GO
ALTER TABLE [edfi].[LearningStandardPrerequisiteLearningStandard] ADD CONSTRAINT [LearningStandardPrerequisiteLearningStandard_PK] PRIMARY KEY CLUSTERED  ([LearningStandardId], [PrerequisiteLearningStandardId])
GO

PRINT N'Creating index [FK_LearningStandardPrerequisiteLearningStandard_LearningStandard] on [edfi].[LearningStandardPrerequisiteLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandardPrerequisiteLearningStandard_LearningStandard] ON [edfi].[LearningStandardPrerequisiteLearningStandard] ([LearningStandardId])
GO

PRINT N'Creating index [FK_LearningStandardPrerequisiteLearningStandard_LearningStandard1] on [edfi].[LearningStandardPrerequisiteLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandardPrerequisiteLearningStandard_LearningStandard1] ON [edfi].[LearningStandardPrerequisiteLearningStandard] ([PrerequisiteLearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[LearningStandardPrerequisiteLearningStandard]'
GO
ALTER TABLE [edfi].[LearningStandardPrerequisiteLearningStandard] ADD CONSTRAINT [LearningStandardPrerequisiteLearningStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
