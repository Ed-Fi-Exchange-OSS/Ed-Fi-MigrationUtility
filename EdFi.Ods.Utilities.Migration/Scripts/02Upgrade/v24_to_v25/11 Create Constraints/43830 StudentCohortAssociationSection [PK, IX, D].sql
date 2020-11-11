-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentCohortAssociationSection_PK] on [edfi].[StudentCohortAssociationSection]'
GO
ALTER TABLE [edfi].[StudentCohortAssociationSection] ADD CONSTRAINT [StudentCohortAssociationSection_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [ClassroomIdentificationCode], [SchoolId], [ClassPeriodName], [LocalCourseCode], [SchoolYear], [TermDescriptorId], [UniqueSectionCode], [SequenceOfCourse], [EducationOrganizationId], [CohortIdentifier], [BeginDate])
GO
PRINT N'Creating index [FK_StudentCohortAssociationSection_Section] on [edfi].[StudentCohortAssociationSection]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCohortAssociationSection_Section] ON [edfi].[StudentCohortAssociationSection] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse])
GO
PRINT N'Creating index [FK_StudentCohortAssociationSection_StudentCohortAssociation] on [edfi].[StudentCohortAssociationSection]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCohortAssociationSection_StudentCohortAssociation] ON [edfi].[StudentCohortAssociationSection] ([StudentUSI], [EducationOrganizationId], [CohortIdentifier], [BeginDate])
GO

PRINT N'Adding constraints to [edfi].[StudentCohortAssociationSection]'
GO
ALTER TABLE [edfi].[StudentCohortAssociationSection] ADD CONSTRAINT [StudentCohortAssociationSection_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

