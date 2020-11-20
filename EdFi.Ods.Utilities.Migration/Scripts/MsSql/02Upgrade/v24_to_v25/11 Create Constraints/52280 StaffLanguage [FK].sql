-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffLanguage]'
GO
ALTER TABLE [edfi].[StaffLanguage] ADD CONSTRAINT [FK_StaffLanguage_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId]) REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO
ALTER TABLE [edfi].[StaffLanguage] ADD CONSTRAINT [FK_StaffLanguage_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE
GO
