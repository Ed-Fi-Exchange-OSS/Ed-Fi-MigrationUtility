-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentItem_PK] on [edfi].[AssessmentItem]'
GO
ALTER TABLE [edfi].[AssessmentItem] ADD CONSTRAINT [AssessmentItem_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO

PRINT N'Creating index [UX_AssessmentItem_Id] on [edfi].[AssessmentItem]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AssessmentItem_Id] ON [edfi].[AssessmentItem] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_AssessmentItem_Assessment] on [edfi].[AssessmentItem]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentItem_Assessment] ON [edfi].[AssessmentItem] ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentItem_AssessmentItemCategoryDescriptor] on [edfi].[AssessmentItem]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentItem_AssessmentItemCategoryDescriptor] ON [edfi].[AssessmentItem] ([AssessmentItemCategoryDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentItem]'
GO
ALTER TABLE [edfi].[AssessmentItem] ADD CONSTRAINT [AssessmentItem_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AssessmentItem] ADD CONSTRAINT [AssessmentItem_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AssessmentItem] ADD CONSTRAINT [AssessmentItem_DF_Id] DEFAULT (newid()) FOR [Id]
GO
