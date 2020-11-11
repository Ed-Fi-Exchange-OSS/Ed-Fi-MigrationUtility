-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[SectionClassPeriod]'
GO
ALTER TABLE [edfi].[SectionClassPeriod] ADD CONSTRAINT [FK_SectionClassPeriod_ClassPeriod] FOREIGN KEY ([ClassPeriodName], [SchoolId]) REFERENCES [edfi].[ClassPeriod] ([ClassPeriodName], [SchoolId]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[SectionClassPeriod] ADD CONSTRAINT [FK_SectionClassPeriod_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) ON DELETE CASCADE ON UPDATE CASCADE
GO
