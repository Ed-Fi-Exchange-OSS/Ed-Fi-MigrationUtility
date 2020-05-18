-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentSchoolAssociation_PK] on [edfi].[StudentSchoolAssociation]'
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [StudentSchoolAssociation_PK] PRIMARY KEY CLUSTERED  ([EntryDate], [SchoolId], [StudentUSI])
GO

PRINT N'Creating index [UX_StudentSchoolAssociation_Id] on [edfi].[StudentSchoolAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentSchoolAssociation_Id] ON [edfi].[StudentSchoolAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StudentSchoolAssociation_Calendar] on [edfi].[StudentSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociation_Calendar] ON [edfi].[StudentSchoolAssociation] ([CalendarCode], [SchoolId], [SchoolYear])
GO

PRINT N'Creating index [FK_StudentSchoolAssociation_SchoolYearType1] on [edfi].[StudentSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociation_SchoolYearType1] ON [edfi].[StudentSchoolAssociation] ([ClassOfSchoolYear])
GO

PRINT N'Creating index [FK_StudentSchoolAssociation_GraduationPlan] on [edfi].[StudentSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociation_GraduationPlan] ON [edfi].[StudentSchoolAssociation] ([EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
GO

PRINT N'Creating index [FK_StudentSchoolAssociation_GradeLevelDescriptor] on [edfi].[StudentSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociation_GradeLevelDescriptor] ON [edfi].[StudentSchoolAssociation] ([EntryGradeLevelDescriptorId])
GO

PRINT N'Creating index [FK_StudentSchoolAssociation_EntryGradeLevelReasonDescriptor] on [edfi].[StudentSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociation_EntryGradeLevelReasonDescriptor] ON [edfi].[StudentSchoolAssociation] ([EntryGradeLevelReasonDescriptorId])
GO

PRINT N'Creating index [FK_StudentSchoolAssociation_EntryTypeDescriptor] on [edfi].[StudentSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociation_EntryTypeDescriptor] ON [edfi].[StudentSchoolAssociation] ([EntryTypeDescriptorId])
GO

PRINT N'Creating index [FK_StudentSchoolAssociation_ExitWithdrawTypeDescriptor] on [edfi].[StudentSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociation_ExitWithdrawTypeDescriptor] ON [edfi].[StudentSchoolAssociation] ([ExitWithdrawTypeDescriptorId])
GO

PRINT N'Creating index [FK_StudentSchoolAssociation_ResidencyStatusDescriptor] on [edfi].[StudentSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociation_ResidencyStatusDescriptor] ON [edfi].[StudentSchoolAssociation] ([ResidencyStatusDescriptorId])
GO

PRINT N'Creating index [FK_StudentSchoolAssociation_School] on [edfi].[StudentSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociation_School] ON [edfi].[StudentSchoolAssociation] ([SchoolId])
GO

PRINT N'Creating index [FK_StudentSchoolAssociation_SchoolYearType] on [edfi].[StudentSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociation_SchoolYearType] ON [edfi].[StudentSchoolAssociation] ([SchoolYear])
GO

PRINT N'Creating index [FK_StudentSchoolAssociation_Student] on [edfi].[StudentSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociation_Student] ON [edfi].[StudentSchoolAssociation] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentSchoolAssociation]'
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [StudentSchoolAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [StudentSchoolAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentSchoolAssociation] ADD CONSTRAINT [StudentSchoolAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
