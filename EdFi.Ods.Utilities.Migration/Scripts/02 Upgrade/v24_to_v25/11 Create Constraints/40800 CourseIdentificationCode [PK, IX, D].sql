-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseIdentificationCode_PK] on [edfi].[CourseIdentificationCode]'
GO
ALTER TABLE [edfi].[CourseIdentificationCode] ADD CONSTRAINT [CourseIdentificationCode_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [CourseCode], [CourseIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_CourseIdentificationCode_CourseIdentificationSystemDescriptor] on [edfi].[CourseIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseIdentificationCode_CourseIdentificationSystemDescriptor] ON [edfi].[CourseIdentificationCode] ([CourseIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_CourseIdentificationCode_Course] on [edfi].[CourseIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseIdentificationCode_Course] ON [edfi].[CourseIdentificationCode] ([EducationOrganizationId], [CourseCode])
GO

PRINT N'Adding constraints to [edfi].[CourseIdentificationCode]'
GO
ALTER TABLE [edfi].[CourseIdentificationCode] ADD CONSTRAINT [CourseIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

