-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffLanguageUse]'
GO
ALTER TABLE [edfi].[StaffLanguageUse] ADD CONSTRAINT [FK_StaffLanguageUse_LanguageUseDescriptor] FOREIGN KEY ([LanguageUseDescriptorId]) REFERENCES [edfi].[LanguageUseDescriptor] ([LanguageUseDescriptorId])
GO
ALTER TABLE [edfi].[StaffLanguageUse] ADD CONSTRAINT [FK_StaffLanguageUse_StaffLanguage] FOREIGN KEY ([LanguageDescriptorId], [StaffUSI]) REFERENCES [edfi].[StaffLanguage] ([LanguageDescriptorId], [StaffUSI]) ON DELETE CASCADE
GO
