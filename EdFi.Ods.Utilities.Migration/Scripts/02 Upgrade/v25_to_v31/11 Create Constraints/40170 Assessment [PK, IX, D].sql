-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Assessment_PK] on [edfi].[Assessment]'
GO
ALTER TABLE [edfi].[Assessment] ADD CONSTRAINT [Assessment_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Creating index [UX_Assessment_Id] on [edfi].[Assessment]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Assessment_Id] ON [edfi].[Assessment] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_Assessment_AssessmentCategoryDescriptor] on [edfi].[Assessment]'
GO
CREATE NONCLUSTERED INDEX [FK_Assessment_AssessmentCategoryDescriptor] ON [edfi].[Assessment] ([AssessmentCategoryDescriptorId])
GO

PRINT N'Creating index [FK_Assessment_EducationOrganization] on [edfi].[Assessment]'
GO
CREATE NONCLUSTERED INDEX [FK_Assessment_EducationOrganization] ON [edfi].[Assessment] ([EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[Assessment]'
GO
ALTER TABLE [edfi].[Assessment] ADD CONSTRAINT [Assessment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Assessment] ADD CONSTRAINT [Assessment_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Assessment] ADD CONSTRAINT [Assessment_DF_Id] DEFAULT (newid()) FOR [Id]
GO
