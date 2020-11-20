-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CourseTranscript]'
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_Course] FOREIGN KEY ([CourseEducationOrganizationId], [CourseCode]) REFERENCES [edfi].[Course] ([EducationOrganizationId], [CourseCode])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_CourseAttemptResultType] FOREIGN KEY ([CourseAttemptResultTypeId]) REFERENCES [edfi].[CourseAttemptResultType] ([CourseAttemptResultTypeId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_CourseRepeatCodeType] FOREIGN KEY ([CourseRepeatCodeTypeId]) REFERENCES [edfi].[CourseRepeatCodeType] ([CourseRepeatCodeTypeId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_CreditType] FOREIGN KEY ([AttemptedCreditTypeId]) REFERENCES [edfi].[CreditType] ([CreditTypeId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_CreditType1] FOREIGN KEY ([EarnedCreditTypeId]) REFERENCES [edfi].[CreditType] ([CreditTypeId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_GradeLevelDescriptor] FOREIGN KEY ([WhenTakenGradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_MethodCreditEarnedType] FOREIGN KEY ([MethodCreditEarnedTypeId]) REFERENCES [edfi].[MethodCreditEarnedType] ([MethodCreditEarnedTypeId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_School] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_StudentAcademicRecord] FOREIGN KEY ([StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId]) REFERENCES [edfi].[StudentAcademicRecord] ([StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId])
GO
