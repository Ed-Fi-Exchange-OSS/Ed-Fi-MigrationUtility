-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionStudyAppropriateSex_PK] on [edfi].[InterventionStudyAppropriateSex]'
GO
ALTER TABLE [edfi].[InterventionStudyAppropriateSex] ADD CONSTRAINT [InterventionStudyAppropriateSex_PK] PRIMARY KEY CLUSTERED  ([InterventionStudyIdentificationCode], [EducationOrganizationId], [SexTypeId])
GO
PRINT N'Creating index [FK_InterventionStudyAppropriateSex_InterventionStudy] on [edfi].[InterventionStudyAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyAppropriateSex_InterventionStudy] ON [edfi].[InterventionStudyAppropriateSex] ([InterventionStudyIdentificationCode], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_InterventionStudyAppropriateSex_SexType] on [edfi].[InterventionStudyAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyAppropriateSex_SexType] ON [edfi].[InterventionStudyAppropriateSex] ([SexTypeId])
GO

PRINT N'Adding constraints to [edfi].[InterventionStudyAppropriateSex]'
GO
ALTER TABLE [edfi].[InterventionStudyAppropriateSex] ADD CONSTRAINT [InterventionStudyAppropriateSex_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

