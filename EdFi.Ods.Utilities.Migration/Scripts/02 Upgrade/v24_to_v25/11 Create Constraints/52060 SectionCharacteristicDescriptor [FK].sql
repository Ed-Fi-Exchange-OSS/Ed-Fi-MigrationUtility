-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[SectionCharacteristicDescriptor]'
GO
ALTER TABLE [edfi].[SectionCharacteristicDescriptor] ADD CONSTRAINT [FK_SectionCharacteristicDescriptor_Descriptor] FOREIGN KEY ([SectionCharacteristicDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[SectionCharacteristicDescriptor] ADD CONSTRAINT [FK_SectionCharacteristicDescriptor_SectionCharacteristicType] FOREIGN KEY ([SectionCharacteristicTypeId]) REFERENCES [edfi].[SectionCharacteristicType] ([SectionCharacteristicTypeId])
GO
