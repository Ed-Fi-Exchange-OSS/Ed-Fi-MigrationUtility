-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionStudyEducationContent_PK] on [edfi].[InterventionStudyEducationContent]'
GO
ALTER TABLE [edfi].[InterventionStudyEducationContent] ADD CONSTRAINT [InterventionStudyEducationContent_PK] PRIMARY KEY CLUSTERED  ([ContentIdentifier], [EducationOrganizationId], [InterventionStudyIdentificationCode])
GO

PRINT N'Creating index [FK_InterventionStudyEducationContent_EducationContent] on [edfi].[InterventionStudyEducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyEducationContent_EducationContent] ON [edfi].[InterventionStudyEducationContent] ([ContentIdentifier])
GO

PRINT N'Creating index [FK_InterventionStudyEducationContent_InterventionStudy] on [edfi].[InterventionStudyEducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyEducationContent_InterventionStudy] ON [edfi].[InterventionStudyEducationContent] ([EducationOrganizationId], [InterventionStudyIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionStudyEducationContent]'
GO
ALTER TABLE [edfi].[InterventionStudyEducationContent] ADD CONSTRAINT [InterventionStudyEducationContent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
