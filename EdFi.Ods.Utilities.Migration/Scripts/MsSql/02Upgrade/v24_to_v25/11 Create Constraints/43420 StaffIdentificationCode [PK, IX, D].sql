-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffIdentificationCode_PK] on [edfi].[StaffIdentificationCode]'
GO
ALTER TABLE [edfi].[StaffIdentificationCode] ADD CONSTRAINT [StaffIdentificationCode_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [StaffIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_StaffIdentificationCode_StaffIdentificationSystemDescriptor] on [edfi].[StaffIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffIdentificationCode_StaffIdentificationSystemDescriptor] ON [edfi].[StaffIdentificationCode] ([StaffIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_StaffIdentificationCode_Staff] on [edfi].[StaffIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffIdentificationCode_Staff] ON [edfi].[StaffIdentificationCode] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffIdentificationCode]'
GO
ALTER TABLE [edfi].[StaffIdentificationCode] ADD CONSTRAINT [StaffIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

