-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SessionAcademicWeek_PK] on [edfi].[SessionAcademicWeek]'
GO
ALTER TABLE [edfi].[SessionAcademicWeek] ADD CONSTRAINT [SessionAcademicWeek_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [SchoolYear], [SessionName], [WeekIdentifier])
GO

PRINT N'Creating index [FK_SessionAcademicWeek_Session] on [edfi].[SessionAcademicWeek]'
GO
CREATE NONCLUSTERED INDEX [FK_SessionAcademicWeek_Session] ON [edfi].[SessionAcademicWeek] ([SchoolId], [SchoolYear], [SessionName])
GO

PRINT N'Creating index [FK_SessionAcademicWeek_AcademicWeek] on [edfi].[SessionAcademicWeek]'
GO
CREATE NONCLUSTERED INDEX [FK_SessionAcademicWeek_AcademicWeek] ON [edfi].[SessionAcademicWeek] ([SchoolId], [WeekIdentifier])
GO

PRINT N'Adding constraints to [edfi].[SessionAcademicWeek]'
GO
ALTER TABLE [edfi].[SessionAcademicWeek] ADD CONSTRAINT [SessionAcademicWeek_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
