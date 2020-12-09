-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentRace_PK] on [edfi].[StudentRace]'
GO
ALTER TABLE [edfi].[StudentRace] ADD CONSTRAINT [StudentRace_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [RaceTypeId])
GO
PRINT N'Creating index [FK_StudentRace_RaceType] on [edfi].[StudentRace]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentRace_RaceType] ON [edfi].[StudentRace] ([RaceTypeId])
GO
PRINT N'Creating index [FK_StudentRace_Student] on [edfi].[StudentRace]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentRace_Student] ON [edfi].[StudentRace] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentRace]'
GO
ALTER TABLE [edfi].[StudentRace] ADD CONSTRAINT [StudentRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

