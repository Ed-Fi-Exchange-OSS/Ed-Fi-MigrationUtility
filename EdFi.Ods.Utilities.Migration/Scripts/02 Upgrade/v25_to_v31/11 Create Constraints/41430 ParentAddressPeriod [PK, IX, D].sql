-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ParentAddressPeriod_PK] on [edfi].[ParentAddressPeriod]'
GO
ALTER TABLE [edfi].[ParentAddressPeriod] ADD CONSTRAINT [ParentAddressPeriod_PK] PRIMARY KEY CLUSTERED  ([AddressTypeDescriptorId], [BeginDate], [ParentUSI])
GO

PRINT N'Creating index [FK_ParentAddressPeriod_ParentAddress] on [edfi].[ParentAddressPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentAddressPeriod_ParentAddress] ON [edfi].[ParentAddressPeriod] ([AddressTypeDescriptorId], [ParentUSI])
GO

PRINT N'Adding constraints to [edfi].[ParentAddressPeriod]'
GO
ALTER TABLE [edfi].[ParentAddressPeriod] ADD CONSTRAINT [ParentAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
