-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Section]'
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_CourseOffering] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SessionName]) REFERENCES [edfi].[CourseOffering] ([LocalCourseCode], [SchoolId], [SchoolYear], [SessionName])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_CreditTypeDescriptor] FOREIGN KEY ([AvailableCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_EducationalEnvironmentDescriptor] FOREIGN KEY ([EducationalEnvironmentDescriptorId]) REFERENCES [edfi].[EducationalEnvironmentDescriptor] ([EducationalEnvironmentDescriptorId])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_LanguageDescriptor] FOREIGN KEY ([InstructionLanguageDescriptorId]) REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_Location] FOREIGN KEY ([LocationClassroomIdentificationCode], [LocationSchoolId]) REFERENCES [edfi].[Location] ([ClassroomIdentificationCode], [SchoolId]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_MediumOfInstructionDescriptor] FOREIGN KEY ([MediumOfInstructionDescriptorId]) REFERENCES [edfi].[MediumOfInstructionDescriptor] ([MediumOfInstructionDescriptorId])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_PopulationServedDescriptor] FOREIGN KEY ([PopulationServedDescriptorId]) REFERENCES [edfi].[PopulationServedDescriptor] ([PopulationServedDescriptorId])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_School] FOREIGN KEY ([LocationSchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
