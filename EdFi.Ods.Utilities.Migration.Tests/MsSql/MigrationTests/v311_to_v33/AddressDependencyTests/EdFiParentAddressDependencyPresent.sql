-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE [ExternalSchemaWithUnknownName].[ParentAddressExtension] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [ParentUSI] [INT] NOT NULL,
    CONSTRAINT [ParentAddressExtension_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [ParentUSI] ASC
    ))

ALTER TABLE [ExternalSchemaWithUnknownName].[ParentAddressExtension] WITH CHECK ADD CONSTRAINT [FK_ParentAddressExtension_ParentAddress] FOREIGN KEY ([AddressTypeDescriptorId], [ParentUSI])
REFERENCES [edfi].[ParentAddress] ([AddressTypeDescriptorId], [ParentUSI])
ON DELETE CASCADE