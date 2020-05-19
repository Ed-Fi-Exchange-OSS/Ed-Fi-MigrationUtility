-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SpecialEducationSettingDescriptor_PK] on [edfi].[SpecialEducationSettingDescriptor]'
GO
ALTER TABLE [edfi].[SpecialEducationSettingDescriptor] ADD CONSTRAINT [SpecialEducationSettingDescriptor_PK] PRIMARY KEY CLUSTERED  ([SpecialEducationSettingDescriptorId])
GO
PRINT N'Creating index [FK_SpecialEducationSettingDescriptor_Descriptor] on [edfi].[SpecialEducationSettingDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_SpecialEducationSettingDescriptor_Descriptor] ON [edfi].[SpecialEducationSettingDescriptor] ([SpecialEducationSettingDescriptorId])
GO
PRINT N'Creating index [FK_SpecialEducationSettingDescriptor_SpecialEducationSettingType] on [edfi].[SpecialEducationSettingDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_SpecialEducationSettingDescriptor_SpecialEducationSettingType] ON [edfi].[SpecialEducationSettingDescriptor] ([SpecialEducationSettingTypeId])
GO

