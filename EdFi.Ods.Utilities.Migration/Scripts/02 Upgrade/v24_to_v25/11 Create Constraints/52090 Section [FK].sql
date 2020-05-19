-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Section]'
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_ClassPeriod] FOREIGN KEY ([SchoolId], [ClassPeriodName]) REFERENCES [edfi].[ClassPeriod] ([SchoolId], [ClassPeriodName]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_CourseOffering] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [TermDescriptorId]) REFERENCES [edfi].[CourseOffering] ([LocalCourseCode], [SchoolId], [SchoolYear], [TermDescriptorId])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_CreditType] FOREIGN KEY ([AvailableCreditTypeId]) REFERENCES [edfi].[CreditType] ([CreditTypeId])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_EducationalEnvironmentType] FOREIGN KEY ([EducationalEnvironmentTypeId]) REFERENCES [edfi].[EducationalEnvironmentType] ([EducationalEnvironmentTypeId])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_LanguageDescriptor] FOREIGN KEY ([InstructionLanguageDescriptorId]) REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_Location] FOREIGN KEY ([SchoolId], [ClassroomIdentificationCode]) REFERENCES [edfi].[Location] ([SchoolId], [ClassroomIdentificationCode]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_MediumOfInstructionType] FOREIGN KEY ([MediumOfInstructionTypeId]) REFERENCES [edfi].[MediumOfInstructionType] ([MediumOfInstructionTypeId])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_PopulationServedType] FOREIGN KEY ([PopulationServedTypeId]) REFERENCES [edfi].[PopulationServedType] ([PopulationServedTypeId])
GO
ALTER TABLE [edfi].[Section] ADD CONSTRAINT [FK_Section_School] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
