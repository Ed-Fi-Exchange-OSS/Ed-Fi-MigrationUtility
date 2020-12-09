-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ReportCardGrade]'
GO
ALTER TABLE [edfi].[ReportCardGrade] ADD CONSTRAINT [FK_ReportCardGrade_Grade] FOREIGN KEY ([GradingPeriodDescriptorId], [GradingPeriodBeginDate], [GradeTypeId], [StudentUSI], [SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [UniqueSectionCode], [SequenceOfCourse], [SchoolYear], [TermDescriptorId], [BeginDate]) REFERENCES [edfi].[Grade] ([GradingPeriodDescriptorId], [GradingPeriodBeginDate], [GradeTypeId], [StudentUSI], [SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [UniqueSectionCode], [SequenceOfCourse], [SchoolYear], [TermDescriptorId], [BeginDate]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[ReportCardGrade] ADD CONSTRAINT [FK_ReportCardGrade_ReportCard] FOREIGN KEY ([StudentUSI], [EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate], [SchoolId]) REFERENCES [edfi].[ReportCard] ([StudentUSI], [EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate], [SchoolId])
GO
