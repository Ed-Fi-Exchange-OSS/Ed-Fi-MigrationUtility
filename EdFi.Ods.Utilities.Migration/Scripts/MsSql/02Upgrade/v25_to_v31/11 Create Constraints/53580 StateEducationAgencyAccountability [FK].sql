-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StateEducationAgencyAccountability]'
GO
ALTER TABLE [edfi].[StateEducationAgencyAccountability] ADD CONSTRAINT [FK_StateEducationAgencyAccountability_SchoolYearType] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
ALTER TABLE [edfi].[StateEducationAgencyAccountability] ADD CONSTRAINT [FK_StateEducationAgencyAccountability_StateEducationAgency] FOREIGN KEY ([StateEducationAgencyId]) REFERENCES [edfi].[StateEducationAgency] ([StateEducationAgencyId]) ON DELETE CASCADE
GO
