-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentCohortYear_PK] on [edfi].[StudentCohortYear]'
GO
ALTER TABLE [edfi].[StudentCohortYear] ADD CONSTRAINT [StudentCohortYear_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [CohortYearTypeId], [SchoolYear])
GO
PRINT N'Creating index [FK_StudentCohortYear_CohortYearType] on [edfi].[StudentCohortYear]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCohortYear_CohortYearType] ON [edfi].[StudentCohortYear] ([CohortYearTypeId])
GO
PRINT N'Creating index [FK_StudentCohortYear_SchoolYearType] on [edfi].[StudentCohortYear]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCohortYear_SchoolYearType] ON [edfi].[StudentCohortYear] ([SchoolYear])
GO
PRINT N'Creating index [FK_StudentCohortYear_Student] on [edfi].[StudentCohortYear]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCohortYear_Student] ON [edfi].[StudentCohortYear] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentCohortYear]'
GO
ALTER TABLE [edfi].[StudentCohortYear] ADD CONSTRAINT [StudentCohortYear_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

