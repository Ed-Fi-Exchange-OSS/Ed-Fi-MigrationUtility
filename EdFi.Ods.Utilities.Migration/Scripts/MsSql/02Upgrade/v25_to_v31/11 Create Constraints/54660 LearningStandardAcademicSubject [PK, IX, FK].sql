-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key on [edfi].[LearningStandardAcademicSubject]'
GO

ALTER TABLE [edfi].[LearningStandardAcademicSubject] ADD
CONSTRAINT [LearningStandardAcademicSubject_PK] PRIMARY KEY CLUSTERED (
        [AcademicSubjectDescriptorId] ASC,
        [LearningStandardId] ASC
    )

PRINT N'Adding constraints to [edfi].[LearningStandardAcademicSubject]'
ALTER TABLE [edfi].[LearningStandardAcademicSubject] ADD CONSTRAINT [LearningStandardAcademicSubject_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

PRINT N'Creating index [FK_LearningStandardAcademicSubject_AcademicSubjectDescriptor] on [edfi].[LearningStandardAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandardAcademicSubject_AcademicSubjectDescriptor]
ON [edfi].[LearningStandardAcademicSubject] ([AcademicSubjectDescriptorId] ASC)
GO

PRINT N'Creating index [FK_LearningStandardAcademicSubject_LearningStandard] on [edfi].[LearningStandardAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandardAcademicSubject_LearningStandard]
ON [edfi].[LearningStandardAcademicSubject] ([LearningStandardId] ASC)
GO

PRINT N'Adding constraints to [edfi].[LearningStandardAcademicSubject]'
GO

ALTER TABLE [edfi].[LearningStandardAcademicSubject] WITH CHECK ADD CONSTRAINT [FK_LearningStandardAcademicSubject_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

ALTER TABLE [edfi].[LearningStandardAcademicSubject] WITH CHECK ADD CONSTRAINT [FK_LearningStandardAcademicSubject_LearningStandard] FOREIGN KEY ([LearningStandardId])
REFERENCES [edfi].[LearningStandard] ([LearningStandardId])
ON DELETE CASCADE
GO
