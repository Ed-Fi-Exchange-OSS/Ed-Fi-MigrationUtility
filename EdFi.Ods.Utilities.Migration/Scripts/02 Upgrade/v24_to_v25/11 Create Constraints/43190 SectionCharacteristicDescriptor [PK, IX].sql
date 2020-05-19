-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SectionCharacteristicDescriptor_PK] on [edfi].[SectionCharacteristicDescriptor]'
GO
ALTER TABLE [edfi].[SectionCharacteristicDescriptor] ADD CONSTRAINT [SectionCharacteristicDescriptor_PK] PRIMARY KEY CLUSTERED  ([SectionCharacteristicDescriptorId])
GO
PRINT N'Creating index [FK_SectionCharacteristicDescriptor_Descriptor] on [edfi].[SectionCharacteristicDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionCharacteristicDescriptor_Descriptor] ON [edfi].[SectionCharacteristicDescriptor] ([SectionCharacteristicDescriptorId])
GO
PRINT N'Creating index [FK_SectionCharacteristicDescriptor_SectionCharacteristicType] on [edfi].[SectionCharacteristicDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionCharacteristicDescriptor_SectionCharacteristicType] ON [edfi].[SectionCharacteristicDescriptor] ([SectionCharacteristicTypeId])
GO

