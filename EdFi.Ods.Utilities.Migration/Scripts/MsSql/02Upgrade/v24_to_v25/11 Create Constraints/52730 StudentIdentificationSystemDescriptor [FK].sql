-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentIdentificationSystemDescriptor]'
GO
ALTER TABLE [edfi].[StudentIdentificationSystemDescriptor] ADD CONSTRAINT [FK_StudentIdentificationSystemDescriptor_Descriptor] FOREIGN KEY ([StudentIdentificationSystemDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId])
GO
ALTER TABLE [edfi].[StudentIdentificationSystemDescriptor] ADD CONSTRAINT [FK_StudentIdentificationSystemDescriptor_StudentIdentificationSystemType] FOREIGN KEY ([StudentIdentificationSystemTypeId]) REFERENCES [edfi].[StudentIdentificationSystemType] ([StudentIdentificationSystemTypeId])
GO
