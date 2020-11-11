-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffOtherName_PK] on [edfi].[StaffOtherName]'
GO
ALTER TABLE [edfi].[StaffOtherName] ADD CONSTRAINT [StaffOtherName_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [OtherNameTypeId])
GO
PRINT N'Creating index [FK_StaffOtherName_OtherNameType] on [edfi].[StaffOtherName]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffOtherName_OtherNameType] ON [edfi].[StaffOtherName] ([OtherNameTypeId])
GO
PRINT N'Creating index [FK_StaffOtherName_Staff] on [edfi].[StaffOtherName]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffOtherName_Staff] ON [edfi].[StaffOtherName] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffOtherName]'
GO
ALTER TABLE [edfi].[StaffOtherName] ADD CONSTRAINT [StaffOtherName_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

