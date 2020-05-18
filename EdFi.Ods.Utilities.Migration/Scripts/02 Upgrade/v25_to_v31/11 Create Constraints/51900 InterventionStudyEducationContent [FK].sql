-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[InterventionStudyEducationContent]'
GO
ALTER TABLE [edfi].[InterventionStudyEducationContent] ADD CONSTRAINT [FK_InterventionStudyEducationContent_EducationContent] FOREIGN KEY ([ContentIdentifier]) REFERENCES [edfi].[EducationContent] ([ContentIdentifier])
GO
ALTER TABLE [edfi].[InterventionStudyEducationContent] ADD CONSTRAINT [FK_InterventionStudyEducationContent_InterventionStudy] FOREIGN KEY ([EducationOrganizationId], [InterventionStudyIdentificationCode]) REFERENCES [edfi].[InterventionStudy] ([EducationOrganizationId], [InterventionStudyIdentificationCode]) ON DELETE CASCADE
GO
