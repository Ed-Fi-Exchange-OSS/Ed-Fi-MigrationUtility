-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key on [edfi].[SectionCourseLevelCharacteristic]'
GO

ALTER TABLE [edfi].[SectionCourseLevelCharacteristic] ADD
CONSTRAINT [SectionCourseLevelCharacteristic_PK] PRIMARY KEY CLUSTERED (
        [CourseLevelCharacteristicDescriptorId] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    )
GO

PRINT N'Adding index [FK_SectionCourseLevelCharacteristic_CourseLevelCharacteristicDescriptor] on [edfi].[SectionCourseLevelCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionCourseLevelCharacteristic_CourseLevelCharacteristicDescriptor]
ON [edfi].[SectionCourseLevelCharacteristic] ([CourseLevelCharacteristicDescriptorId] ASC)
GO

PRINT N'Adding index [FK_SectionCourseLevelCharacteristic_Section] on [edfi].[SectionCourseLevelCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionCourseLevelCharacteristic_Section]
ON [edfi].[SectionCourseLevelCharacteristic] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

PRINT N'Adding constraints to [edfi].[SectionCourseLevelCharacteristic]'
GO
ALTER TABLE [edfi].[SectionCourseLevelCharacteristic] ADD CONSTRAINT [SectionCourseLevelCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [edfi].[SectionCourseLevelCharacteristic] WITH CHECK ADD CONSTRAINT [FK_SectionCourseLevelCharacteristic_CourseLevelCharacteristicDescriptor] FOREIGN KEY ([CourseLevelCharacteristicDescriptorId])
REFERENCES [edfi].[CourseLevelCharacteristicDescriptor] ([CourseLevelCharacteristicDescriptorId])
GO

ALTER TABLE [edfi].[SectionCourseLevelCharacteristic] WITH CHECK ADD CONSTRAINT [FK_SectionCourseLevelCharacteristic_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
