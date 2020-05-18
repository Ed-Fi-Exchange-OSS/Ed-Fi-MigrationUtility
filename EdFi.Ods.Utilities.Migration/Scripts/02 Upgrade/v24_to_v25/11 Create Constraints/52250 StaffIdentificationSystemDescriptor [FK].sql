-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffIdentificationSystemDescriptor]'
GO
ALTER TABLE [edfi].[StaffIdentificationSystemDescriptor] ADD CONSTRAINT [FK_StaffIdentificationSystemDescriptor_Descriptor] FOREIGN KEY ([StaffIdentificationSystemDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId])
GO
ALTER TABLE [edfi].[StaffIdentificationSystemDescriptor] ADD CONSTRAINT [FK_StaffIdentificationSystemDescriptor_StaffIdentificationSystemType] FOREIGN KEY ([StaffIdentificationSystemTypeId]) REFERENCES [edfi].[StaffIdentificationSystemType] ([StaffIdentificationSystemTypeId])
GO
