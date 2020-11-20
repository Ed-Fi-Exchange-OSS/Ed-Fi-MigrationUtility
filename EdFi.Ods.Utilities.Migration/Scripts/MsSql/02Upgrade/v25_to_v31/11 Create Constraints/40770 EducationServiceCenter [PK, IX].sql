-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationServiceCenter_PK] on [edfi].[EducationServiceCenter]'
GO
ALTER TABLE [edfi].[EducationServiceCenter] ADD CONSTRAINT [EducationServiceCenter_PK] PRIMARY KEY CLUSTERED  ([EducationServiceCenterId])
GO

PRINT N'Creating index [FK_EducationServiceCenter_StateEducationAgency] on [edfi].[EducationServiceCenter]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationServiceCenter_StateEducationAgency] ON [edfi].[EducationServiceCenter] ([StateEducationAgencyId])
GO
