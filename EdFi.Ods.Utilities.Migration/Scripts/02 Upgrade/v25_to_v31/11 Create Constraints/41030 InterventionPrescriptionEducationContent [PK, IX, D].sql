-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionPrescriptionEducationContent_PK] on [edfi].[InterventionPrescriptionEducationContent]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionEducationContent] ADD CONSTRAINT [InterventionPrescriptionEducationContent_PK] PRIMARY KEY CLUSTERED  ([ContentIdentifier], [EducationOrganizationId], [InterventionPrescriptionIdentificationCode])
GO

PRINT N'Creating index [FK_InterventionPrescriptionEducationContent_EducationContent] on [edfi].[InterventionPrescriptionEducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionEducationContent_EducationContent] ON [edfi].[InterventionPrescriptionEducationContent] ([ContentIdentifier])
GO

PRINT N'Creating index [FK_InterventionPrescriptionEducationContent_InterventionPrescription] on [edfi].[InterventionPrescriptionEducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionEducationContent_InterventionPrescription] ON [edfi].[InterventionPrescriptionEducationContent] ([EducationOrganizationId], [InterventionPrescriptionIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionPrescriptionEducationContent]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionEducationContent] ADD CONSTRAINT [InterventionPrescriptionEducationContent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
