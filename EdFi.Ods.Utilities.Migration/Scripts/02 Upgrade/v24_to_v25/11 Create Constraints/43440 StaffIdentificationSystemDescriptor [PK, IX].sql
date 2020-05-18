-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffIdentificationSystemDescriptor_PK] on [edfi].[StaffIdentificationSystemDescriptor]'
GO
ALTER TABLE [edfi].[StaffIdentificationSystemDescriptor] ADD CONSTRAINT [StaffIdentificationSystemDescriptor_PK] PRIMARY KEY CLUSTERED  ([StaffIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_StaffIdentificationSystemDescriptor_Descriptor] on [edfi].[StaffIdentificationSystemDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffIdentificationSystemDescriptor_Descriptor] ON [edfi].[StaffIdentificationSystemDescriptor] ([StaffIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_StaffIdentificationSystemDescriptor_StaffIdentificationSystemType] on [edfi].[StaffIdentificationSystemDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffIdentificationSystemDescriptor_StaffIdentificationSystemType] ON [edfi].[StaffIdentificationSystemDescriptor] ([StaffIdentificationSystemTypeId])
GO

