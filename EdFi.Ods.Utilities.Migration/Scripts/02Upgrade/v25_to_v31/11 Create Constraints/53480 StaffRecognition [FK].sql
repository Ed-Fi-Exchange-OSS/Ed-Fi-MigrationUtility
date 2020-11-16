-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffRecognition]'
GO
ALTER TABLE [edfi].[StaffRecognition] ADD CONSTRAINT [FK_StaffRecognition_AchievementCategoryDescriptor] FOREIGN KEY ([AchievementCategoryDescriptorId]) REFERENCES [edfi].[AchievementCategoryDescriptor] ([AchievementCategoryDescriptorId])
GO
ALTER TABLE [edfi].[StaffRecognition] ADD CONSTRAINT [FK_StaffRecognition_RecognitionTypeDescriptor] FOREIGN KEY ([RecognitionTypeDescriptorId]) REFERENCES [edfi].[RecognitionTypeDescriptor] ([RecognitionTypeDescriptorId])
GO
ALTER TABLE [edfi].[StaffRecognition] ADD CONSTRAINT [FK_StaffRecognition_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE
GO
