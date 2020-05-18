-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationContent_PK] on [edfi].[EducationContent]'
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [EducationContent_PK] PRIMARY KEY CLUSTERED  ([ContentIdentifier])
GO

PRINT N'Creating index [UX_EducationContent_Id] on [edfi].[EducationContent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EducationContent_Id] ON [edfi].[EducationContent] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_EducationContent_ContentClassDescriptor] on [edfi].[EducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContent_ContentClassDescriptor] ON [edfi].[EducationContent] ([ContentClassDescriptorId])
GO

PRINT N'Creating index [FK_EducationContent_CostRateDescriptor] on [edfi].[EducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContent_CostRateDescriptor] ON [edfi].[EducationContent] ([CostRateDescriptorId])
GO

PRINT N'Creating index [FK_EducationContent_InteractivityStyleDescriptor] on [edfi].[EducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContent_InteractivityStyleDescriptor] ON [edfi].[EducationContent] ([InteractivityStyleDescriptorId])
GO

PRINT N'Creating index [FK_EducationContent_LearningStandard] on [edfi].[EducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContent_LearningStandard] ON [edfi].[EducationContent] ([LearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[EducationContent]'
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [EducationContent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [EducationContent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [EducationContent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
