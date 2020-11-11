-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentAcademicRecordDiploma]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordDiploma] ADD CONSTRAINT [FK_StudentAcademicRecordDiploma_AchievementCategoryDescriptor] FOREIGN KEY ([AchievementCategoryDescriptorId]) REFERENCES [edfi].[AchievementCategoryDescriptor] ([AchievementCategoryDescriptorId])
GO
ALTER TABLE [edfi].[StudentAcademicRecordDiploma] ADD CONSTRAINT [FK_StudentAcademicRecordDiploma_DiplomaLevelType] FOREIGN KEY ([DiplomaLevelTypeId]) REFERENCES [edfi].[DiplomaLevelType] ([DiplomaLevelTypeId])
GO
ALTER TABLE [edfi].[StudentAcademicRecordDiploma] ADD CONSTRAINT [FK_StudentAcademicRecordDiploma_DiplomaType] FOREIGN KEY ([DiplomaTypeId]) REFERENCES [edfi].[DiplomaType] ([DiplomaTypeId])
GO
ALTER TABLE [edfi].[StudentAcademicRecordDiploma] ADD CONSTRAINT [FK_StudentAcademicRecordDiploma_StudentAcademicRecord] FOREIGN KEY ([StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId]) REFERENCES [edfi].[StudentAcademicRecord] ([StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId]) ON DELETE CASCADE
GO
