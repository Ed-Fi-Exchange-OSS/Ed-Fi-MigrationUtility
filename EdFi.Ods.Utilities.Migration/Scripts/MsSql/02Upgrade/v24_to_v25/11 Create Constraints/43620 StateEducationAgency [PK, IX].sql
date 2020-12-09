-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StateEducationAgency_PK] on [edfi].[StateEducationAgency]'
GO
ALTER TABLE [edfi].[StateEducationAgency] ADD CONSTRAINT [StateEducationAgency_PK] PRIMARY KEY CLUSTERED  ([StateEducationAgencyId])
GO
PRINT N'Creating index [FK_StateEducationAgency_EducationOrganization] on [edfi].[StateEducationAgency]'
GO
CREATE NONCLUSTERED INDEX [FK_StateEducationAgency_EducationOrganization] ON [edfi].[StateEducationAgency] ([StateEducationAgencyId])
GO

