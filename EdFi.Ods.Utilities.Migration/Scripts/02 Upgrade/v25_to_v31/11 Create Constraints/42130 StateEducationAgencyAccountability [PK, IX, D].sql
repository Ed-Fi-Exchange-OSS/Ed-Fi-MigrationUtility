-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StateEducationAgencyAccountability_PK] on [edfi].[StateEducationAgencyAccountability]'
GO
ALTER TABLE [edfi].[StateEducationAgencyAccountability] ADD CONSTRAINT [StateEducationAgencyAccountability_PK] PRIMARY KEY CLUSTERED  ([SchoolYear], [StateEducationAgencyId])
GO

PRINT N'Creating index [FK_StateEducationAgencyAccountability_SchoolYearType] on [edfi].[StateEducationAgencyAccountability]'
GO
CREATE NONCLUSTERED INDEX [FK_StateEducationAgencyAccountability_SchoolYearType] ON [edfi].[StateEducationAgencyAccountability] ([SchoolYear])
GO

PRINT N'Creating index [FK_StateEducationAgencyAccountability_StateEducationAgency] on [edfi].[StateEducationAgencyAccountability]'
GO
CREATE NONCLUSTERED INDEX [FK_StateEducationAgencyAccountability_StateEducationAgency] ON [edfi].[StateEducationAgencyAccountability] ([StateEducationAgencyId])
GO

PRINT N'Adding constraints to [edfi].[StateEducationAgencyAccountability]'
GO
ALTER TABLE [edfi].[StateEducationAgencyAccountability] ADD CONSTRAINT [StateEducationAgencyAccountability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
