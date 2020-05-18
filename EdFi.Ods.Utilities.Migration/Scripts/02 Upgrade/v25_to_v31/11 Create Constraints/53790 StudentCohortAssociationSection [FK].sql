-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentCohortAssociationSection]'
GO
ALTER TABLE [edfi].[StudentCohortAssociationSection] ADD CONSTRAINT [FK_StudentCohortAssociationSection_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[StudentCohortAssociationSection] ADD CONSTRAINT [FK_StudentCohortAssociationSection_StudentCohortAssociation] FOREIGN KEY ([BeginDate], [CohortIdentifier], [EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentCohortAssociation] ([BeginDate], [CohortIdentifier], [EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE
GO
