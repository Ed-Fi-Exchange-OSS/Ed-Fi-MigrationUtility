-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ResponsibilityDescriptor_PK] on [edfi].[ResponsibilityDescriptor]'
GO
ALTER TABLE [edfi].[ResponsibilityDescriptor] ADD CONSTRAINT [ResponsibilityDescriptor_PK] PRIMARY KEY CLUSTERED  ([ResponsibilityDescriptorId])
GO
PRINT N'Creating index [FK_ResponsibilityDescriptor_Descriptor] on [edfi].[ResponsibilityDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ResponsibilityDescriptor_Descriptor] ON [edfi].[ResponsibilityDescriptor] ([ResponsibilityDescriptorId])
GO
PRINT N'Creating index [FK_ResponsibilityDescriptor_ResponsibilityType] on [edfi].[ResponsibilityDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ResponsibilityDescriptor_ResponsibilityType] ON [edfi].[ResponsibilityDescriptor] ([ResponsibilityTypeId])
GO

