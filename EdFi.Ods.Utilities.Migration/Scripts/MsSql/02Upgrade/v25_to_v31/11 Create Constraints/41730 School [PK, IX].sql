-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [School_PK] on [edfi].[School]'
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [School_PK] PRIMARY KEY CLUSTERED  ([SchoolId])
GO

PRINT N'Creating index [FK_School_AdministrativeFundingControlDescriptor] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_AdministrativeFundingControlDescriptor] ON [edfi].[School] ([AdministrativeFundingControlDescriptorId])
GO

PRINT N'Creating index [FK_School_CharterApprovalAgencyTypeDescriptor] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_CharterApprovalAgencyTypeDescriptor] ON [edfi].[School] ([CharterApprovalAgencyTypeDescriptorId])
GO

PRINT N'Creating index [FK_School_SchoolYearType] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_SchoolYearType] ON [edfi].[School] ([CharterApprovalSchoolYear])
GO

PRINT N'Creating index [FK_School_CharterStatusDescriptor] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_CharterStatusDescriptor] ON [edfi].[School] ([CharterStatusDescriptorId])
GO

PRINT N'Creating index [FK_School_InternetAccessDescriptor] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_InternetAccessDescriptor] ON [edfi].[School] ([InternetAccessDescriptorId])
GO

PRINT N'Creating index [FK_School_LocalEducationAgency] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_LocalEducationAgency] ON [edfi].[School] ([LocalEducationAgencyId])
GO

PRINT N'Creating index [FK_School_MagnetSpecialProgramEmphasisSchoolDescriptor] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_MagnetSpecialProgramEmphasisSchoolDescriptor] ON [edfi].[School] ([MagnetSpecialProgramEmphasisSchoolDescriptorId])
GO

PRINT N'Creating index [FK_School_SchoolTypeDescriptor] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_SchoolTypeDescriptor] ON [edfi].[School] ([SchoolTypeDescriptorId])
GO

PRINT N'Creating index [FK_School_TitleIPartASchoolDesignationDescriptor] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_TitleIPartASchoolDesignationDescriptor] ON [edfi].[School] ([TitleIPartASchoolDesignationDescriptorId])
GO
