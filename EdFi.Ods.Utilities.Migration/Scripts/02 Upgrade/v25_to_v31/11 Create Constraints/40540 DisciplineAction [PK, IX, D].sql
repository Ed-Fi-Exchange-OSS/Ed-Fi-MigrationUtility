-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisciplineAction_PK] on [edfi].[DisciplineAction]'
GO
ALTER TABLE [edfi].[DisciplineAction] ADD CONSTRAINT [DisciplineAction_PK] PRIMARY KEY CLUSTERED  ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
GO

PRINT N'Creating index [UX_DisciplineAction_Id] on [edfi].[DisciplineAction]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_DisciplineAction_Id] ON [edfi].[DisciplineAction] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_DisciplineAction_School1] on [edfi].[DisciplineAction]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineAction_School1] ON [edfi].[DisciplineAction] ([AssignmentSchoolId])
GO

PRINT N'Creating index [FK_DisciplineAction_DisciplineActionLengthDifferenceReasonDescriptor] on [edfi].[DisciplineAction]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineAction_DisciplineActionLengthDifferenceReasonDescriptor] ON [edfi].[DisciplineAction] ([DisciplineActionLengthDifferenceReasonDescriptorId])
GO

PRINT N'Creating index [FK_DisciplineAction_School] on [edfi].[DisciplineAction]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineAction_School] ON [edfi].[DisciplineAction] ([ResponsibilitySchoolId])
GO

PRINT N'Creating index [FK_DisciplineAction_Student] on [edfi].[DisciplineAction]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineAction_Student] ON [edfi].[DisciplineAction] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[DisciplineAction]'
GO
ALTER TABLE [edfi].[DisciplineAction] ADD CONSTRAINT [DisciplineAction_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[DisciplineAction] ADD CONSTRAINT [DisciplineAction_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[DisciplineAction] ADD CONSTRAINT [DisciplineAction_DF_Id] DEFAULT (newid()) FOR [Id]
GO
