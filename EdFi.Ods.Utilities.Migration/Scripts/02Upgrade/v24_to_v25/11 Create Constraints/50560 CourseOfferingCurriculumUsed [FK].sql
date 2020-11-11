-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CourseOfferingCurriculumUsed]'
GO
ALTER TABLE [edfi].[CourseOfferingCurriculumUsed] ADD CONSTRAINT [FK_CourseOfferingCurriculumUsed_CourseOffering] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [TermDescriptorId]) REFERENCES [edfi].[CourseOffering] ([LocalCourseCode], [SchoolId], [SchoolYear], [TermDescriptorId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[CourseOfferingCurriculumUsed] ADD CONSTRAINT [FK_CourseOfferingCurriculumUsed_CurriculumUsedType] FOREIGN KEY ([CurriculumUsedTypeId]) REFERENCES [edfi].[CurriculumUsedType] ([CurriculumUsedTypeId])
GO
