-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningStandardIdentificationCode_PK] on [edfi].[LearningStandardIdentificationCode]'
GO
ALTER TABLE [edfi].[LearningStandardIdentificationCode] ADD CONSTRAINT [LearningStandardIdentificationCode_PK] PRIMARY KEY CLUSTERED  ([ContentStandardName], [IdentificationCode], [LearningStandardId])
GO

PRINT N'Creating index [FK_LearningStandardIdentificationCode_LearningStandard] on [edfi].[LearningStandardIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandardIdentificationCode_LearningStandard] ON [edfi].[LearningStandardIdentificationCode] ([LearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[LearningStandardIdentificationCode]'
GO
ALTER TABLE [edfi].[LearningStandardIdentificationCode] ADD CONSTRAINT [LearningStandardIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
