-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ReportCard]'
GO
ALTER TABLE [edfi].[ReportCard] ADD CONSTRAINT [FK_ReportCard_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[ReportCard] ADD CONSTRAINT [FK_ReportCard_GradingPeriod] FOREIGN KEY ([GradingPeriodDescriptorId], [GradingPeriodSequence], [GradingPeriodSchoolId], [GradingPeriodSchoolYear]) REFERENCES [edfi].[GradingPeriod] ([GradingPeriodDescriptorId], [PeriodSequence], [SchoolId], [SchoolYear])
GO
ALTER TABLE [edfi].[ReportCard] ADD CONSTRAINT [FK_ReportCard_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
