-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ExitWithdrawTypeDescriptor]'
GO
ALTER TABLE [edfi].[ExitWithdrawTypeDescriptor] ADD CONSTRAINT [FK_ExitWithdrawTypeDescriptor_Descriptor] FOREIGN KEY ([ExitWithdrawTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[ExitWithdrawTypeDescriptor] ADD CONSTRAINT [FK_ExitWithdrawTypeDescriptor_ExitWithdrawType] FOREIGN KEY ([ExitWithdrawTypeId]) REFERENCES [edfi].[ExitWithdrawType] ([ExitWithdrawTypeId])
GO
