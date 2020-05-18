-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisciplineIncidentWeapon_PK] on [edfi].[DisciplineIncidentWeapon]'
GO
ALTER TABLE [edfi].[DisciplineIncidentWeapon] ADD CONSTRAINT [DisciplineIncidentWeapon_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [IncidentIdentifier], [WeaponDescriptorId])
GO
PRINT N'Creating index [FK_DisciplineIncidentWeapon_DisciplineIncident] on [edfi].[DisciplineIncidentWeapon]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineIncidentWeapon_DisciplineIncident] ON [edfi].[DisciplineIncidentWeapon] ([IncidentIdentifier], [SchoolId])
GO
PRINT N'Creating index [FK_DisciplineIncidentWeapon_WeaponDescriptor] on [edfi].[DisciplineIncidentWeapon]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineIncidentWeapon_WeaponDescriptor] ON [edfi].[DisciplineIncidentWeapon] ([WeaponDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[DisciplineIncidentWeapon]'
GO
ALTER TABLE [edfi].[DisciplineIncidentWeapon] ADD CONSTRAINT [DisciplineIncidentWeapon_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

