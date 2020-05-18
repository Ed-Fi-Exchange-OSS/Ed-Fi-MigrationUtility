-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Section_PK] on [edfi].[Section]'
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [Section_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse])
GO
PRINT N'Creating index [UX_Section_Id] on [edfi].[Section]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Section_Id] ON [edfi].[Section] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_Section_CreditType] on [edfi].[Section]'
GO
CREATE NONCLUSTERED INDEX [FK_Section_CreditType] ON [edfi].[Section] ([AvailableCreditTypeId])
GO
PRINT N'Creating index [FK_Section_EducationalEnvironmentType] on [edfi].[Section]'
GO
CREATE NONCLUSTERED INDEX [FK_Section_EducationalEnvironmentType] ON [edfi].[Section] ([EducationalEnvironmentTypeId])
GO
PRINT N'Creating index [FK_Section_LanguageDescriptor] on [edfi].[Section]'
GO
CREATE NONCLUSTERED INDEX [FK_Section_LanguageDescriptor] ON [edfi].[Section] ([InstructionLanguageDescriptorId])
GO
PRINT N'Creating index [FK_Section_CourseOffering] on [edfi].[Section]'
GO
CREATE NONCLUSTERED INDEX [FK_Section_CourseOffering] ON [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [TermDescriptorId])
GO
PRINT N'Creating index [FK_Section_MediumOfInstructionType] on [edfi].[Section]'
GO
CREATE NONCLUSTERED INDEX [FK_Section_MediumOfInstructionType] ON [edfi].[Section] ([MediumOfInstructionTypeId])
GO
PRINT N'Creating index [FK_Section_PopulationServedType] on [edfi].[Section]'
GO
CREATE NONCLUSTERED INDEX [FK_Section_PopulationServedType] ON [edfi].[Section] ([PopulationServedTypeId])
GO
PRINT N'Creating index [FK_Section_School] on [edfi].[Section]'
GO
CREATE NONCLUSTERED INDEX [FK_Section_School] ON [edfi].[Section] ([SchoolId])
GO
PRINT N'Creating index [FK_Section_ClassPeriod] on [edfi].[Section]'
GO
CREATE NONCLUSTERED INDEX [FK_Section_ClassPeriod] ON [edfi].[Section] ([SchoolId], [ClassPeriodName])
GO
PRINT N'Creating index [FK_Section_Location] on [edfi].[Section]'
GO
CREATE NONCLUSTERED INDEX [FK_Section_Location] ON [edfi].[Section] ([SchoolId], [ClassroomIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[Section]'
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [Section_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [Section_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [Section_DF_Id] DEFAULT (newid()) FOR [Id]
GO

