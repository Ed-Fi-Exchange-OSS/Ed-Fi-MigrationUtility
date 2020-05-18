-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseTranscript_PK] on [edfi].[CourseTranscript]'
GO
ALTER TABLE [edfi].[CourseTranscript] ADD CONSTRAINT [CourseTranscript_PK] PRIMARY KEY CLUSTERED  ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
GO

PRINT N'Creating index [UX_CourseTranscript_Id] on [edfi].[CourseTranscript]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CourseTranscript_Id] ON [edfi].[CourseTranscript] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_CourseTranscript_CreditTypeDescriptor] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CreditTypeDescriptor] ON [edfi].[CourseTranscript] ([AttemptedCreditTypeDescriptorId])
GO

PRINT N'Creating index [FK_CourseTranscript_CourseAttemptResultDescriptor] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CourseAttemptResultDescriptor] ON [edfi].[CourseTranscript] ([CourseAttemptResultDescriptorId])
GO

PRINT N'Creating index [FK_CourseTranscript_Course] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_Course] ON [edfi].[CourseTranscript] ([CourseCode], [CourseEducationOrganizationId])
GO

PRINT N'Creating index [FK_CourseTranscript_CourseRepeatCodeDescriptor] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CourseRepeatCodeDescriptor] ON [edfi].[CourseTranscript] ([CourseRepeatCodeDescriptorId])
GO

PRINT N'Creating index [FK_CourseTranscript_CreditTypeDescriptor1] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CreditTypeDescriptor1] ON [edfi].[CourseTranscript] ([EarnedCreditTypeDescriptorId])
GO

PRINT N'Creating index [FK_CourseTranscript_StudentAcademicRecord] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_StudentAcademicRecord] ON [edfi].[CourseTranscript] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
GO

PRINT N'Creating index [FK_CourseTranscript_EducationOrganization] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_EducationOrganization] ON [edfi].[CourseTranscript] ([ExternalEducationOrganizationId])
GO

PRINT N'Creating index [FK_CourseTranscript_MethodCreditEarnedDescriptor] on [edfi].[CourseTranscript]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscript_MethodCreditEarnedDescriptor] ON [edfi].[CourseTranscript] ([MethodCreditEarnedDescriptorId])
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
