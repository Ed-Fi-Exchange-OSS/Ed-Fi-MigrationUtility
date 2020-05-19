-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CourseLevelCharacteristic]'
GO
ALTER TABLE [edfi].[CourseLevelCharacteristic] ADD CONSTRAINT [FK_CourseLevelCharacteristic_Course] FOREIGN KEY ([EducationOrganizationId], [CourseCode]) REFERENCES [edfi].[Course] ([EducationOrganizationId], [CourseCode]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[CourseLevelCharacteristic] ADD CONSTRAINT [FK_CourseLevelCharacteristic_CourseLevelCharacteristicType] FOREIGN KEY ([CourseLevelCharacteristicTypeId]) REFERENCES [edfi].[CourseLevelCharacteristicType] ([CourseLevelCharacteristicTypeId])
GO
