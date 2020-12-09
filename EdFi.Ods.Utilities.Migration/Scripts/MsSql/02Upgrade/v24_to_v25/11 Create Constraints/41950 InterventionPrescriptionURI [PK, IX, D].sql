-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionPrescriptionURI_PK] on [edfi].[InterventionPrescriptionURI]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionURI] ADD CONSTRAINT [InterventionPrescriptionURI_PK] PRIMARY KEY CLUSTERED  ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId], [URI])
GO
PRINT N'Creating index [FK_InterventionPrescriptionURI_InterventionPrescription] on [edfi].[InterventionPrescriptionURI]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionURI_InterventionPrescription] ON [edfi].[InterventionPrescriptionURI] ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[InterventionPrescriptionURI]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionURI] ADD CONSTRAINT [InterventionPrescriptionURI_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

