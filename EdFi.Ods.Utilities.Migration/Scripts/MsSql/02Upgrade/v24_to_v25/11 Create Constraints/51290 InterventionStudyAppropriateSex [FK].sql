-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[InterventionStudyAppropriateSex]'
GO
ALTER TABLE [edfi].[InterventionStudyAppropriateSex] ADD CONSTRAINT [FK_InterventionStudyAppropriateSex_InterventionStudy] FOREIGN KEY ([InterventionStudyIdentificationCode], [EducationOrganizationId]) REFERENCES [edfi].[InterventionStudy] ([InterventionStudyIdentificationCode], [EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[InterventionStudyAppropriateSex] ADD CONSTRAINT [FK_InterventionStudyAppropriateSex_SexType] FOREIGN KEY ([SexTypeId]) REFERENCES [edfi].[SexType] ([SexTypeId])
GO
