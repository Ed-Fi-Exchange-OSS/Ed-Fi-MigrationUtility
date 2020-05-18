-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAcademicRecordRecognition_PK] on [edfi].[StudentAcademicRecordRecognition]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordRecognition] ADD CONSTRAINT [StudentAcademicRecordRecognition_PK] PRIMARY KEY CLUSTERED  ([RecognitionTypeId], [StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId])
GO
PRINT N'Creating index [FK_StudentAcademicRecordRecognition_AchievementCategoryDescriptor] on [edfi].[StudentAcademicRecordRecognition]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordRecognition_AchievementCategoryDescriptor] ON [edfi].[StudentAcademicRecordRecognition] ([AchievementCategoryDescriptorId])
GO
PRINT N'Creating index [FK_StudentAcademicRecordRecognition_RecognitionType] on [edfi].[StudentAcademicRecordRecognition]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordRecognition_RecognitionType] ON [edfi].[StudentAcademicRecordRecognition] ([RecognitionTypeId])
GO
PRINT N'Creating index [FK_StudentAcademicRecordRecognition_StudentAcademicRecord] on [edfi].[StudentAcademicRecordRecognition]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordRecognition_StudentAcademicRecord] ON [edfi].[StudentAcademicRecordRecognition] ([StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentAcademicRecordRecognition]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordRecognition] ADD CONSTRAINT [StudentAcademicRecordRecognition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

