-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LocalEducationAgency_PK] on [edfi].[LocalEducationAgency]'
GO
ALTER TABLE [edfi].[LocalEducationAgency] ADD CONSTRAINT [LocalEducationAgency_PK] PRIMARY KEY CLUSTERED  ([LocalEducationAgencyId])
GO

PRINT N'Creating index [FK_LocalEducationAgency_CharterStatusDescriptor] on [edfi].[LocalEducationAgency]'
GO
CREATE NONCLUSTERED INDEX [FK_LocalEducationAgency_CharterStatusDescriptor] ON [edfi].[LocalEducationAgency] ([CharterStatusDescriptorId])
GO

PRINT N'Creating index [FK_LocalEducationAgency_EducationServiceCenter] on [edfi].[LocalEducationAgency]'
GO
CREATE NONCLUSTERED INDEX [FK_LocalEducationAgency_EducationServiceCenter] ON [edfi].[LocalEducationAgency] ([EducationServiceCenterId])
GO

PRINT N'Creating index [FK_LocalEducationAgency_LocalEducationAgencyCategoryDescriptor] on [edfi].[LocalEducationAgency]'
GO
CREATE NONCLUSTERED INDEX [FK_LocalEducationAgency_LocalEducationAgencyCategoryDescriptor] ON [edfi].[LocalEducationAgency] ([LocalEducationAgencyCategoryDescriptorId])
GO

PRINT N'Creating index [FK_LocalEducationAgency_LocalEducationAgency] on [edfi].[LocalEducationAgency]'
GO
CREATE NONCLUSTERED INDEX [FK_LocalEducationAgency_LocalEducationAgency] ON [edfi].[LocalEducationAgency] ([ParentLocalEducationAgencyId])
GO

PRINT N'Creating index [FK_LocalEducationAgency_StateEducationAgency] on [edfi].[LocalEducationAgency]'
GO
CREATE NONCLUSTERED INDEX [FK_LocalEducationAgency_StateEducationAgency] ON [edfi].[LocalEducationAgency] ([StateEducationAgencyId])
GO
