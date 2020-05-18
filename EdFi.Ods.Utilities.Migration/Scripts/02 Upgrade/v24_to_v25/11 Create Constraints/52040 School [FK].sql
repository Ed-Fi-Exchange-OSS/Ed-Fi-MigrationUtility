-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[School]'
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_AdministrativeFundingControlDescriptor] FOREIGN KEY ([AdministrativeFundingControlDescriptorId]) REFERENCES [edfi].[AdministrativeFundingControlDescriptor] ([AdministrativeFundingControlDescriptorId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_CharterApprovalAgencyType] FOREIGN KEY ([CharterApprovalAgencyTypeId]) REFERENCES [edfi].[CharterApprovalAgencyType] ([CharterApprovalAgencyTypeId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_CharterStatusType] FOREIGN KEY ([CharterStatusTypeId]) REFERENCES [edfi].[CharterStatusType] ([CharterStatusTypeId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_EducationOrganization] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_InternetAccessType] FOREIGN KEY ([InternetAccessTypeId]) REFERENCES [edfi].[InternetAccessType] ([InternetAccessTypeId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_LocalEducationAgency] FOREIGN KEY ([LocalEducationAgencyId]) REFERENCES [edfi].[LocalEducationAgency] ([LocalEducationAgencyId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_MagnetSpecialProgramEmphasisSchoolType] FOREIGN KEY ([MagnetSpecialProgramEmphasisSchoolTypeId]) REFERENCES [edfi].[MagnetSpecialProgramEmphasisSchoolType] ([MagnetSpecialProgramEmphasisSchoolTypeId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_SchoolType] FOREIGN KEY ([SchoolTypeId]) REFERENCES [edfi].[SchoolType] ([SchoolTypeId])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_SchoolYearType] FOREIGN KEY ([CharterApprovalSchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
ALTER TABLE [edfi].[School] ADD CONSTRAINT [FK_School_TitleIPartASchoolDesignationType] FOREIGN KEY ([TitleIPartASchoolDesignationTypeId]) REFERENCES [edfi].[TitleIPartASchoolDesignationType] ([TitleIPartASchoolDesignationTypeId])
GO
