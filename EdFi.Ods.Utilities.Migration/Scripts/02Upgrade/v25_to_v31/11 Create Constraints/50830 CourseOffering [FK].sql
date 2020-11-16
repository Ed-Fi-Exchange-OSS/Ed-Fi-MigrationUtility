-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CourseOffering]'
GO
ALTER TABLE [edfi].[CourseOffering] ADD CONSTRAINT [FK_CourseOffering_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId]) REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO
ALTER TABLE [edfi].[CourseOffering] ADD CONSTRAINT [FK_CourseOffering_School] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
ALTER TABLE [edfi].[CourseOffering] ADD CONSTRAINT [FK_CourseOffering_Session] FOREIGN KEY ([SchoolId], [SchoolYear], [SessionName]) REFERENCES [edfi].[Session] ([SchoolId], [SchoolYear], [SessionName])
GO
