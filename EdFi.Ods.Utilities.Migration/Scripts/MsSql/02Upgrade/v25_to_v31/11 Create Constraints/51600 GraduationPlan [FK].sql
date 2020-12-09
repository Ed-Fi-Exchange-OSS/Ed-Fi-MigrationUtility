-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GraduationPlan]'
GO
ALTER TABLE [edfi].[GraduationPlan] ADD CONSTRAINT [FK_GraduationPlan_CreditTypeDescriptor] FOREIGN KEY ([TotalRequiredCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO
ALTER TABLE [edfi].[GraduationPlan] ADD CONSTRAINT [FK_GraduationPlan_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[GraduationPlan] ADD CONSTRAINT [FK_GraduationPlan_GraduationPlanTypeDescriptor] FOREIGN KEY ([GraduationPlanTypeDescriptorId]) REFERENCES [edfi].[GraduationPlanTypeDescriptor] ([GraduationPlanTypeDescriptorId])
GO
ALTER TABLE [edfi].[GraduationPlan] ADD CONSTRAINT [FK_GraduationPlan_SchoolYearType] FOREIGN KEY ([GraduationSchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
