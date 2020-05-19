-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentParentAssociation_PK] on [edfi].[StudentParentAssociation]'
GO
ALTER TABLE [edfi].[StudentParentAssociation] ADD CONSTRAINT [StudentParentAssociation_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [ParentUSI])
GO
PRINT N'Creating index [UX_StudentParentAssociation_Id] on [edfi].[StudentParentAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentParentAssociation_Id] ON [edfi].[StudentParentAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StudentParentAssociation_Parent] on [edfi].[StudentParentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentParentAssociation_Parent] ON [edfi].[StudentParentAssociation] ([ParentUSI])
GO
PRINT N'Creating index [FK_StudentParentAssociation_RelationType] on [edfi].[StudentParentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentParentAssociation_RelationType] ON [edfi].[StudentParentAssociation] ([RelationTypeId])
GO
PRINT N'Creating index [FK_StudentParentAssociation_Student] on [edfi].[StudentParentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentParentAssociation_Student] ON [edfi].[StudentParentAssociation] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentParentAssociation]'
GO
ALTER TABLE [edfi].[StudentParentAssociation] ADD CONSTRAINT [StudentParentAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentParentAssociation] ADD CONSTRAINT [StudentParentAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentParentAssociation] ADD CONSTRAINT [StudentParentAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO

