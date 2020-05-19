-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AccountCodeDescriptor_PK] on [edfi].[AccountCodeDescriptor]'
GO
ALTER TABLE [edfi].[AccountCodeDescriptor] ADD CONSTRAINT [AccountCodeDescriptor_PK] PRIMARY KEY CLUSTERED  ([AccountCodeDescriptorId])
GO
PRINT N'Creating index [FK_AccountCodeDescriptor_Descriptor] on [edfi].[AccountCodeDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_AccountCodeDescriptor_Descriptor] ON [edfi].[AccountCodeDescriptor] ([AccountCodeDescriptorId])
GO

