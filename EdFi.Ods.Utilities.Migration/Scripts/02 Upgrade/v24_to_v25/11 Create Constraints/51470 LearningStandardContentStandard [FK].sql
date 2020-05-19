-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LearningStandardContentStandard]'
GO
ALTER TABLE [edfi].[LearningStandardContentStandard] ADD CONSTRAINT [FK_LearningStandardContentStandard_EducationOrganization] FOREIGN KEY ([MandatingEducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[LearningStandardContentStandard] ADD CONSTRAINT [FK_LearningStandardContentStandard_LearningStandard] FOREIGN KEY ([LearningStandardId]) REFERENCES [edfi].[LearningStandard] ([LearningStandardId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[LearningStandardContentStandard] ADD CONSTRAINT [FK_LearningStandardContentStandard_PublicationStatusType] FOREIGN KEY ([PublicationStatusTypeId]) REFERENCES [edfi].[PublicationStatusType] ([PublicationStatusTypeId])
GO
