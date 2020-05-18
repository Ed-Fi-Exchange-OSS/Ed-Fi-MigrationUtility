-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentSection_PK] on [edfi].[AssessmentSection]'
GO
ALTER TABLE [edfi].[AssessmentSection] ADD CONSTRAINT [AssessmentSection_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [LocalCourseCode], [Namespace], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO

PRINT N'Creating index [FK_AssessmentSection_Assessment] on [edfi].[AssessmentSection]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentSection_Assessment] ON [edfi].[AssessmentSection] ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentSection_Section] on [edfi].[AssessmentSection]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentSection_Section] ON [edfi].[AssessmentSection] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO

PRINT N'Adding constraints to [edfi].[AssessmentSection]'
GO
ALTER TABLE [edfi].[AssessmentSection] ADD CONSTRAINT [AssessmentSection_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
