-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE [ExternalSchemaWithUnknownName].[EducationOrganizationAddressExtension] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    CONSTRAINT [EducationOrganizationAddressExtension_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [EducationOrganizationId] ASC
    ))

ALTER TABLE [ExternalSchemaWithUnknownName].[EducationOrganizationAddressExtension] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationAddressExtension_EducationOrganizationAddress] FOREIGN KEY ([AddressTypeDescriptorId], [EducationOrganizationId])
REFERENCES [edfi].[EducationOrganizationAddress] ([AddressTypeDescriptorId], [EducationOrganizationId])
ON DELETE CASCADE