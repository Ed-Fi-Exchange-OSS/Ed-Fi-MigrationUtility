-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LimitedEnglishProficiencyDescriptor_PK] on [edfi].[LimitedEnglishProficiencyDescriptor]'
GO
ALTER TABLE [edfi].[LimitedEnglishProficiencyDescriptor] ADD CONSTRAINT [LimitedEnglishProficiencyDescriptor_PK] PRIMARY KEY CLUSTERED  ([LimitedEnglishProficiencyDescriptorId])
GO
PRINT N'Creating index [FK_LimitedEnglishProficiencyDescriptor_Descriptor] on [edfi].[LimitedEnglishProficiencyDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_LimitedEnglishProficiencyDescriptor_Descriptor] ON [edfi].[LimitedEnglishProficiencyDescriptor] ([LimitedEnglishProficiencyDescriptorId])
GO
PRINT N'Creating index [FK_LimitedEnglishProficiencyDescriptor_LimitedEnglishProficiencyType] on [edfi].[LimitedEnglishProficiencyDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_LimitedEnglishProficiencyDescriptor_LimitedEnglishProficiencyType] ON [edfi].[LimitedEnglishProficiencyDescriptor] ([LimitedEnglishProficiencyTypeId])
GO

