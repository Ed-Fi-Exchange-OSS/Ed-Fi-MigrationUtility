-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffInternationalAddress]'
GO
ALTER TABLE [edfi].[StaffInternationalAddress] ADD CONSTRAINT [FK_StaffInternationalAddress_AddressType] FOREIGN KEY ([AddressTypeId]) REFERENCES [edfi].[AddressType] ([AddressTypeId])
GO
ALTER TABLE [edfi].[StaffInternationalAddress] ADD CONSTRAINT [FK_StaffInternationalAddress_CountryDescriptor] FOREIGN KEY ([CountryDescriptorId]) REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO
ALTER TABLE [edfi].[StaffInternationalAddress] ADD CONSTRAINT [FK_StaffInternationalAddress_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE
GO
