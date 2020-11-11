-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EntryTypeDescriptor_PK] on [edfi].[EntryTypeDescriptor]'
GO
ALTER TABLE [edfi].[EntryTypeDescriptor] ADD CONSTRAINT [EntryTypeDescriptor_PK] PRIMARY KEY CLUSTERED  ([EntryTypeDescriptorId])
GO
PRINT N'Creating index [FK_EntryTypeDescriptor_Descriptor] on [edfi].[EntryTypeDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_EntryTypeDescriptor_Descriptor] ON [edfi].[EntryTypeDescriptor] ([EntryTypeDescriptorId])
GO
PRINT N'Creating index [FK_EntryTypeDescriptor_EntryType] on [edfi].[EntryTypeDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_EntryTypeDescriptor_EntryType] ON [edfi].[EntryTypeDescriptor] ([EntryTypeId])
GO

