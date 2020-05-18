-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionStudyURI_PK] on [edfi].[InterventionStudyURI]'
GO
ALTER TABLE [edfi].[InterventionStudyURI] ADD CONSTRAINT [InterventionStudyURI_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionStudyIdentificationCode], [URI])
GO

PRINT N'Creating index [FK_InterventionStudyURI_InterventionStudy] on [edfi].[InterventionStudyURI]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyURI_InterventionStudy] ON [edfi].[InterventionStudyURI] ([EducationOrganizationId], [InterventionStudyIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionStudyURI]'
GO
ALTER TABLE [edfi].[InterventionStudyURI] ADD CONSTRAINT [InterventionStudyURI_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
