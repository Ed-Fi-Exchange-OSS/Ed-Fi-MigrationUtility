-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CurriculumUsedType_PK] on [edfi].[CurriculumUsedType]'
GO
ALTER TABLE [edfi].[CurriculumUsedType] ADD CONSTRAINT [CurriculumUsedType_PK] PRIMARY KEY CLUSTERED  ([CurriculumUsedTypeId])
GO
PRINT N'Creating index [UX_CurriculumUsedType_Id] on [edfi].[CurriculumUsedType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CurriculumUsedType_Id] ON [edfi].[CurriculumUsedType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CurriculumUsedType]'
GO
ALTER TABLE [edfi].[CurriculumUsedType] ADD CONSTRAINT [CurriculumUsedType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CurriculumUsedType] ADD CONSTRAINT [CurriculumUsedType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CurriculumUsedType] ADD CONSTRAINT [CurriculumUsedType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

