-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GraduationPlanCreditsByCourse]'
GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourse] ADD CONSTRAINT [FK_GraduationPlanCreditsByCourse_CreditType] FOREIGN KEY ([CreditTypeId]) REFERENCES [edfi].[CreditType] ([CreditTypeId])
GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourse] ADD CONSTRAINT [FK_GraduationPlanCreditsByCourse_GradeLevelDescriptor] FOREIGN KEY ([WhenTakenGradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourse] ADD CONSTRAINT [FK_GraduationPlanCreditsByCourse_GraduationPlan] FOREIGN KEY ([GraduationPlanTypeDescriptorId], [EducationOrganizationId], [GraduationSchoolYear]) REFERENCES [edfi].[GraduationPlan] ([GraduationPlanTypeDescriptorId], [EducationOrganizationId], [GraduationSchoolYear]) ON DELETE CASCADE
GO
