-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CourseIdentificationCode]'
GO
ALTER TABLE [edfi].[CourseIdentificationCode] ADD CONSTRAINT [FK_CourseIdentificationCode_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId]) REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[CourseIdentificationCode] ADD CONSTRAINT [FK_CourseIdentificationCode_CourseIdentificationSystemDescriptor] FOREIGN KEY ([CourseIdentificationSystemDescriptorId]) REFERENCES [edfi].[CourseIdentificationSystemDescriptor] ([CourseIdentificationSystemDescriptorId])
GO
