-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionDiagnosis_PK] on [edfi].[InterventionDiagnosis]'
GO
ALTER TABLE [edfi].[InterventionDiagnosis] ADD CONSTRAINT [InterventionDiagnosis_PK] PRIMARY KEY CLUSTERED  ([InterventionIdentificationCode], [EducationOrganizationId], [DiagnosisDescriptorId])
GO
PRINT N'Creating index [FK_InterventionDiagnosis_DiagnosisDescriptor] on [edfi].[InterventionDiagnosis]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionDiagnosis_DiagnosisDescriptor] ON [edfi].[InterventionDiagnosis] ([DiagnosisDescriptorId])
GO
PRINT N'Creating index [FK_InterventionDiagnosis_Intervention] on [edfi].[InterventionDiagnosis]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionDiagnosis_Intervention] ON [edfi].[InterventionDiagnosis] ([InterventionIdentificationCode], [EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[InterventionDiagnosis]'
GO
ALTER TABLE [edfi].[InterventionDiagnosis] ADD CONSTRAINT [InterventionDiagnosis_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

