-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ExitWithdrawTypeDescriptor_PK] on [edfi].[ExitWithdrawTypeDescriptor]'
GO
ALTER TABLE [edfi].[ExitWithdrawTypeDescriptor] ADD CONSTRAINT [ExitWithdrawTypeDescriptor_PK] PRIMARY KEY CLUSTERED  ([ExitWithdrawTypeDescriptorId])
GO
PRINT N'Creating index [FK_ExitWithdrawTypeDescriptor_Descriptor] on [edfi].[ExitWithdrawTypeDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ExitWithdrawTypeDescriptor_Descriptor] ON [edfi].[ExitWithdrawTypeDescriptor] ([ExitWithdrawTypeDescriptorId])
GO
PRINT N'Creating index [FK_ExitWithdrawTypeDescriptor_ExitWithdrawType] on [edfi].[ExitWithdrawTypeDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ExitWithdrawTypeDescriptor_ExitWithdrawType] ON [edfi].[ExitWithdrawTypeDescriptor] ([ExitWithdrawTypeId])
GO

