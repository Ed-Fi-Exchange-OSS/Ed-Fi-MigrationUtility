-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentIdentificationSystemDescriptor_PK] on [edfi].[StudentIdentificationSystemDescriptor]'
GO
ALTER TABLE [edfi].[StudentIdentificationSystemDescriptor] ADD CONSTRAINT [StudentIdentificationSystemDescriptor_PK] PRIMARY KEY CLUSTERED  ([StudentIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_StudentIdentificationSystemDescriptor_Descriptor] on [edfi].[StudentIdentificationSystemDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentIdentificationSystemDescriptor_Descriptor] ON [edfi].[StudentIdentificationSystemDescriptor] ([StudentIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_StudentIdentificationSystemDescriptor_StudentIdentificationSystemType] on [edfi].[StudentIdentificationSystemDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentIdentificationSystemDescriptor_StudentIdentificationSystemType] ON [edfi].[StudentIdentificationSystemDescriptor] ([StudentIdentificationSystemTypeId])
GO

