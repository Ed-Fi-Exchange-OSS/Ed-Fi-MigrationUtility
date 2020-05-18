-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CourseTranscript]'
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_Course] FOREIGN KEY ([CourseCode], [CourseEducationOrganizationId]) REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_CourseAttemptResultDescriptor] FOREIGN KEY ([CourseAttemptResultDescriptorId]) REFERENCES [edfi].[CourseAttemptResultDescriptor] ([CourseAttemptResultDescriptorId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_CourseRepeatCodeDescriptor] FOREIGN KEY ([CourseRepeatCodeDescriptorId]) REFERENCES [edfi].[CourseRepeatCodeDescriptor] ([CourseRepeatCodeDescriptorId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_CreditTypeDescriptor] FOREIGN KEY ([AttemptedCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_CreditTypeDescriptor1] FOREIGN KEY ([EarnedCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_EducationOrganization] FOREIGN KEY ([ExternalEducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_GradeLevelDescriptor] FOREIGN KEY ([WhenTakenGradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_MethodCreditEarnedDescriptor] FOREIGN KEY ([MethodCreditEarnedDescriptorId]) REFERENCES [edfi].[MethodCreditEarnedDescriptor] ([MethodCreditEarnedDescriptorId])
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [FK_CourseTranscript_StudentAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) REFERENCES [edfi].[StudentAcademicRecord] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
GO
