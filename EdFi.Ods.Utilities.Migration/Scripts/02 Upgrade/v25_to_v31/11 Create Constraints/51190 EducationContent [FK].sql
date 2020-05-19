-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[EducationContent]'
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [FK_EducationContent_ContentClassDescriptor] FOREIGN KEY ([ContentClassDescriptorId]) REFERENCES [edfi].[ContentClassDescriptor] ([ContentClassDescriptorId])
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [FK_EducationContent_CostRateDescriptor] FOREIGN KEY ([CostRateDescriptorId]) REFERENCES [edfi].[CostRateDescriptor] ([CostRateDescriptorId])
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [FK_EducationContent_InteractivityStyleDescriptor] FOREIGN KEY ([InteractivityStyleDescriptorId]) REFERENCES [edfi].[InteractivityStyleDescriptor] ([InteractivityStyleDescriptorId])
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [FK_EducationContent_LearningStandard] FOREIGN KEY ([LearningStandardId]) REFERENCES [edfi].[LearningStandard] ([LearningStandardId])
GO
