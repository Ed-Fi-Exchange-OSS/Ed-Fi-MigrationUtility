-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAcademicRecordClassRanking_PK] on [edfi].[StudentAcademicRecordClassRanking]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordClassRanking] ADD CONSTRAINT [StudentAcademicRecordClassRanking_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [SchoolYear], [TermDescriptorId], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_StudentAcademicRecordClassRanking_StudentAcademicRecord] on [edfi].[StudentAcademicRecordClassRanking]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordClassRanking_StudentAcademicRecord] ON [edfi].[StudentAcademicRecordClassRanking] ([StudentUSI], [EducationOrganizationId], [SchoolYear], [TermDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentAcademicRecordClassRanking]'
GO
ALTER TABLE [edfi].[StudentAcademicRecordClassRanking] ADD CONSTRAINT [StudentAcademicRecordClassRanking_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

