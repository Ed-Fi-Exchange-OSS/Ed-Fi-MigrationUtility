-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAcademicRecordReportCard_PK] on [edfi].[StudentAcademicRecordReportCard]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordReportCard] ADD CONSTRAINT [StudentAcademicRecordReportCard_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [SchoolYear], [StudentUSI], [TermDescriptorId])
GO

PRINT N'Creating index [FK_StudentAcademicRecordReportCard_ReportCard] on [edfi].[StudentAcademicRecordReportCard]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordReportCard_ReportCard] ON [edfi].[StudentAcademicRecordReportCard] ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentAcademicRecordReportCard_StudentAcademicRecord] on [edfi].[StudentAcademicRecordReportCard]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordReportCard_StudentAcademicRecord] ON [edfi].[StudentAcademicRecordReportCard] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentAcademicRecordReportCard]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordReportCard] ADD CONSTRAINT [StudentAcademicRecordReportCard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
