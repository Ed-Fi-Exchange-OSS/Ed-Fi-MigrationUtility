-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffInternationalAddress_PK] on [edfi].[StaffInternationalAddress]'
GO
ALTER TABLE [edfi].[StaffInternationalAddress] ADD CONSTRAINT [StaffInternationalAddress_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [AddressTypeId])
GO
PRINT N'Creating index [FK_StaffInternationalAddress_AddressType] on [edfi].[StaffInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffInternationalAddress_AddressType] ON [edfi].[StaffInternationalAddress] ([AddressTypeId])
GO
PRINT N'Creating index [FK_StaffInternationalAddress_CountryDescriptor] on [edfi].[StaffInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffInternationalAddress_CountryDescriptor] ON [edfi].[StaffInternationalAddress] ([CountryDescriptorId])
GO
PRINT N'Creating index [FK_StaffInternationalAddress_Staff] on [edfi].[StaffInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffInternationalAddress_Staff] ON [edfi].[StaffInternationalAddress] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffInternationalAddress]'
GO
ALTER TABLE [edfi].[StaffInternationalAddress] ADD CONSTRAINT [StaffInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

