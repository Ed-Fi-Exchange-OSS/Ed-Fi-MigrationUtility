-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffAddressPeriod_PK] on [edfi].[StaffAddressPeriod]'
GO
ALTER TABLE [edfi].[StaffAddressPeriod] ADD CONSTRAINT [StaffAddressPeriod_PK] PRIMARY KEY CLUSTERED  ([AddressTypeDescriptorId], [BeginDate], [StaffUSI])
GO

PRINT N'Creating index [FK_StaffAddressPeriod_StaffAddress] on [edfi].[StaffAddressPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffAddressPeriod_StaffAddress] ON [edfi].[StaffAddressPeriod] ([AddressTypeDescriptorId], [StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffAddressPeriod]'
GO
ALTER TABLE [edfi].[StaffAddressPeriod] ADD CONSTRAINT [StaffAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
