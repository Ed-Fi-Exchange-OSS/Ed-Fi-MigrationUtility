-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseTranscript_PK] on [edfi].[CourseTranscript]'
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [CourseTranscript_PK] PRIMARY KEY CLUSTERED  ([CourseAttemptResultTypeId], [StudentUSI], [EducationOrganizationId], [CourseEducationOrganizationId], [SchoolYear], [TermDescriptorId], [CourseCode])
GO
PRINT N'Creating index [UX_CourseTranscript_Id] on [edfi].[CourseTranscript]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CourseTranscript_Id] ON [edfi].[CourseTranscript] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_CourseTranscript_CreditType] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CreditType] ON [edfi].[CourseTranscript] ([AttemptedCreditTypeId])
GO
PRINT N'Creating index [FK_CourseTranscript_CourseAttemptResultType] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CourseAttemptResultType] ON [edfi].[CourseTranscript] ([CourseAttemptResultTypeId])
GO
PRINT N'Creating index [FK_CourseTranscript_Course] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_Course] ON [edfi].[CourseTranscript] ([CourseEducationOrganizationId], [CourseCode])
GO
PRINT N'Creating index [FK_CourseTranscript_CourseRepeatCodeType] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CourseRepeatCodeType] ON [edfi].[CourseTranscript] ([CourseRepeatCodeTypeId])
GO
PRINT N'Creating index [FK_CourseTranscript_CreditType1] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CreditType1] ON [edfi].[CourseTranscript] ([EarnedCreditTypeId])
GO
PRINT N'Creating index [FK_CourseTranscript_MethodCreditEarnedType] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_MethodCreditEarnedType] ON [edfi].[CourseTranscript] ([MethodCreditEarnedTypeId])
GO
PRINT N'Creating index [FK_CourseTranscript_School] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_School] ON [edfi].[CourseTranscript] ([SchoolId])
GO
PRINT N'Creating index [FK_CourseTranscript_StudentAcademicRecord] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_StudentAcademicRecord] ON [edfi].[CourseTranscript] ([StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId])
GO
PRINT N'Creating index [FK_CourseTranscript_GradeLevelDescriptor] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_GradeLevelDescriptor] ON [edfi].[CourseTranscript] ([WhenTakenGradeLevelDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[CourseTranscript]'
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [CourseTranscript_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [CourseTranscript_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [CourseTranscript_DF_Id] DEFAULT (newid()) FOR [Id]
GO

