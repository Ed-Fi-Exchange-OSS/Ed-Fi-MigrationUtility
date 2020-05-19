-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffAddress]'
GO
ALTER TABLE [edfi].[StaffAddress] ADD CONSTRAINT [FK_StaffAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId]) REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO
ALTER TABLE [edfi].[StaffAddress] ADD CONSTRAINT [FK_StaffAddress_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StaffAddress] ADD CONSTRAINT [FK_StaffAddress_StateAbbreviationDescriptor] FOREIGN KEY ([StateAbbreviationDescriptorId]) REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO
ALTER TABLE [edfi].[StaffAddress] WITH CHECK ADD CONSTRAINT [FK_StaffAddress_LocaleDescriptor] FOREIGN KEY ([LocaleDescriptorId]) REFERENCES [edfi].[LocaleDescriptor] ([LocaleDescriptorId])
GO