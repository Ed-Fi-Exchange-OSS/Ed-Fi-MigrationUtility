-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[InterventionStudyStateAbbreviation]'
GO
ALTER TABLE [edfi].[InterventionStudyStateAbbreviation] ADD CONSTRAINT [FK_InterventionStudyStateAbbreviation_InterventionStudy] FOREIGN KEY ([InterventionStudyIdentificationCode], [EducationOrganizationId]) REFERENCES [edfi].[InterventionStudy] ([InterventionStudyIdentificationCode], [EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[InterventionStudyStateAbbreviation] ADD CONSTRAINT [FK_InterventionStudyStateAbbreviation_StateAbbreviationType] FOREIGN KEY ([StateAbbreviationTypeId]) REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId])
GO
