-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Cohort]'
GO
ALTER TABLE [edfi].[Cohort] ADD CONSTRAINT [FK_Cohort_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO
ALTER TABLE [edfi].[Cohort] ADD CONSTRAINT [FK_Cohort_CohortScopeDescriptor] FOREIGN KEY ([CohortScopeDescriptorId]) REFERENCES [edfi].[CohortScopeDescriptor] ([CohortScopeDescriptorId])
GO
ALTER TABLE [edfi].[Cohort] ADD CONSTRAINT [FK_Cohort_CohortTypeDescriptor] FOREIGN KEY ([CohortTypeDescriptorId]) REFERENCES [edfi].[CohortTypeDescriptor] ([CohortTypeDescriptorId])
GO
ALTER TABLE [edfi].[Cohort] ADD CONSTRAINT [FK_Cohort_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
