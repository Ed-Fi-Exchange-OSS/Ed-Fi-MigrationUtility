-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationResponsibilityAssociation_PK] on [edfi].[StudentEducationOrganizationResponsibilityAssociation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation] ADD CONSTRAINT [StudentEducationOrganizationResponsibilityAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [ResponsibilityDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [UX_StudentEducationOrganizationResponsibilityAssociation_Id] on [edfi].[StudentEducationOrganizationResponsibilityAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentEducationOrganizationResponsibilityAssociation_Id] ON [edfi].[StudentEducationOrganizationResponsibilityAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StudentEducationOrganizationResponsibilityAssociation_EducationOrganization] on [edfi].[StudentEducationOrganizationResponsibilityAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationResponsibilityAssociation_EducationOrganization] ON [edfi].[StudentEducationOrganizationResponsibilityAssociation] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationResponsibilityAssociation_ResponsibilityDescriptor] on [edfi].[StudentEducationOrganizationResponsibilityAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationResponsibilityAssociation_ResponsibilityDescriptor] ON [edfi].[StudentEducationOrganizationResponsibilityAssociation] ([ResponsibilityDescriptorId])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationResponsibilityAssociation_Student] on [edfi].[StudentEducationOrganizationResponsibilityAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationResponsibilityAssociation_Student] ON [edfi].[StudentEducationOrganizationResponsibilityAssociation] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationResponsibilityAssociation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation] ADD CONSTRAINT [StudentEducationOrganizationResponsibilityAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation] ADD CONSTRAINT [StudentEducationOrganizationResponsibilityAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation] ADD CONSTRAINT [StudentEducationOrganizationResponsibilityAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
