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
PRINT N'Creating index [FK_School_CharterApprovalAgencyType] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_CharterApprovalAgencyType] ON [edfi].[School] ([CharterApprovalAgencyTypeId])
GO
PRINT N'Creating index [FK_School_SchoolYearType] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_SchoolYearType] ON [edfi].[School] ([CharterApprovalSchoolYear])
GO
PRINT N'Creating index [FK_School_CharterStatusType] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_CharterStatusType] ON [edfi].[School] ([CharterStatusTypeId])
GO
PRINT N'Creating index [FK_School_InternetAccessType] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_InternetAccessType] ON [edfi].[School] ([InternetAccessTypeId])
GO
PRINT N'Creating index [FK_School_LocalEducationAgency] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_LocalEducationAgency] ON [edfi].[School] ([LocalEducationAgencyId])
GO
PRINT N'Creating index [FK_School_MagnetSpecialProgramEmphasisSchoolType] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_MagnetSpecialProgramEmphasisSchoolType] ON [edfi].[School] ([MagnetSpecialProgramEmphasisSchoolTypeId])
GO
PRINT N'Creating index [FK_School_EducationOrganization] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_EducationOrganization] ON [edfi].[School] ([SchoolId])
GO
PRINT N'Creating index [FK_School_SchoolType] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_SchoolType] ON [edfi].[School] ([SchoolTypeId])
GO
PRINT N'Creating index [FK_School_TitleIPartASchoolDesignationType] on [edfi].[School]'
GO
CREATE NONCLUSTERED INDEX [FK_School_TitleIPartASchoolDesignationType] ON [edfi].[School] ([TitleIPartASchoolDesignationTypeId])
GO

