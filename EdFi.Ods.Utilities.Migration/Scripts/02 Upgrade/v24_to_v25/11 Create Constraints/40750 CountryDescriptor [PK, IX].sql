-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CountryDescriptor_PK] on [edfi].[CountryDescriptor]'
GO
ALTER TABLE [edfi].[CountryDescriptor] ADD CONSTRAINT [CountryDescriptor_PK] PRIMARY KEY CLUSTERED  ([CountryDescriptorId])
GO
PRINT N'Creating index [FK_CountryDescriptor_Descriptor] on [edfi].[CountryDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_CountryDescriptor_Descriptor] ON [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

