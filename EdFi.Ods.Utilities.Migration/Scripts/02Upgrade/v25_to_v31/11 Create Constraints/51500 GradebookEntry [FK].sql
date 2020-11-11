-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GradebookEntry]'
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [FK_GradebookEntry_GradebookEntryTypeDescriptor] FOREIGN KEY ([GradebookEntryTypeDescriptorId]) REFERENCES [edfi].[GradebookEntryTypeDescriptor] ([GradebookEntryTypeDescriptorId])
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [FK_GradebookEntry_GradingPeriod] FOREIGN KEY ([GradingPeriodDescriptorId], [PeriodSequence], [SchoolId], [SchoolYear]) REFERENCES [edfi].[GradingPeriod] ([GradingPeriodDescriptorId], [PeriodSequence], [SchoolId], [SchoolYear])
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [FK_GradebookEntry_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) ON UPDATE CASCADE
GO
