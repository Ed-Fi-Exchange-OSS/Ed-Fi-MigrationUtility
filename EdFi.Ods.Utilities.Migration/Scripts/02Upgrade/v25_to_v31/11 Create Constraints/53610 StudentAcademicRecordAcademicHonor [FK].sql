-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentAcademicRecordAcademicHonor]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor] ADD CONSTRAINT [FK_StudentAcademicRecordAcademicHonor_AcademicHonorCategoryDescriptor] FOREIGN KEY ([AcademicHonorCategoryDescriptorId]) REFERENCES [edfi].[AcademicHonorCategoryDescriptor] ([AcademicHonorCategoryDescriptorId])
GO
ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor] ADD CONSTRAINT [FK_StudentAcademicRecordAcademicHonor_AchievementCategoryDescriptor] FOREIGN KEY ([AchievementCategoryDescriptorId]) REFERENCES [edfi].[AchievementCategoryDescriptor] ([AchievementCategoryDescriptorId])
GO
ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor] ADD CONSTRAINT [FK_StudentAcademicRecordAcademicHonor_StudentAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) REFERENCES [edfi].[StudentAcademicRecord] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) ON DELETE CASCADE
GO
