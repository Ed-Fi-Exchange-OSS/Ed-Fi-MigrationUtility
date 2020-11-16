-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key on [edfi].[CourseOfferingCourseLevelCharacteristic]'
GO

ALTER TABLE [edfi].[CourseOfferingCourseLevelCharacteristic] ADD
CONSTRAINT [CourseOfferingCourseLevelCharacteristic_PK] PRIMARY KEY CLUSTERED (
        [CourseLevelCharacteristicDescriptorId] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SessionName] ASC
    )
GO

PRINT N'Creating index [FK_CourseOfferingCourseLevelCharacteristic_CourseLevelCharacteristicDescriptor] on [edfi].[CourseOfferingCourseLevelCharacteristic]'
CREATE NONCLUSTERED INDEX [FK_CourseOfferingCourseLevelCharacteristic_CourseLevelCharacteristicDescriptor]
ON [edfi].[CourseOfferingCourseLevelCharacteristic] ([CourseLevelCharacteristicDescriptorId] ASC)
GO

PRINT N'Creating index [FK_CourseOfferingCourseLevelCharacteristic_CourseOffering] on [edfi].[CourseOfferingCourseLevelCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseOfferingCourseLevelCharacteristic_CourseOffering]
ON [edfi].[CourseOfferingCourseLevelCharacteristic] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SessionName] ASC)
GO

PRINT N'Adding constraints to [edfi].[CourseOfferingCourseLevelCharacteristic]'
GO

ALTER TABLE [edfi].[CourseOfferingCourseLevelCharacteristic] ADD CONSTRAINT [CourseOfferingCourseLevelCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

PRINT N'Adding foreign keys to [edfi].[CourseOfferingCourseLevelCharacteristic]'
GO

ALTER TABLE [edfi].[CourseOfferingCourseLevelCharacteristic] WITH CHECK ADD CONSTRAINT [FK_CourseOfferingCourseLevelCharacteristic_CourseLevelCharacteristicDescriptor] FOREIGN KEY ([CourseLevelCharacteristicDescriptorId])
REFERENCES [edfi].[CourseLevelCharacteristicDescriptor] ([CourseLevelCharacteristicDescriptorId])
GO

ALTER TABLE [edfi].[CourseOfferingCourseLevelCharacteristic] WITH CHECK ADD CONSTRAINT [FK_CourseOfferingCourseLevelCharacteristic_CourseOffering] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SessionName])
REFERENCES [edfi].[CourseOffering] ([LocalCourseCode], [SchoolId], [SchoolYear], [SessionName])
ON DELETE CASCADE
GO
