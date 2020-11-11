-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentInternationalAddress_PK] on [edfi].[StudentInternationalAddress]'
GO
ALTER TABLE [edfi].[StudentInternationalAddress] ADD CONSTRAINT [StudentInternationalAddress_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [AddressTypeId])
GO
PRINT N'Creating index [FK_StudentInternationalAddress_AddressType] on [edfi].[StudentInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInternationalAddress_AddressType] ON [edfi].[StudentInternationalAddress] ([AddressTypeId])
GO
PRINT N'Creating index [FK_StudentInternationalAddress_CountryDescriptor] on [edfi].[StudentInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInternationalAddress_CountryDescriptor] ON [edfi].[StudentInternationalAddress] ([CountryDescriptorId])
GO
PRINT N'Creating index [FK_StudentInternationalAddress_Student] on [edfi].[StudentInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInternationalAddress_Student] ON [edfi].[StudentInternationalAddress] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentInternationalAddress]'
GO
ALTER TABLE [edfi].[StudentInternationalAddress] ADD CONSTRAINT [StudentInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

