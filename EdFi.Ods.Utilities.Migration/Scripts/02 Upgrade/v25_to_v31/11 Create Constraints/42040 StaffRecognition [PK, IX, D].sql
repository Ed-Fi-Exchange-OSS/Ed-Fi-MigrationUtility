-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffRecognition_PK] on [edfi].[StaffRecognition]'
GO
ALTER TABLE [edfi].[StaffRecognition] ADD CONSTRAINT [StaffRecognition_PK] PRIMARY KEY CLUSTERED  ([RecognitionTypeDescriptorId], [StaffUSI])
GO

PRINT N'Creating index [FK_StaffRecognition_AchievementCategoryDescriptor] on [edfi].[StaffRecognition]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffRecognition_AchievementCategoryDescriptor] ON [edfi].[StaffRecognition] ([AchievementCategoryDescriptorId])
GO

PRINT N'Creating index [FK_StaffRecognition_RecognitionTypeDescriptor] on [edfi].[StaffRecognition]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffRecognition_RecognitionTypeDescriptor] ON [edfi].[StaffRecognition] ([RecognitionTypeDescriptorId])
GO

PRINT N'Creating index [FK_StaffRecognition_Staff] on [edfi].[StaffRecognition]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffRecognition_Staff] ON [edfi].[StaffRecognition] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffRecognition]'
GO
ALTER TABLE [edfi].[StaffRecognition] ADD CONSTRAINT [StaffRecognition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
