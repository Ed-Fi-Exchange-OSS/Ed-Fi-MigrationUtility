-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[LearningStandardContentStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardContentStandard] DROP CONSTRAINT [LearningStandardContentStandard_DF_CreateDate];


GO
PRINT N'Altering [edfi].[LearningStandardContentStandard]...';


GO
ALTER TABLE [edfi].[LearningStandardContentStandard] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[LearningStandardContentStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardContentStandard]
    ADD CONSTRAINT [LearningStandardContentStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
