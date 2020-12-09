-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [WeaponDescriptor_PK] on [edfi].[WeaponDescriptor]'
GO
ALTER TABLE [edfi].[WeaponDescriptor] ADD CONSTRAINT [WeaponDescriptor_PK] PRIMARY KEY CLUSTERED  ([WeaponDescriptorId])
GO
PRINT N'Creating index [FK_WeaponDescriptor_Descriptor] on [edfi].[WeaponDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_WeaponDescriptor_Descriptor] ON [edfi].[WeaponDescriptor] ([WeaponDescriptorId])
GO
PRINT N'Creating index [FK_WeaponDescriptor_WeaponType] on [edfi].[WeaponDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_WeaponDescriptor_WeaponType] ON [edfi].[WeaponDescriptor] ([WeaponTypeId])
GO

