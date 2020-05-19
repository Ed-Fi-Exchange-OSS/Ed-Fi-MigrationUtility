-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentOtherName]'
GO
ALTER TABLE [edfi].[StudentOtherName] ADD CONSTRAINT [FK_StudentOtherName_OtherNameTypeDescriptor] FOREIGN KEY ([OtherNameTypeDescriptorId]) REFERENCES [edfi].[OtherNameTypeDescriptor] ([OtherNameTypeDescriptorId])
GO
ALTER TABLE [edfi].[StudentOtherName] ADD CONSTRAINT [FK_StudentOtherName_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]) ON DELETE CASCADE
GO
