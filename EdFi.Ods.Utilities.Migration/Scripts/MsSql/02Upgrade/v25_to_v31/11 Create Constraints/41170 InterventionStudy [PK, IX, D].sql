-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionStudy_PK] on [edfi].[InterventionStudy]'
GO
ALTER TABLE [edfi].[InterventionStudy] ADD CONSTRAINT [InterventionStudy_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionStudyIdentificationCode])
GO

PRINT N'Creating index [UX_InterventionStudy_Id] on [edfi].[InterventionStudy]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_InterventionStudy_Id] ON [edfi].[InterventionStudy] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_InterventionStudy_DeliveryMethodDescriptor] on [edfi].[InterventionStudy]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudy_DeliveryMethodDescriptor] ON [edfi].[InterventionStudy] ([DeliveryMethodDescriptorId])
GO

PRINT N'Creating index [FK_InterventionStudy_EducationOrganization] on [edfi].[InterventionStudy]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudy_EducationOrganization] ON [edfi].[InterventionStudy] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_InterventionStudy_InterventionClassDescriptor] on [edfi].[InterventionStudy]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudy_InterventionClassDescriptor] ON [edfi].[InterventionStudy] ([InterventionClassDescriptorId])
GO

PRINT N'Creating index [FK_InterventionStudy_InterventionPrescription] on [edfi].[InterventionStudy]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudy_InterventionPrescription] ON [edfi].[InterventionStudy] ([InterventionPrescriptionEducationOrganizationId], [InterventionPrescriptionIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionStudy]'
GO
ALTER TABLE [edfi].[InterventionStudy] ADD CONSTRAINT [InterventionStudy_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[InterventionStudy] ADD CONSTRAINT [InterventionStudy_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[InterventionStudy] ADD CONSTRAINT [InterventionStudy_DF_Id] DEFAULT (newid()) FOR [Id]
GO
