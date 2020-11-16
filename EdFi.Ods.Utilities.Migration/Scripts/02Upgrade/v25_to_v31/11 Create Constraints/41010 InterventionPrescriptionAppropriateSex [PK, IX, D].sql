-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionPrescriptionAppropriateSex_PK] on [edfi].[InterventionPrescriptionAppropriateSex]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionAppropriateSex] ADD CONSTRAINT [InterventionPrescriptionAppropriateSex_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionPrescriptionIdentificationCode], [SexDescriptorId])
GO

PRINT N'Creating index [FK_InterventionPrescriptionAppropriateSex_InterventionPrescription] on [edfi].[InterventionPrescriptionAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionAppropriateSex_InterventionPrescription] ON [edfi].[InterventionPrescriptionAppropriateSex] ([EducationOrganizationId], [InterventionPrescriptionIdentificationCode])
GO

PRINT N'Creating index [FK_InterventionPrescriptionAppropriateSex_SexDescriptor] on [edfi].[InterventionPrescriptionAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionAppropriateSex_SexDescriptor] ON [edfi].[InterventionPrescriptionAppropriateSex] ([SexDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[InterventionPrescriptionAppropriateSex]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionAppropriateSex] ADD CONSTRAINT [InterventionPrescriptionAppropriateSex_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
