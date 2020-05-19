-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentSchoolAssociation]'
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [FK_StudentSchoolAssociation_EntryGradeLevelReasonType] FOREIGN KEY ([EntryGradeLevelReasonTypeId]) REFERENCES [edfi].[EntryGradeLevelReasonType] ([EntryGradeLevelReasonTypeId])
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [FK_StudentSchoolAssociation_EntryTypeDescriptor] FOREIGN KEY ([EntryTypeDescriptorId]) REFERENCES [edfi].[EntryTypeDescriptor] ([EntryTypeDescriptorId])
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [FK_StudentSchoolAssociation_ExitWithdrawTypeDescriptor] FOREIGN KEY ([ExitWithdrawTypeDescriptorId]) REFERENCES [edfi].[ExitWithdrawTypeDescriptor] ([ExitWithdrawTypeDescriptorId])
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [FK_StudentSchoolAssociation_GradeLevelDescriptor] FOREIGN KEY ([EntryGradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [FK_StudentSchoolAssociation_GraduationPlan] FOREIGN KEY ([GraduationPlanTypeDescriptorId], [EducationOrganizationId], [GraduationSchoolYear]) REFERENCES [edfi].[GraduationPlan] ([GraduationPlanTypeDescriptorId], [EducationOrganizationId], [GraduationSchoolYear])
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [FK_StudentSchoolAssociation_ResidencyStatusDescriptor] FOREIGN KEY ([ResidencyStatusDescriptorId]) REFERENCES [edfi].[ResidencyStatusDescriptor] ([ResidencyStatusDescriptorId])
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [FK_StudentSchoolAssociation_School] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [FK_StudentSchoolAssociation_SchoolYearType] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [FK_StudentSchoolAssociation_SchoolYearType1] FOREIGN KEY ([ClassOfSchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [FK_StudentSchoolAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
