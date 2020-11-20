-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[InterventionPrescriptionEducationContent]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionEducationContent] ADD CONSTRAINT [FK_InterventionPrescriptionEducationContent_EducationContent] FOREIGN KEY ([ContentIdentifier]) REFERENCES [edfi].[EducationContent] ([ContentIdentifier])
GO
ALTER TABLE [edfi].[InterventionPrescriptionEducationContent] ADD CONSTRAINT [FK_InterventionPrescriptionEducationContent_InterventionPrescription] FOREIGN KEY ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId]) REFERENCES [edfi].[InterventionPrescription] ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId]) ON DELETE CASCADE
GO
