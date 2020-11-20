-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffRace_PK] on [edfi].[StaffRace]'
GO
ALTER TABLE [edfi].[StaffRace] ADD CONSTRAINT [StaffRace_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [RaceTypeId])
GO
PRINT N'Creating index [FK_StaffRace_RaceType] on [edfi].[StaffRace]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffRace_RaceType] ON [edfi].[StaffRace] ([RaceTypeId])
GO
PRINT N'Creating index [FK_StaffRace_Staff] on [edfi].[StaffRace]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffRace_Staff] ON [edfi].[StaffRace] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffRace]'
GO
ALTER TABLE [edfi].[StaffRace] ADD CONSTRAINT [StaffRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

