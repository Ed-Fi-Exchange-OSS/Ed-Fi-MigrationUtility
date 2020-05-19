-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LocalEducationAgencyAccountability]'
GO
ALTER TABLE [edfi].[LocalEducationAgencyAccountability] ADD CONSTRAINT [FK_LocalEducationAgencyAccountability_GunFreeSchoolsActReportingStatusType] FOREIGN KEY ([GunFreeSchoolsActReportingStatusTypeId]) REFERENCES [edfi].[GunFreeSchoolsActReportingStatusType] ([GunFreeSchoolsActReportingStatusTypeId])
GO
ALTER TABLE [edfi].[LocalEducationAgencyAccountability] ADD CONSTRAINT [FK_LocalEducationAgencyAccountability_LocalEducationAgency] FOREIGN KEY ([LocalEducationAgencyId]) REFERENCES [edfi].[LocalEducationAgency] ([LocalEducationAgencyId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[LocalEducationAgencyAccountability] ADD CONSTRAINT [FK_LocalEducationAgencyAccountability_SchoolChoiceImplementStatusType] FOREIGN KEY ([SchoolChoiceImplementStatusTypeId]) REFERENCES [edfi].[SchoolChoiceImplementStatusType] ([SchoolChoiceImplementStatusTypeId])
GO
ALTER TABLE [edfi].[LocalEducationAgencyAccountability] ADD CONSTRAINT [FK_LocalEducationAgencyAccountability_SchoolYearType] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
