-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SpecialEducationSettingType_PK] on [edfi].[SpecialEducationSettingType]'
GO
ALTER TABLE [edfi].[SpecialEducationSettingType] ADD CONSTRAINT [SpecialEducationSettingType_PK] PRIMARY KEY CLUSTERED  ([SpecialEducationSettingTypeId])
GO
PRINT N'Creating index [UX_SpecialEducationSettingType_Id] on [edfi].[SpecialEducationSettingType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_SpecialEducationSettingType_Id] ON [edfi].[SpecialEducationSettingType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[SpecialEducationSettingType]'
GO
ALTER TABLE [edfi].[SpecialEducationSettingType] ADD CONSTRAINT [SpecialEducationSettingType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[SpecialEducationSettingType] ADD CONSTRAINT [SpecialEducationSettingType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[SpecialEducationSettingType] ADD CONSTRAINT [SpecialEducationSettingType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

