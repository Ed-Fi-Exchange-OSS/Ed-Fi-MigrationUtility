-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Grade]'
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [FK_Grade_GradeType] FOREIGN KEY ([GradeTypeId]) REFERENCES [edfi].[GradeType] ([GradeTypeId])
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [FK_Grade_GradingPeriod] FOREIGN KEY ([GradingPeriodDescriptorId], [SchoolId], [GradingPeriodBeginDate]) REFERENCES [edfi].[GradingPeriod] ([GradingPeriodDescriptorId], [SchoolId], [BeginDate])
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [FK_Grade_PerformanceBaseConversionType] FOREIGN KEY ([PerformanceBaseConversionTypeId]) REFERENCES [edfi].[PerformanceBaseConversionType] ([PerformanceBaseConversionTypeId])
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [FK_Grade_StudentSectionAssociation] FOREIGN KEY ([StudentUSI], [SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [UniqueSectionCode], [SequenceOfCourse], [SchoolYear], [TermDescriptorId], [BeginDate]) REFERENCES [edfi].[StudentSectionAssociation] ([StudentUSI], [SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [UniqueSectionCode], [SequenceOfCourse], [SchoolYear], [TermDescriptorId], [BeginDate]) ON UPDATE CASCADE
GO
