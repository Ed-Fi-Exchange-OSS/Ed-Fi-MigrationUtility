-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentCohortAssociationSection]'
GO
ALTER TABLE [edfi].[StudentCohortAssociationSection] ADD CONSTRAINT [FK_StudentCohortAssociationSection_Section] FOREIGN KEY ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) REFERENCES [edfi].[Section] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[StudentCohortAssociationSection] ADD CONSTRAINT [FK_StudentCohortAssociationSection_StudentCohortAssociation] FOREIGN KEY ([StudentUSI], [EducationOrganizationId], [CohortIdentifier], [BeginDate]) REFERENCES [edfi].[StudentCohortAssociation] ([StudentUSI], [EducationOrganizationId], [CohortIdentifier], [BeginDate]) ON DELETE CASCADE
GO
