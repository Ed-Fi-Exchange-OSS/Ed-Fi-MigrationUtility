-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentAcademicRecordAcademicHonor]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor] ADD CONSTRAINT [FK_StudentAcademicRecordAcademicHonor_AcademicHonorCategoryType] FOREIGN KEY ([AcademicHonorCategoryTypeId]) REFERENCES [edfi].[AcademicHonorCategoryType] ([AcademicHonorCategoryTypeId])
GO
ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor] ADD CONSTRAINT [FK_StudentAcademicRecordAcademicHonor_AchievementCategoryDescriptor] FOREIGN KEY ([AchievementCategoryDescriptorId]) REFERENCES [edfi].[AchievementCategoryDescriptor] ([AchievementCategoryDescriptorId])
GO
ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor] ADD CONSTRAINT [FK_StudentAcademicRecordAcademicHonor_StudentAcademicRecord] FOREIGN KEY ([StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId]) REFERENCES [edfi].[StudentAcademicRecord] ([StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId]) ON DELETE CASCADE
GO
