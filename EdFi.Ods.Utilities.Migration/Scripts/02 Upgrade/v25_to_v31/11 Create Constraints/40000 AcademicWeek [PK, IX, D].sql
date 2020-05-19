-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AcademicWeek_PK] on [edfi].[AcademicWeek]'
GO
ALTER TABLE [edfi].[AcademicWeek] ADD CONSTRAINT [AcademicWeek_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [WeekIdentifier])
GO

PRINT N'Creating index [UX_AcademicWeek_Id] on [edfi].[AcademicWeek]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AcademicWeek_Id] ON [edfi].[AcademicWeek] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_AcademicWeek_School] on [edfi].[AcademicWeek]'
GO
CREATE NONCLUSTERED INDEX [FK_AcademicWeek_School] ON [edfi].[AcademicWeek] ([SchoolId])
GO

PRINT N'Adding constraints to [edfi].[AcademicWeek]'
GO
ALTER TABLE [edfi].[AcademicWeek] ADD CONSTRAINT [AcademicWeek_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AcademicWeek] ADD CONSTRAINT [AcademicWeek_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AcademicWeek] ADD CONSTRAINT [AcademicWeek_DF_Id] DEFAULT (newid()) FOR [Id]
GO
