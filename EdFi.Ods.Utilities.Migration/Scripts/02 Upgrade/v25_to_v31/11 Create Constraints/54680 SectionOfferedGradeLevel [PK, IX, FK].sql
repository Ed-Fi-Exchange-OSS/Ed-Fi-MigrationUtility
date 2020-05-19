-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key on [edfi].[SectionOfferedGradeLevel]'
GO

ALTER TABLE [edfi].[SectionOfferedGradeLevel] ADD
CONSTRAINT [SectionOfferedGradeLevel_PK] PRIMARY KEY CLUSTERED (
        [GradeLevelDescriptorId] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    )
GO

PRINT N'Adding index [FK_SectionOfferedGradeLevel_GradeLevelDescriptor] on [edfi].[SectionOfferedGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionOfferedGradeLevel_GradeLevelDescriptor]
ON [edfi].[SectionOfferedGradeLevel] ([GradeLevelDescriptorId] ASC)
GO

PRINT N'Adding index [FK_SectionOfferedGradeLevel_Section] on [edfi].[SectionOfferedGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionOfferedGradeLevel_Section]
ON [edfi].[SectionOfferedGradeLevel] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO


PRINT N'Adding constraints to [edfi].[SectionOfferedGradeLevel]'
GO
ALTER TABLE [edfi].[SectionOfferedGradeLevel] ADD CONSTRAINT [SectionOfferedGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [edfi].[SectionOfferedGradeLevel] WITH CHECK ADD CONSTRAINT [FK_SectionOfferedGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

ALTER TABLE [edfi].[SectionOfferedGradeLevel] WITH CHECK ADD CONSTRAINT [FK_SectionOfferedGradeLevel_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

