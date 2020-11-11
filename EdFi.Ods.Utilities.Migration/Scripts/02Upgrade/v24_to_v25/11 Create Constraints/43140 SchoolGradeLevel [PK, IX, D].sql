-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SchoolGradeLevel_PK] on [edfi].[SchoolGradeLevel]'
GO
ALTER TABLE [edfi].[SchoolGradeLevel] ADD CONSTRAINT [SchoolGradeLevel_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_SchoolGradeLevel_GradeLevelDescriptor] on [edfi].[SchoolGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_SchoolGradeLevel_GradeLevelDescriptor] ON [edfi].[SchoolGradeLevel] ([GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_SchoolGradeLevel_School] on [edfi].[SchoolGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_SchoolGradeLevel_School] ON [edfi].[SchoolGradeLevel] ([SchoolId])
GO

PRINT N'Adding constraints to [edfi].[SchoolGradeLevel]'
GO
ALTER TABLE [edfi].[SchoolGradeLevel] ADD CONSTRAINT [SchoolGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

