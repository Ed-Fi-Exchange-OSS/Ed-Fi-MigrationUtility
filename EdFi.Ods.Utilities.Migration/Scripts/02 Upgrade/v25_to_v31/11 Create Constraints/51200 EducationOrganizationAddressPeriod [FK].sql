-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[EducationOrganizationAddressPeriod]'
GO
ALTER TABLE [edfi].[EducationOrganizationAddressPeriod] ADD CONSTRAINT [FK_EducationOrganizationAddressPeriod_EducationOrganizationAddress] FOREIGN KEY ([AddressTypeDescriptorId], [EducationOrganizationId]) REFERENCES [edfi].[EducationOrganizationAddress] ([AddressTypeDescriptorId], [EducationOrganizationId]) ON DELETE CASCADE
GO
