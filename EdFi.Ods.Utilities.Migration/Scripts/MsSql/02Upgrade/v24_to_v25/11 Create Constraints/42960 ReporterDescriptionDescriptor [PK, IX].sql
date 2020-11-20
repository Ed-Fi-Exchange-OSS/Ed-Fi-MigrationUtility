-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ReporterDescriptionDescriptor_PK] on [edfi].[ReporterDescriptionDescriptor]'
GO
ALTER TABLE [edfi].[ReporterDescriptionDescriptor] ADD CONSTRAINT [ReporterDescriptionDescriptor_PK] PRIMARY KEY CLUSTERED  ([ReporterDescriptionDescriptorId])
GO
PRINT N'Creating index [FK_ReporterDescriptionDescriptor_Descriptor] on [edfi].[ReporterDescriptionDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ReporterDescriptionDescriptor_Descriptor] ON [edfi].[ReporterDescriptionDescriptor] ([ReporterDescriptionDescriptorId])
GO
PRINT N'Creating index [FK_ReporterDescriptionDescriptor_ReporterDescriptionType] on [edfi].[ReporterDescriptionDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ReporterDescriptionDescriptor_ReporterDescriptionType] ON [edfi].[ReporterDescriptionDescriptor] ([ReporterDescriptionTypeId])
GO

