-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[EducationContent]'
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [FK_EducationContent_ContentClassType] FOREIGN KEY ([ContentClassTypeId]) REFERENCES [edfi].[ContentClassType] ([ContentClassTypeId])
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [FK_EducationContent_CostRateType] FOREIGN KEY ([CostRateTypeId]) REFERENCES [edfi].[CostRateType] ([CostRateTypeId])
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [FK_EducationContent_InteractivityStyleType] FOREIGN KEY ([InteractivityStyleTypeId]) REFERENCES [edfi].[InteractivityStyleType] ([InteractivityStyleTypeId])
GO
ALTER TABLE [edfi].[EducationContent] ADD CONSTRAINT [FK_EducationContent_LearningStandard] FOREIGN KEY ([LearningStandardId]) REFERENCES [edfi].[LearningStandard] ([LearningStandardId])
GO
