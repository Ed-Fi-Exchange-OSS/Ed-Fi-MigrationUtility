-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE [ExternalSchemaWithUnknownName].[StaffAddressExtension] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    CONSTRAINT [StaffAddressExtension_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [StaffUSI] ASC
    ))

ALTER TABLE [ExternalSchemaWithUnknownName].[StaffAddressExtension] WITH CHECK ADD CONSTRAINT [FK_StaffAddressExtension_StaffAddress] FOREIGN KEY ([AddressTypeDescriptorId], [StaffUSI])
REFERENCES [edfi].[StaffAddress] ([AddressTypeDescriptorId], [StaffUSI])
ON DELETE CASCADE