-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationalEnvironmentType_PK] on [edfi].[EducationalEnvironmentType]'
GO
ALTER TABLE [edfi].[EducationalEnvironmentType] ADD CONSTRAINT [EducationalEnvironmentType_PK] PRIMARY KEY CLUSTERED  ([EducationalEnvironmentTypeId])
GO
PRINT N'Creating index [UX_EducationalEnvironmentType_Id] on [edfi].[EducationalEnvironmentType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EducationalEnvironmentType_Id] ON [edfi].[EducationalEnvironmentType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[EducationalEnvironmentType]'
GO
ALTER TABLE [edfi].[EducationalEnvironmentType] ADD CONSTRAINT [EducationalEnvironmentType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EducationalEnvironmentType] ADD CONSTRAINT [EducationalEnvironmentType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EducationalEnvironmentType] ADD CONSTRAINT [EducationalEnvironmentType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

