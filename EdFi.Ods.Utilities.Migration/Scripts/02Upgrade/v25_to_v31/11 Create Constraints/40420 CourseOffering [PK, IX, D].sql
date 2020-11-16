-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseOffering_PK] on [edfi].[CourseOffering]'
GO
ALTER TABLE [edfi].[CourseOffering] ADD CONSTRAINT [CourseOffering_PK] PRIMARY KEY CLUSTERED  ([LocalCourseCode], [SchoolId], [SchoolYear], [SessionName])
GO

PRINT N'Creating index [UX_CourseOffering_Id] on [edfi].[CourseOffering]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CourseOffering_Id] ON [edfi].[CourseOffering] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_CourseOffering_Course] on [edfi].[CourseOffering]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseOffering_Course] ON [edfi].[CourseOffering] ([CourseCode], [EducationOrganizationId])
GO

PRINT N'Creating index [FK_CourseOffering_School] on [edfi].[CourseOffering]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseOffering_School] ON [edfi].[CourseOffering] ([SchoolId])
GO

PRINT N'Creating index [FK_CourseOffering_Session] on [edfi].[CourseOffering]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseOffering_Session] ON [edfi].[CourseOffering] ([SchoolId], [SchoolYear], [SessionName])
GO

PRINT N'Adding constraints to [edfi].[CourseOffering]'
GO
ALTER TABLE [edfi].[CourseOffering] ADD CONSTRAINT [CourseOffering_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CourseOffering] ADD CONSTRAINT [CourseOffering_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CourseOffering] ADD CONSTRAINT [CourseOffering_DF_Id] DEFAULT (newid()) FOR [Id]
GO
