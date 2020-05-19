-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionAppropriateGradeLevel_PK] on [edfi].[InterventionAppropriateGradeLevel]'
GO
ALTER TABLE [edfi].[InterventionAppropriateGradeLevel] ADD CONSTRAINT [InterventionAppropriateGradeLevel_PK] PRIMARY KEY CLUSTERED  ([InterventionIdentificationCode], [EducationOrganizationId], [GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_InterventionAppropriateGradeLevel_GradeLevelDescriptor] on [edfi].[InterventionAppropriateGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionAppropriateGradeLevel_GradeLevelDescriptor] ON [edfi].[InterventionAppropriateGradeLevel] ([GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_InterventionAppropriateGradeLevel_Intervention] on [edfi].[InterventionAppropriateGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionAppropriateGradeLevel_Intervention] ON [edfi].[InterventionAppropriateGradeLevel] ([InterventionIdentificationCode], [EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[InterventionAppropriateGradeLevel]'
GO
ALTER TABLE [edfi].[InterventionAppropriateGradeLevel] ADD CONSTRAINT [InterventionAppropriateGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

