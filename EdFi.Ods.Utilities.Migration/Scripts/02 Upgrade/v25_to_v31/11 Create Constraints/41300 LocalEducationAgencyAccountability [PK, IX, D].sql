-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LocalEducationAgencyAccountability_PK] on [edfi].[LocalEducationAgencyAccountability]'
GO
ALTER TABLE [edfi].[LocalEducationAgencyAccountability] ADD CONSTRAINT [LocalEducationAgencyAccountability_PK] PRIMARY KEY CLUSTERED  ([LocalEducationAgencyId], [SchoolYear])
GO

PRINT N'Creating index [FK_LocalEducationAgencyAccountability_GunFreeSchoolsActReportingStatusDescriptor] on [edfi].[LocalEducationAgencyAccountability]'
GO
CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyAccountability_GunFreeSchoolsActReportingStatusDescriptor] ON [edfi].[LocalEducationAgencyAccountability] ([GunFreeSchoolsActReportingStatusDescriptorId])
GO

PRINT N'Creating index [FK_LocalEducationAgencyAccountability_LocalEducationAgency] on [edfi].[LocalEducationAgencyAccountability]'
GO
CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyAccountability_LocalEducationAgency] ON [edfi].[LocalEducationAgencyAccountability] ([LocalEducationAgencyId])
GO

PRINT N'Creating index [FK_LocalEducationAgencyAccountability_SchoolChoiceImplementStatusDescriptor] on [edfi].[LocalEducationAgencyAccountability]'
GO
CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyAccountability_SchoolChoiceImplementStatusDescriptor] ON [edfi].[LocalEducationAgencyAccountability] ([SchoolChoiceImplementStatusDescriptorId])
GO

PRINT N'Creating index [FK_LocalEducationAgencyAccountability_SchoolYearType] on [edfi].[LocalEducationAgencyAccountability]'
GO
CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyAccountability_SchoolYearType] ON [edfi].[LocalEducationAgencyAccountability] ([SchoolYear])
GO

PRINT N'Adding constraints to [edfi].[LocalEducationAgencyAccountability]'
GO
ALTER TABLE [edfi].[LocalEducationAgencyAccountability] ADD CONSTRAINT [LocalEducationAgencyAccountability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
