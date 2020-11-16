-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ReasonExitedDescriptor_PK] on [edfi].[ReasonExitedDescriptor]'
GO
ALTER TABLE [edfi].[ReasonExitedDescriptor] ADD CONSTRAINT [ReasonExitedDescriptor_PK] PRIMARY KEY CLUSTERED  ([ReasonExitedDescriptorId])
GO
PRINT N'Creating index [FK_ReasonExitedDescriptor_Descriptor] on [edfi].[ReasonExitedDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ReasonExitedDescriptor_Descriptor] ON [edfi].[ReasonExitedDescriptor] ([ReasonExitedDescriptorId])
GO
PRINT N'Creating index [FK_ReasonExitedDescriptor_ReasonExitedType] on [edfi].[ReasonExitedDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ReasonExitedDescriptor_ReasonExitedType] ON [edfi].[ReasonExitedDescriptor] ([ReasonExitedTypeId])
GO

