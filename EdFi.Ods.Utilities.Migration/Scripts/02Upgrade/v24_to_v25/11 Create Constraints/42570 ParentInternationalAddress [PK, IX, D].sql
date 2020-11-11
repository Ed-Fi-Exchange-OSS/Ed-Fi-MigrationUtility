-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ParentInternationalAddress_PK] on [edfi].[ParentInternationalAddress]'
GO
ALTER TABLE [edfi].[ParentInternationalAddress] ADD CONSTRAINT [ParentInternationalAddress_PK] PRIMARY KEY CLUSTERED  ([ParentUSI], [AddressTypeId])
GO
PRINT N'Creating index [FK_ParentInternationalAddress_AddressType] on [edfi].[ParentInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentInternationalAddress_AddressType] ON [edfi].[ParentInternationalAddress] ([AddressTypeId])
GO
PRINT N'Creating index [FK_ParentInternationalAddress_CountryDescriptor] on [edfi].[ParentInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentInternationalAddress_CountryDescriptor] ON [edfi].[ParentInternationalAddress] ([CountryDescriptorId])
GO
PRINT N'Creating index [FK_ParentInternationalAddress_Parent] on [edfi].[ParentInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentInternationalAddress_Parent] ON [edfi].[ParentInternationalAddress] ([ParentUSI])
GO

PRINT N'Adding constraints to [edfi].[ParentInternationalAddress]'
GO
ALTER TABLE [edfi].[ParentInternationalAddress] ADD CONSTRAINT [ParentInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

