-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAcademicRecordAcademicHonor_PK] on [edfi].[StudentAcademicRecordAcademicHonor]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor] ADD CONSTRAINT [StudentAcademicRecordAcademicHonor_PK] PRIMARY KEY CLUSTERED  ([AcademicHonorCategoryTypeId], [StudentUSI], [SchoolYear], [TermDescriptorId], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_StudentAcademicRecordAcademicHonor_AcademicHonorCategoryType] on [edfi].[StudentAcademicRecordAcademicHonor]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordAcademicHonor_AcademicHonorCategoryType] ON [edfi].[StudentAcademicRecordAcademicHonor] ([AcademicHonorCategoryTypeId])
GO
PRINT N'Creating index [FK_StudentAcademicRecordAcademicHonor_AchievementCategoryDescriptor] on [edfi].[StudentAcademicRecordAcademicHonor]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordAcademicHonor_AchievementCategoryDescriptor] ON [edfi].[StudentAcademicRecordAcademicHonor] ([AchievementCategoryDescriptorId])
GO
PRINT N'Creating index [FK_StudentAcademicRecordAcademicHonor_StudentAcademicRecord] on [edfi].[StudentAcademicRecordAcademicHonor]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordAcademicHonor_StudentAcademicRecord] ON [edfi].[StudentAcademicRecordAcademicHonor] ([StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentAcademicRecordAcademicHonor]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor] ADD CONSTRAINT [StudentAcademicRecordAcademicHonor_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

