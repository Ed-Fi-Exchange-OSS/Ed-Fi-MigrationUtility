-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionPrescriptionAppropriateSex_PK] on [edfi].[InterventionPrescriptionAppropriateSex]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionAppropriateSex] ADD CONSTRAINT [InterventionPrescriptionAppropriateSex_PK] PRIMARY KEY CLUSTERED  ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId], [SexTypeId])
GO
PRINT N'Creating index [FK_InterventionPrescriptionAppropriateSex_InterventionPrescription] on [edfi].[InterventionPrescriptionAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionAppropriateSex_InterventionPrescription] ON [edfi].[InterventionPrescriptionAppropriateSex] ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_InterventionPrescriptionAppropriateSex_SexType] on [edfi].[InterventionPrescriptionAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionAppropriateSex_SexType] ON [edfi].[InterventionPrescriptionAppropriateSex] ([SexTypeId])
GO

PRINT N'Adding constraints to [edfi].[InterventionPrescriptionAppropriateSex]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionAppropriateSex] ADD CONSTRAINT [InterventionPrescriptionAppropriateSex_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

