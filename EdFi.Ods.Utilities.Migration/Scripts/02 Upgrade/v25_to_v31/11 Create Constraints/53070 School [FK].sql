-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[School]'
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_AdministrativeFundingControlDescriptor] FOREIGN KEY ([AdministrativeFundingControlDescriptorId]) REFERENCES [edfi].[AdministrativeFundingControlDescriptor] ([AdministrativeFundingControlDescriptorId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_CharterApprovalAgencyTypeDescriptor] FOREIGN KEY ([CharterApprovalAgencyTypeDescriptorId]) REFERENCES [edfi].[CharterApprovalAgencyTypeDescriptor] ([CharterApprovalAgencyTypeDescriptorId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_CharterStatusDescriptor] FOREIGN KEY ([CharterStatusDescriptorId]) REFERENCES [edfi].[CharterStatusDescriptor] ([CharterStatusDescriptorId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_EducationOrganization] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_InternetAccessDescriptor] FOREIGN KEY ([InternetAccessDescriptorId]) REFERENCES [edfi].[InternetAccessDescriptor] ([InternetAccessDescriptorId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_LocalEducationAgency] FOREIGN KEY ([LocalEducationAgencyId]) REFERENCES [edfi].[LocalEducationAgency] ([LocalEducationAgencyId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_MagnetSpecialProgramEmphasisSchoolDescriptor] FOREIGN KEY ([MagnetSpecialProgramEmphasisSchoolDescriptorId]) REFERENCES [edfi].[MagnetSpecialProgramEmphasisSchoolDescriptor] ([MagnetSpecialProgramEmphasisSchoolDescriptorId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_SchoolTypeDescriptor] FOREIGN KEY ([SchoolTypeDescriptorId]) REFERENCES [edfi].[SchoolTypeDescriptor] ([SchoolTypeDescriptorId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_SchoolYearType] FOREIGN KEY ([CharterApprovalSchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_TitleIPartASchoolDesignationDescriptor] FOREIGN KEY ([TitleIPartASchoolDesignationDescriptorId]) REFERENCES [edfi].[TitleIPartASchoolDesignationDescriptor] ([TitleIPartASchoolDesignationDescriptorId])
GO
