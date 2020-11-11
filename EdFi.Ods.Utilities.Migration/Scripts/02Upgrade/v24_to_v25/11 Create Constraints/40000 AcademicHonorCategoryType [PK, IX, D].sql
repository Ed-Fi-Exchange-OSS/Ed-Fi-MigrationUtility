-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AcademicHonorCategoryType_PK] on [edfi].[AcademicHonorCategoryType]'
GO
ALTER TABLE [edfi].[AcademicHonorCategoryType] ADD CONSTRAINT [AcademicHonorCategoryType_PK] PRIMARY KEY CLUSTERED  ([AcademicHonorCategoryTypeId])
GO
PRINT N'Creating index [UX_AcademicHonorCategoryType_Id] on [edfi].[AcademicHonorCategoryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AcademicHonorCategoryType_Id] ON [edfi].[AcademicHonorCategoryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AcademicHonorCategoryType]'
GO
ALTER TABLE [edfi].[AcademicHonorCategoryType] ADD CONSTRAINT [AcademicHonorCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AcademicHonorCategoryType] ADD CONSTRAINT [AcademicHonorCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AcademicHonorCategoryType] ADD CONSTRAINT [AcademicHonorCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

