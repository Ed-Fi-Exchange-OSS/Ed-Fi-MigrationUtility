-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionInterventionPrescription_PK] on [edfi].[InterventionInterventionPrescription]'
GO
ALTER TABLE [edfi].[InterventionInterventionPrescription] ADD CONSTRAINT [InterventionInterventionPrescription_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionIdentificationCode], [InterventionPrescriptionEducationOrganizationId], [InterventionPrescriptionIdentificationCode])
GO

PRINT N'Creating index [FK_InterventionInterventionPrescription_Intervention] on [edfi].[InterventionInterventionPrescription]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionInterventionPrescription_Intervention] ON [edfi].[InterventionInterventionPrescription] ([EducationOrganizationId], [InterventionIdentificationCode])
GO

PRINT N'Creating index [FK_InterventionInterventionPrescription_InterventionPrescription] on [edfi].[InterventionInterventionPrescription]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionInterventionPrescription_InterventionPrescription] ON [edfi].[InterventionInterventionPrescription] ([InterventionPrescriptionEducationOrganizationId], [InterventionPrescriptionIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionInterventionPrescription]'
GO
ALTER TABLE [edfi].[InterventionInterventionPrescription] ADD CONSTRAINT [InterventionInterventionPrescription_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
