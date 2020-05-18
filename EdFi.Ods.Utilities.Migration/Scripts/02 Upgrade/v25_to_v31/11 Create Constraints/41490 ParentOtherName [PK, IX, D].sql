-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ParentOtherName_PK] on [edfi].[ParentOtherName]'
GO
ALTER TABLE [edfi].[ParentOtherName] ADD CONSTRAINT [ParentOtherName_PK] PRIMARY KEY CLUSTERED  ([OtherNameTypeDescriptorId], [ParentUSI])
GO

PRINT N'Creating index [FK_ParentOtherName_OtherNameTypeDescriptor] on [edfi].[ParentOtherName]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentOtherName_OtherNameTypeDescriptor] ON [edfi].[ParentOtherName] ([OtherNameTypeDescriptorId])
GO

PRINT N'Creating index [FK_ParentOtherName_Parent] on [edfi].[ParentOtherName]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentOtherName_Parent] ON [edfi].[ParentOtherName] ([ParentUSI])
GO

PRINT N'Adding constraints to [edfi].[ParentOtherName]'
GO
ALTER TABLE [edfi].[ParentOtherName] ADD CONSTRAINT [ParentOtherName_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
