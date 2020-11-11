-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentCohortYear]'
GO
ALTER TABLE [edfi].[StudentCohortYear] ADD CONSTRAINT [FK_StudentCohortYear_CohortYearType] FOREIGN KEY ([CohortYearTypeId]) REFERENCES [edfi].[CohortYearType] ([CohortYearTypeId])
GO
ALTER TABLE [edfi].[StudentCohortYear] ADD CONSTRAINT [FK_StudentCohortYear_SchoolYearType] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
ALTER TABLE [edfi].[StudentCohortYear] ADD CONSTRAINT [FK_StudentCohortYear_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]) ON DELETE CASCADE
GO
