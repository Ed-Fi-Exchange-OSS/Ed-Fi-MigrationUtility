-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffLanguageUse]'
GO
ALTER TABLE [edfi].[StaffLanguageUse] ADD CONSTRAINT [FK_StaffLanguageUse_LanguageUseType] FOREIGN KEY ([LanguageUseTypeId]) REFERENCES [edfi].[LanguageUseType] ([LanguageUseTypeId])
GO
ALTER TABLE [edfi].[StaffLanguageUse] ADD CONSTRAINT [FK_StaffLanguageUse_StaffLanguage] FOREIGN KEY ([StaffUSI], [LanguageDescriptorId]) REFERENCES [edfi].[StaffLanguage] ([StaffUSI], [LanguageDescriptorId]) ON DELETE CASCADE
GO
