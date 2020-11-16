-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Grade]'
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [FK_Grade_GradeTypeDescriptor] FOREIGN KEY ([GradeTypeDescriptorId]) REFERENCES [edfi].[GradeTypeDescriptor] ([GradeTypeDescriptorId])
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [FK_Grade_GradingPeriod] FOREIGN KEY ([GradingPeriodDescriptorId], [GradingPeriodSequence], [SchoolId], [GradingPeriodSchoolYear]) REFERENCES [edfi].[GradingPeriod] ([GradingPeriodDescriptorId], [PeriodSequence], [SchoolId], [SchoolYear])
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [FK_Grade_PerformanceBaseConversionDescriptor] FOREIGN KEY ([PerformanceBaseConversionDescriptorId]) REFERENCES [edfi].[PerformanceBaseConversionDescriptor] ([PerformanceBaseConversionDescriptorId])
GO
ALTER TABLE [edfi].[Grade] ADD CONSTRAINT [FK_Grade_StudentSectionAssociation] FOREIGN KEY ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) REFERENCES [edfi].[StudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) ON UPDATE CASCADE
GO
