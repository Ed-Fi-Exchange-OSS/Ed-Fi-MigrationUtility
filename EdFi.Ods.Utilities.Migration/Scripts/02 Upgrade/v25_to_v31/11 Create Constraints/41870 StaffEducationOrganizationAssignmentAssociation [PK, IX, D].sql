-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffEducationOrganizationAssignmentAssociation_PK] on [edfi].[StaffEducationOrganizationAssignmentAssociation]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
GO

PRINT N'Creating index [UX_StaffEducationOrganizationAssignmentAssociation_Id] on [edfi].[StaffEducationOrganizationAssignmentAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StaffEducationOrganizationAssignmentAssociation_Id] ON [edfi].[StaffEducationOrganizationAssignmentAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StaffEducationOrganizationAssignmentAssociation_Credential] on [edfi].[StaffEducationOrganizationAssignmentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociation_Credential] ON [edfi].[StaffEducationOrganizationAssignmentAssociation] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationAssignmentAssociation_EducationOrganization] on [edfi].[StaffEducationOrganizationAssignmentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociation_EducationOrganization] ON [edfi].[StaffEducationOrganizationAssignmentAssociation] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationAssignmentAssociation_StaffEducationOrganizationEmploymentAssociation] on [edfi].[StaffEducationOrganizationAssignmentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociation_StaffEducationOrganizationEmploymentAssociation] ON [edfi].[StaffEducationOrganizationAssignmentAssociation] ([EmploymentEducationOrganizationId], [EmploymentStatusDescriptorId], [EmploymentHireDate], [StaffUSI])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationAssignmentAssociation_StaffClassificationDescriptor] on [edfi].[StaffEducationOrganizationAssignmentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociation_StaffClassificationDescriptor] ON [edfi].[StaffEducationOrganizationAssignmentAssociation] ([StaffClassificationDescriptorId])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationAssignmentAssociation_Staff] on [edfi].[StaffEducationOrganizationAssignmentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociation_Staff] ON [edfi].[StaffEducationOrganizationAssignmentAssociation] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffEducationOrganizationAssignmentAssociation]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
