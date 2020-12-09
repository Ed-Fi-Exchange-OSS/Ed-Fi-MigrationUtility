-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisciplineActionLengthDifferenceReasonType_PK] on [edfi].[DisciplineActionLengthDifferenceReasonType]'
GO
ALTER TABLE [edfi].[DisciplineActionLengthDifferenceReasonType] ADD CONSTRAINT [DisciplineActionLengthDifferenceReasonType_PK] PRIMARY KEY CLUSTERED  ([DisciplineActionLengthDifferenceReasonTypeId])
GO
PRINT N'Creating index [UX_DisciplineActionLengthDifferenceReasonType_Id] on [edfi].[DisciplineActionLengthDifferenceReasonType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_DisciplineActionLengthDifferenceReasonType_Id] ON [edfi].[DisciplineActionLengthDifferenceReasonType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[DisciplineActionLengthDifferenceReasonType]'
GO
ALTER TABLE [edfi].[DisciplineActionLengthDifferenceReasonType] ADD CONSTRAINT [DisciplineActionLengthDifferenceReasonType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[DisciplineActionLengthDifferenceReasonType] ADD CONSTRAINT [DisciplineActionLengthDifferenceReasonType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[DisciplineActionLengthDifferenceReasonType] ADD CONSTRAINT [DisciplineActionLengthDifferenceReasonType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

