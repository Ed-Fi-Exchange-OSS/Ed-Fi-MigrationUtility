-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffEducationOrganizationEmploymentAssociation_PK] on [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [StaffUSI], [EmploymentStatusDescriptorId], [HireDate])
GO
PRINT N'Creating index [UX_StaffEducationOrganizationEmploymentAssociation_Id] on [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StaffEducationOrganizationEmploymentAssociation_Id] ON [edfi].[StaffEducationOrganizationEmploymentAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StaffEducationOrganizationEmploymentAssociation_EducationOrganization] on [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociation_EducationOrganization] ON [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId])
GO
PRINT N'Creating index [FK_StaffEducationOrganizationEmploymentAssociation_EmploymentStatusDescriptor] on [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociation_EmploymentStatusDescriptor] ON [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EmploymentStatusDescriptorId])
GO
PRINT N'Creating index [FK_StaffEducationOrganizationEmploymentAssociation_SeparationReasonDescriptor] on [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociation_SeparationReasonDescriptor] ON [edfi].[StaffEducationOrganizationEmploymentAssociation] ([SeparationReasonDescriptorId])
GO
PRINT N'Creating index [FK_StaffEducationOrganizationEmploymentAssociation_SeparationType] on [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociation_SeparationType] ON [edfi].[StaffEducationOrganizationEmploymentAssociation] ([SeparationTypeId])
GO
PRINT N'Creating index [FK_StaffEducationOrganizationEmploymentAssociation_Staff] on [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociation_Staff] ON [edfi].[StaffEducationOrganizationEmploymentAssociation] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO

