-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationPlanType_PK] on [edfi].[EducationPlanType]'
GO
ALTER TABLE [edfi].[EducationPlanType] ADD CONSTRAINT [EducationPlanType_PK] PRIMARY KEY CLUSTERED  ([EducationPlanTypeId])
GO
PRINT N'Creating index [UX_EducationPlanType_Id] on [edfi].[EducationPlanType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EducationPlanType_Id] ON [edfi].[EducationPlanType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[EducationPlanType]'
GO
ALTER TABLE [edfi].[EducationPlanType] ADD CONSTRAINT [EducationPlanType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EducationPlanType] ADD CONSTRAINT [EducationPlanType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EducationPlanType] ADD CONSTRAINT [EducationPlanType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

