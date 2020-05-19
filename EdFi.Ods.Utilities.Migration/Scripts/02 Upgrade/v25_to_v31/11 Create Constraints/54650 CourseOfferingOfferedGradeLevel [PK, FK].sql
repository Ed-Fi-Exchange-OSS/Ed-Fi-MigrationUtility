-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key on [edfi].[CourseOfferingOfferedGradeLevel]'
GO

ALTER TABLE [edfi].[CourseOfferingOfferedGradeLevel] ADD
CONSTRAINT [CourseOfferingOfferedGradeLevel_PK] PRIMARY KEY CLUSTERED (
        [GradeLevelDescriptorId] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SessionName] ASC
    )
GO

PRINT N'Creating index [FK_CourseOfferingOfferedGradeLevel_CourseOffering] on [edfi].[CourseOfferingOfferedGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseOfferingOfferedGradeLevel_CourseOffering]
ON [edfi].[CourseOfferingOfferedGradeLevel] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SessionName] ASC)
GO

PRINT N'Creating index [FK_CourseOfferingOfferedGradeLevel_GradeLevelDescriptor] on [edfi].[CourseOfferingOfferedGradeLevel]'
CREATE NONCLUSTERED INDEX [FK_CourseOfferingOfferedGradeLevel_GradeLevelDescriptor]
ON [edfi].[CourseOfferingOfferedGradeLevel] ([GradeLevelDescriptorId] ASC)
GO

PRINT N'Adding constraints to [edfi].[CourseOfferingOfferedGradeLevel]'
GO
ALTER TABLE [edfi].[CourseOfferingOfferedGradeLevel] ADD CONSTRAINT [CourseOfferingOfferedGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

PRINT N'Adding foreign keys to [edfi].[CourseOfferingOfferedGradeLevel]'
GO
ALTER TABLE [edfi].[CourseOfferingOfferedGradeLevel] WITH CHECK ADD CONSTRAINT [FK_CourseOfferingOfferedGradeLevel_CourseOffering] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SessionName])
REFERENCES [edfi].[CourseOffering] ([LocalCourseCode], [SchoolId], [SchoolYear], [SessionName])
ON DELETE CASCADE
GO

ALTER TABLE [edfi].[CourseOfferingOfferedGradeLevel] WITH CHECK ADD CONSTRAINT [FK_CourseOfferingOfferedGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
