-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffLanguage_PK] on [edfi].[StaffLanguage]'
GO
ALTER TABLE [edfi].[StaffLanguage] ADD CONSTRAINT [StaffLanguage_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [LanguageDescriptorId])
GO
PRINT N'Creating index [FK_StaffLanguage_LanguageDescriptor] on [edfi].[StaffLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffLanguage_LanguageDescriptor] ON [edfi].[StaffLanguage] ([LanguageDescriptorId])
GO
PRINT N'Creating index [FK_StaffLanguage_Staff] on [edfi].[StaffLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffLanguage_Staff] ON [edfi].[StaffLanguage] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffLanguage]'
GO
ALTER TABLE [edfi].[StaffLanguage] ADD CONSTRAINT [StaffLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

