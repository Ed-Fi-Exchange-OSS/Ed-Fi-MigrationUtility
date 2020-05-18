-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentAcademicRecordReportCard]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordReportCard] ADD CONSTRAINT [FK_StudentAcademicRecordReportCard_ReportCard] FOREIGN KEY ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [StudentUSI]) REFERENCES [edfi].[ReportCard] ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [StudentUSI])
GO
ALTER TABLE [edfi].[StudentAcademicRecordReportCard] ADD CONSTRAINT [FK_StudentAcademicRecordReportCard_StudentAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) REFERENCES [edfi].[StudentAcademicRecord] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) ON DELETE CASCADE
GO
