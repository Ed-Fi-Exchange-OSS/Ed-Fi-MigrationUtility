-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentParentAssociation]'
GO
ALTER TABLE [edfi].[StudentParentAssociation] ADD CONSTRAINT [FK_StudentParentAssociation_Parent] FOREIGN KEY ([ParentUSI]) REFERENCES [edfi].[Parent] ([ParentUSI])
GO
ALTER TABLE [edfi].[StudentParentAssociation] ADD CONSTRAINT [FK_StudentParentAssociation_RelationType] FOREIGN KEY ([RelationTypeId]) REFERENCES [edfi].[RelationType] ([RelationTypeId])
GO
ALTER TABLE [edfi].[StudentParentAssociation] ADD CONSTRAINT [FK_StudentParentAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
