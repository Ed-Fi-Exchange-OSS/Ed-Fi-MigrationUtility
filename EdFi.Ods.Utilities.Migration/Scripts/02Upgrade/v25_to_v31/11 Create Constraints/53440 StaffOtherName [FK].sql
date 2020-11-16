-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffOtherName]'
GO
ALTER TABLE [edfi].[StaffOtherName] ADD CONSTRAINT [FK_StaffOtherName_OtherNameTypeDescriptor] FOREIGN KEY ([OtherNameTypeDescriptorId]) REFERENCES [edfi].[OtherNameTypeDescriptor] ([OtherNameTypeDescriptorId])
GO
ALTER TABLE [edfi].[StaffOtherName] ADD CONSTRAINT [FK_StaffOtherName_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE
GO
