-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionStudyAppropriateSex_PK] on [edfi].[InterventionStudyAppropriateSex]'
GO
ALTER TABLE [edfi].[InterventionStudyAppropriateSex] ADD CONSTRAINT [InterventionStudyAppropriateSex_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionStudyIdentificationCode], [SexDescriptorId])
GO

PRINT N'Creating index [FK_InterventionStudyAppropriateSex_InterventionStudy] on [edfi].[InterventionStudyAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyAppropriateSex_InterventionStudy] ON [edfi].[InterventionStudyAppropriateSex] ([EducationOrganizationId], [InterventionStudyIdentificationCode])
GO

PRINT N'Creating index [FK_InterventionStudyAppropriateSex_SexDescriptor] on [edfi].[InterventionStudyAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyAppropriateSex_SexDescriptor] ON [edfi].[InterventionStudyAppropriateSex] ([SexDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[InterventionStudyAppropriateSex]'
GO
ALTER TABLE [edfi].[InterventionStudyAppropriateSex] ADD CONSTRAINT [InterventionStudyAppropriateSex_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
