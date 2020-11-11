-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffTelephone_PK] on [edfi].[StaffTelephone]'
GO
ALTER TABLE [edfi].[StaffTelephone] ADD CONSTRAINT [StaffTelephone_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [TelephoneNumberTypeDescriptorId])
GO

PRINT N'Creating index [FK_StaffTelephone_Staff] on [edfi].[StaffTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffTelephone_Staff] ON [edfi].[StaffTelephone] ([StaffUSI])
GO

PRINT N'Creating index [FK_StaffTelephone_TelephoneNumberTypeDescriptor] on [edfi].[StaffTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffTelephone_TelephoneNumberTypeDescriptor] ON [edfi].[StaffTelephone] ([TelephoneNumberTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StaffTelephone]'
GO
ALTER TABLE [edfi].[StaffTelephone] ADD CONSTRAINT [StaffTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
