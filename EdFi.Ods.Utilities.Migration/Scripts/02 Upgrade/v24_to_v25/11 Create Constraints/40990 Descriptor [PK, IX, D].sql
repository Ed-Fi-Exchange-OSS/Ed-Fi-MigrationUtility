-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Descriptor_PK] on [edfi].[Descriptor]'
GO
ALTER TABLE [edfi].[Descriptor] ADD CONSTRAINT [Descriptor_PK] PRIMARY KEY CLUSTERED  ([DescriptorId])
GO
PRINT N'Creating index [UX_Descriptor_Id] on [edfi].[Descriptor]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Descriptor_Id] ON [edfi].[Descriptor] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[Descriptor]'
GO
ALTER TABLE [edfi].[Descriptor] ADD CONSTRAINT [Descriptor_AK] UNIQUE NONCLUSTERED  ([CodeValue], [Namespace])
GO
PRINT N'Adding constraints to [edfi].[Descriptor]'
GO
ALTER TABLE [edfi].[Descriptor] ADD CONSTRAINT [Descriptor_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Descriptor] ADD CONSTRAINT [Descriptor_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Descriptor] ADD CONSTRAINT [Descriptor_DF_Id] DEFAULT (newid()) FOR [Id]
GO

