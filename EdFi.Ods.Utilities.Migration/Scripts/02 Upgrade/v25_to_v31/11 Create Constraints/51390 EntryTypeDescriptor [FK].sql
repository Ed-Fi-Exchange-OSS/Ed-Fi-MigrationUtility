-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[EntryTypeDescriptor]'
GO
ALTER TABLE [edfi].[EntryTypeDescriptor] ADD CONSTRAINT [FK_EntryTypeDescriptor_Descriptor] FOREIGN KEY ([EntryTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
GO
