-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ParentInternationalAddress]'
GO
ALTER TABLE [edfi].[ParentInternationalAddress] ADD CONSTRAINT [FK_ParentInternationalAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId]) REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO
ALTER TABLE [edfi].[ParentInternationalAddress] ADD CONSTRAINT [FK_ParentInternationalAddress_CountryDescriptor] FOREIGN KEY ([CountryDescriptorId]) REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO
ALTER TABLE [edfi].[ParentInternationalAddress] ADD CONSTRAINT [FK_ParentInternationalAddress_Parent] FOREIGN KEY ([ParentUSI]) REFERENCES [edfi].[Parent] ([ParentUSI]) ON DELETE CASCADE
GO
