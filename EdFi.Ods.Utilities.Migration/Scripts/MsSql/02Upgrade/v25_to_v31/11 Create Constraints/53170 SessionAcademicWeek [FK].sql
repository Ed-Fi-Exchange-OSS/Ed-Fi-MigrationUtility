-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[SessionAcademicWeek]'
GO
ALTER TABLE [edfi].[SessionAcademicWeek] ADD CONSTRAINT [FK_SessionAcademicWeek_AcademicWeek] FOREIGN KEY ([SchoolId], [WeekIdentifier]) REFERENCES [edfi].[AcademicWeek] ([SchoolId], [WeekIdentifier])
GO
ALTER TABLE [edfi].[SessionAcademicWeek] ADD CONSTRAINT [FK_SessionAcademicWeek_Session] FOREIGN KEY ([SchoolId], [SchoolYear], [SessionName]) REFERENCES [edfi].[Session] ([SchoolId], [SchoolYear], [SessionName]) ON DELETE CASCADE
GO
