-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [TermDescriptor_PK] on [edfi].[TermDescriptor]'
GO
ALTER TABLE [edfi].[TermDescriptor] ADD CONSTRAINT [TermDescriptor_PK] PRIMARY KEY CLUSTERED  ([TermDescriptorId])
GO
PRINT N'Creating index [FK_TermDescriptor_Descriptor] on [edfi].[TermDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_TermDescriptor_Descriptor] ON [edfi].[TermDescriptor] ([TermDescriptorId])
GO
PRINT N'Creating index [FK_TermDescriptor_TermType] on [edfi].[TermDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_TermDescriptor_TermType] ON [edfi].[TermDescriptor] ([TermTypeId])
GO

