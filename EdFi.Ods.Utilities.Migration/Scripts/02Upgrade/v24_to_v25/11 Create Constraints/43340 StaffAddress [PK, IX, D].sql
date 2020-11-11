-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffAddress_PK] on [edfi].[StaffAddress]'
GO
ALTER TABLE [edfi].[StaffAddress] ADD CONSTRAINT [StaffAddress_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [AddressTypeId])
GO
PRINT N'Creating index [FK_StaffAddress_AddressType] on [edfi].[StaffAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffAddress_AddressType] ON [edfi].[StaffAddress] ([AddressTypeId])
GO
PRINT N'Creating index [FK_StaffAddress_Staff] on [edfi].[StaffAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffAddress_Staff] ON [edfi].[StaffAddress] ([StaffUSI])
GO
PRINT N'Creating index [FK_StaffAddress_StateAbbreviationType] on [edfi].[StaffAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffAddress_StateAbbreviationType] ON [edfi].[StaffAddress] ([StateAbbreviationTypeId])
GO

PRINT N'Adding constraints to [edfi].[StaffAddress]'
GO
ALTER TABLE [edfi].[StaffAddress] ADD CONSTRAINT [StaffAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

