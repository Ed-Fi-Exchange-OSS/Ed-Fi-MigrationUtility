-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisciplineActionStaff_PK] on [edfi].[DisciplineActionStaff]'
GO
ALTER TABLE [edfi].[DisciplineActionStaff] ADD CONSTRAINT [DisciplineActionStaff_PK] PRIMARY KEY CLUSTERED  ([DisciplineActionIdentifier], [DisciplineDate], [StaffUSI], [StudentUSI])
GO

PRINT N'Creating index [FK_DisciplineActionStaff_DisciplineAction] on [edfi].[DisciplineActionStaff]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineActionStaff_DisciplineAction] ON [edfi].[DisciplineActionStaff] ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
GO

PRINT N'Creating index [FK_DisciplineActionStaff_Staff] on [edfi].[DisciplineActionStaff]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineActionStaff_Staff] ON [edfi].[DisciplineActionStaff] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[DisciplineActionStaff]'
GO
ALTER TABLE [edfi].[DisciplineActionStaff] ADD CONSTRAINT [DisciplineActionStaff_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
