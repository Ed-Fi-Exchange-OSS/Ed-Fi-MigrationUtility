-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[DisciplineIncidentWeapon]'
GO
ALTER TABLE [edfi].[DisciplineIncidentWeapon] ADD CONSTRAINT [FK_DisciplineIncidentWeapon_DisciplineIncident] FOREIGN KEY ([IncidentIdentifier], [SchoolId]) REFERENCES [edfi].[DisciplineIncident] ([IncidentIdentifier], [SchoolId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[DisciplineIncidentWeapon] ADD CONSTRAINT [FK_DisciplineIncidentWeapon_WeaponDescriptor] FOREIGN KEY ([WeaponDescriptorId]) REFERENCES [edfi].[WeaponDescriptor] ([WeaponDescriptorId])
GO
