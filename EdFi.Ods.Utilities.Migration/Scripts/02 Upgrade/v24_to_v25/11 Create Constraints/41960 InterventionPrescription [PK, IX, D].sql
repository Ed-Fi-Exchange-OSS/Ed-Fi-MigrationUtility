-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionPrescription_PK] on [edfi].[InterventionPrescription]'
GO
ALTER TABLE [edfi].[InterventionPrescription] ADD CONSTRAINT [InterventionPrescription_PK] PRIMARY KEY CLUSTERED  ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId])
GO
PRINT N'Creating index [UX_InterventionPrescription_Id] on [edfi].[InterventionPrescription]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_InterventionPrescription_Id] ON [edfi].[InterventionPrescription] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_InterventionPrescription_DeliveryMethodType] on [edfi].[InterventionPrescription]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescription_DeliveryMethodType] ON [edfi].[InterventionPrescription] ([DeliveryMethodTypeId])
GO
PRINT N'Creating index [FK_InterventionPrescription_EducationOrganization] on [edfi].[InterventionPrescription]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescription_EducationOrganization] ON [edfi].[InterventionPrescription] ([EducationOrganizationId])
GO
PRINT N'Creating index [FK_InterventionPrescription_InterventionClassType] on [edfi].[InterventionPrescription]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescription_InterventionClassType] ON [edfi].[InterventionPrescription] ([InterventionClassTypeId])
GO

PRINT N'Adding constraints to [edfi].[InterventionPrescription]'
GO
ALTER TABLE [edfi].[InterventionPrescription] ADD CONSTRAINT [InterventionPrescription_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[InterventionPrescription] ADD CONSTRAINT [InterventionPrescription_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[InterventionPrescription] ADD CONSTRAINT [InterventionPrescription_DF_Id] DEFAULT (newid()) FOR [Id]
GO

