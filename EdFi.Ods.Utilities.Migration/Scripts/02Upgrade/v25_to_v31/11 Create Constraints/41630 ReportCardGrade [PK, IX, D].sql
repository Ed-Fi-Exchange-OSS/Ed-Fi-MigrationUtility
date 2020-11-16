-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ReportCardGrade_PK] on [edfi].[ReportCardGrade]'
GO
ALTER TABLE [edfi].[ReportCardGrade] ADD CONSTRAINT [ReportCardGrade_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [GradeTypeDescriptorId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
GO

PRINT N'Creating index [FK_ReportCardGrade_Grade] on [edfi].[ReportCardGrade]'
GO
CREATE NONCLUSTERED INDEX [FK_ReportCardGrade_Grade] ON [edfi].[ReportCardGrade] ([BeginDate], [GradeTypeDescriptorId], [GradingPeriodDescriptorId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
GO

PRINT N'Creating index [FK_ReportCardGrade_ReportCard] on [edfi].[ReportCardGrade]'
GO
CREATE NONCLUSTERED INDEX [FK_ReportCardGrade_ReportCard] ON [edfi].[ReportCardGrade] ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[ReportCardGrade]'
GO
ALTER TABLE [edfi].[ReportCardGrade] ADD CONSTRAINT [ReportCardGrade_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
