-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[InterventionPopulationServed]'
GO
ALTER TABLE [edfi].[InterventionPopulationServed] ADD CONSTRAINT [FK_InterventionPopulationServed_Intervention] FOREIGN KEY ([InterventionIdentificationCode], [EducationOrganizationId]) REFERENCES [edfi].[Intervention] ([InterventionIdentificationCode], [EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[InterventionPopulationServed] ADD CONSTRAINT [FK_InterventionPopulationServed_PopulationServedType] FOREIGN KEY ([PopulationServedTypeId]) REFERENCES [edfi].[PopulationServedType] ([PopulationServedTypeId])
GO
