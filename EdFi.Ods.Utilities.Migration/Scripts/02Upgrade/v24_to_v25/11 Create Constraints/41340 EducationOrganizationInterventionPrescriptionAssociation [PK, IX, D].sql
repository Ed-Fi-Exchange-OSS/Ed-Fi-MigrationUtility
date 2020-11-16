-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationInterventionPrescriptionAssociation_PK] on [edfi].[EducationOrganizationInterventionPrescriptionAssociation]'
GO
ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation] ADD CONSTRAINT [EducationOrganizationInterventionPrescriptionAssociation_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionPrescriptionIdentificationCode], [InterventionPrescriptionEducationOrganizationId])
GO
PRINT N'Creating index [UX_EducationOrganizationInterventionPrescriptionAssociation_Id] on [edfi].[EducationOrganizationInterventionPrescriptionAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EducationOrganizationInterventionPrescriptionAssociation_Id] ON [edfi].[EducationOrganizationInterventionPrescriptionAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_EducationOrganizationInterventionPrescriptionAssociation_EducationOrganization] on [edfi].[EducationOrganizationInterventionPrescriptionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationInterventionPrescriptionAssociation_EducationOrganization] ON [edfi].[EducationOrganizationInterventionPrescriptionAssociation] ([EducationOrganizationId])
GO
PRINT N'Creating index [FK_EducationOrganizationInterventionPrescriptionAssociation_InterventionPrescription] on [edfi].[EducationOrganizationInterventionPrescriptionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationInterventionPrescriptionAssociation_InterventionPrescription] ON [edfi].[EducationOrganizationInterventionPrescriptionAssociation] ([InterventionPrescriptionIdentificationCode], [InterventionPrescriptionEducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationInterventionPrescriptionAssociation]'
GO
ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation] ADD CONSTRAINT [EducationOrganizationInterventionPrescriptionAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation] ADD CONSTRAINT [EducationOrganizationInterventionPrescriptionAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation] ADD CONSTRAINT [EducationOrganizationInterventionPrescriptionAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO

