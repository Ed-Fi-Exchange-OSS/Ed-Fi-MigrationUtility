-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAcademicRecordDiploma_PK] on [edfi].[StudentAcademicRecordDiploma]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordDiploma] ADD CONSTRAINT [StudentAcademicRecordDiploma_PK] PRIMARY KEY CLUSTERED  ([DiplomaAwardDate], [DiplomaTypeDescriptorId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
GO

PRINT N'Creating index [FK_StudentAcademicRecordDiploma_AchievementCategoryDescriptor] on [edfi].[StudentAcademicRecordDiploma]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordDiploma_AchievementCategoryDescriptor] ON [edfi].[StudentAcademicRecordDiploma] ([AchievementCategoryDescriptorId])
GO

PRINT N'Creating index [FK_StudentAcademicRecordDiploma_DiplomaLevelDescriptor] on [edfi].[StudentAcademicRecordDiploma]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordDiploma_DiplomaLevelDescriptor] ON [edfi].[StudentAcademicRecordDiploma] ([DiplomaLevelDescriptorId])
GO

PRINT N'Creating index [FK_StudentAcademicRecordDiploma_DiplomaTypeDescriptor] on [edfi].[StudentAcademicRecordDiploma]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordDiploma_DiplomaTypeDescriptor] ON [edfi].[StudentAcademicRecordDiploma] ([DiplomaTypeDescriptorId])
GO

PRINT N'Creating index [FK_StudentAcademicRecordDiploma_StudentAcademicRecord] on [edfi].[StudentAcademicRecordDiploma]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordDiploma_StudentAcademicRecord] ON [edfi].[StudentAcademicRecordDiploma] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentAcademicRecordDiploma]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordDiploma] ADD CONSTRAINT [StudentAcademicRecordDiploma_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
