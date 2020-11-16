-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LimitedEnglishProficiencyType_PK] on [edfi].[LimitedEnglishProficiencyType]'
GO
ALTER TABLE [edfi].[LimitedEnglishProficiencyType] ADD CONSTRAINT [LimitedEnglishProficiencyType_PK] PRIMARY KEY CLUSTERED  ([LimitedEnglishProficiencyTypeId])
GO
PRINT N'Creating index [UX_LimitedEnglishProficiencyType_Id] on [edfi].[LimitedEnglishProficiencyType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_LimitedEnglishProficiencyType_Id] ON [edfi].[LimitedEnglishProficiencyType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[LimitedEnglishProficiencyType]'
GO
ALTER TABLE [edfi].[LimitedEnglishProficiencyType] ADD CONSTRAINT [LimitedEnglishProficiencyType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[LimitedEnglishProficiencyType] ADD CONSTRAINT [LimitedEnglishProficiencyType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[LimitedEnglishProficiencyType] ADD CONSTRAINT [LimitedEnglishProficiencyType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

