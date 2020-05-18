-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentAcademicSubject_PK] on [edfi].[AssessmentAcademicSubject]'
GO
ALTER TABLE [edfi].[AssessmentAcademicSubject] ADD CONSTRAINT [AssessmentAcademicSubject_PK] PRIMARY KEY CLUSTERED  ([AcademicSubjectDescriptorId], [AssessmentIdentifier], [Namespace])
GO
PRINT N'Creating index [FK_AssessmentAcademicSubject_AcademicSubjectDescriptor] on [edfi].[AssessmentAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentAcademicSubject_AcademicSubjectDescriptor] ON [edfi].[AssessmentAcademicSubject] ([AcademicSubjectDescriptorId])
GO
PRINT N'Creating index [FK_AssessmentAcademicSubject_Assessment] on [edfi].[AssessmentAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentAcademicSubject_Assessment] ON [edfi].[AssessmentAcademicSubject] ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Adding constraints to [edfi].[AssessmentAcademicSubject]'
GO
ALTER TABLE [edfi].[AssessmentAcademicSubject] ADD CONSTRAINT [AssessmentAcademicSubject_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

