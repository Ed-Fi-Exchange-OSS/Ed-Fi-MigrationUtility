-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffLanguageUse_PK] on [edfi].[StaffLanguageUse]'
GO
ALTER TABLE [edfi].[StaffLanguageUse] ADD CONSTRAINT [StaffLanguageUse_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [LanguageDescriptorId], [LanguageUseTypeId])
GO
PRINT N'Creating index [FK_StaffLanguageUse_LanguageUseType] on [edfi].[StaffLanguageUse]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffLanguageUse_LanguageUseType] ON [edfi].[StaffLanguageUse] ([LanguageUseTypeId])
GO
PRINT N'Creating index [FK_StaffLanguageUse_StaffLanguage] on [edfi].[StaffLanguageUse]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffLanguageUse_StaffLanguage] ON [edfi].[StaffLanguageUse] ([StaffUSI], [LanguageDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StaffLanguageUse]'
GO
ALTER TABLE [edfi].[StaffLanguageUse] ADD CONSTRAINT [StaffLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

