-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseLevelCharacteristic_PK] on [edfi].[CourseLevelCharacteristic]'
GO
ALTER TABLE [edfi].[CourseLevelCharacteristic] ADD CONSTRAINT [CourseLevelCharacteristic_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [CourseCode], [CourseLevelCharacteristicTypeId])
GO
PRINT N'Creating index [FK_CourseLevelCharacteristic_CourseLevelCharacteristicType] on [edfi].[CourseLevelCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseLevelCharacteristic_CourseLevelCharacteristicType] ON [edfi].[CourseLevelCharacteristic] ([CourseLevelCharacteristicTypeId])
GO
PRINT N'Creating index [FK_CourseLevelCharacteristic_Course] on [edfi].[CourseLevelCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseLevelCharacteristic_Course] ON [edfi].[CourseLevelCharacteristic] ([EducationOrganizationId], [CourseCode])
GO

PRINT N'Adding constraints to [edfi].[CourseLevelCharacteristic]'
GO
ALTER TABLE [edfi].[CourseLevelCharacteristic] ADD CONSTRAINT [CourseLevelCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

