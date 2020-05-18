-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisabilityDescriptor_PK] on [edfi].[DisabilityDescriptor]'
GO
ALTER TABLE [edfi].[DisabilityDescriptor] ADD CONSTRAINT [DisabilityDescriptor_PK] PRIMARY KEY CLUSTERED  ([DisabilityDescriptorId])
GO
PRINT N'Creating index [FK_DisabilityDescriptor_DisabilityCategoryType] on [edfi].[DisabilityDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_DisabilityDescriptor_DisabilityCategoryType] ON [edfi].[DisabilityDescriptor] ([DisabilityCategoryTypeId])
GO
PRINT N'Creating index [FK_DisabilityDescriptor_Descriptor] on [edfi].[DisabilityDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_DisabilityDescriptor_Descriptor] ON [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO
PRINT N'Creating index [FK_DisabilityDescriptor_DisabilityType] on [edfi].[DisabilityDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_DisabilityDescriptor_DisabilityType] ON [edfi].[DisabilityDescriptor] ([DisabilityTypeId])
GO

