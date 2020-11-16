-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SeparationReasonDescriptor_PK] on [edfi].[SeparationReasonDescriptor]'
GO
ALTER TABLE [edfi].[SeparationReasonDescriptor] ADD CONSTRAINT [SeparationReasonDescriptor_PK] PRIMARY KEY CLUSTERED  ([SeparationReasonDescriptorId])
GO
PRINT N'Creating index [FK_SeparationReasonDescriptor_Descriptor] on [edfi].[SeparationReasonDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_SeparationReasonDescriptor_Descriptor] ON [edfi].[SeparationReasonDescriptor] ([SeparationReasonDescriptorId])
GO
PRINT N'Creating index [FK_SeparationReasonDescriptor_SeparationReasonType] on [edfi].[SeparationReasonDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_SeparationReasonDescriptor_SeparationReasonType] ON [edfi].[SeparationReasonDescriptor] ([SeparationReasonTypeId])
GO

