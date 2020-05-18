-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionStudyAppropriateGradeLevel_PK] on [edfi].[InterventionStudyAppropriateGradeLevel]'
GO
ALTER TABLE [edfi].[InterventionStudyAppropriateGradeLevel] ADD CONSTRAINT [InterventionStudyAppropriateGradeLevel_PK] PRIMARY KEY CLUSTERED  ([InterventionStudyIdentificationCode], [EducationOrganizationId], [GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_InterventionStudyAppropriateGradeLevel_GradeLevelDescriptor] on [edfi].[InterventionStudyAppropriateGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyAppropriateGradeLevel_GradeLevelDescriptor] ON [edfi].[InterventionStudyAppropriateGradeLevel] ([GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_InterventionStudyAppropriateGradeLevel_InterventionStudy] on [edfi].[InterventionStudyAppropriateGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyAppropriateGradeLevel_InterventionStudy] ON [edfi].[InterventionStudyAppropriateGradeLevel] ([InterventionStudyIdentificationCode], [EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[InterventionStudyAppropriateGradeLevel]'
GO
ALTER TABLE [edfi].[InterventionStudyAppropriateGradeLevel] ADD CONSTRAINT [InterventionStudyAppropriateGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

