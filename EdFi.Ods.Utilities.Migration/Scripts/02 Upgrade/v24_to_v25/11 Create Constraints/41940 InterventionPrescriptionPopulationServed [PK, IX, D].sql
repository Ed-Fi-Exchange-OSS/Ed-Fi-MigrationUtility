-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionPrescriptionPopulationServed_PK] on [edfi].[InterventionPrescriptionPopulationServed]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionPopulationServed] ADD CONSTRAINT [InterventionPrescriptionPopulationServed_PK] PRIMARY KEY CLUSTERED  ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId], [PopulationServedTypeId])
GO
PRINT N'Creating index [FK_InterventionPrescriptionPopulationServed_InterventionPrescription] on [edfi].[InterventionPrescriptionPopulationServed]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionPopulationServed_InterventionPrescription] ON [edfi].[InterventionPrescriptionPopulationServed] ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_InterventionPrescriptionPopulationServed_PopulationServedType] on [edfi].[InterventionPrescriptionPopulationServed]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionPopulationServed_PopulationServedType] ON [edfi].[InterventionPrescriptionPopulationServed] ([PopulationServedTypeId])
GO

PRINT N'Adding constraints to [edfi].[InterventionPrescriptionPopulationServed]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionPopulationServed] ADD CONSTRAINT [InterventionPrescriptionPopulationServed_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

