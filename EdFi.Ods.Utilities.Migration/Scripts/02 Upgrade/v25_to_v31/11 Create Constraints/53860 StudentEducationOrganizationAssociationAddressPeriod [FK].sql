-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentEducationOrganizationAssociationAddressPeriod]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddressPeriod] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationAddressPeriod_StudentEducationOrganizationAssociationAddress] FOREIGN KEY ([AddressTypeDescriptorId], [EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociationAddress] ([AddressTypeDescriptorId], [EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE
GO
