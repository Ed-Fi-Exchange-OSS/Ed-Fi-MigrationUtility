-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionEducationContent_PK] on [edfi].[InterventionEducationContent]'
GO
ALTER TABLE [edfi].[InterventionEducationContent] ADD CONSTRAINT [InterventionEducationContent_PK] PRIMARY KEY CLUSTERED  ([ContentIdentifier], [EducationOrganizationId], [InterventionIdentificationCode])
GO

PRINT N'Creating index [FK_InterventionEducationContent_EducationContent] on [edfi].[InterventionEducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionEducationContent_EducationContent] ON [edfi].[InterventionEducationContent] ([ContentIdentifier])
GO

PRINT N'Creating index [FK_InterventionEducationContent_Intervention] on [edfi].[InterventionEducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionEducationContent_Intervention] ON [edfi].[InterventionEducationContent] ([EducationOrganizationId], [InterventionIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionEducationContent]'
GO
ALTER TABLE [edfi].[InterventionEducationContent] ADD CONSTRAINT [InterventionEducationContent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
