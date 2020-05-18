-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[InterventionPrescriptionPopulationServed]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionPopulationServed] ADD CONSTRAINT [FK_InterventionPrescriptionPopulationServed_InterventionPrescription] FOREIGN KEY ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId]) REFERENCES [edfi].[InterventionPrescription] ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[InterventionPrescriptionPopulationServed] ADD CONSTRAINT [FK_InterventionPrescriptionPopulationServed_PopulationServedType] FOREIGN KEY ([PopulationServedTypeId]) REFERENCES [edfi].[PopulationServedType] ([PopulationServedTypeId])
GO
