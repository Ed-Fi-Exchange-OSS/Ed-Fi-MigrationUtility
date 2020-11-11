-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisciplineActionDiscipline_PK] on [edfi].[DisciplineActionDiscipline]'
GO
ALTER TABLE [edfi].[DisciplineActionDiscipline] ADD CONSTRAINT [DisciplineActionDiscipline_PK] PRIMARY KEY CLUSTERED  ([DisciplineActionIdentifier], [DisciplineDate], [DisciplineDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_DisciplineActionDiscipline_DisciplineAction] on [edfi].[DisciplineActionDiscipline]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineActionDiscipline_DisciplineAction] ON [edfi].[DisciplineActionDiscipline] ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
GO

PRINT N'Creating index [FK_DisciplineActionDiscipline_DisciplineDescriptor] on [edfi].[DisciplineActionDiscipline]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineActionDiscipline_DisciplineDescriptor] ON [edfi].[DisciplineActionDiscipline] ([DisciplineDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[DisciplineActionDiscipline]'
GO
ALTER TABLE [edfi].[DisciplineActionDiscipline] ADD CONSTRAINT [DisciplineActionDiscipline_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
