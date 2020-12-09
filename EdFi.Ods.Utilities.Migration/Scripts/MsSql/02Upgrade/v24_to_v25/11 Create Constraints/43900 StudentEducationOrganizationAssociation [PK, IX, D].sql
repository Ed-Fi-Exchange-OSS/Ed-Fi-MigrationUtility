-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociation_PK] on [edfi].[StudentEducationOrganizationAssociation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] ADD CONSTRAINT [StudentEducationOrganizationAssociation_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [EducationOrganizationId], [ResponsibilityDescriptorId])
GO
PRINT N'Creating index [UX_StudentEducationOrganizationAssociation_Id] on [edfi].[StudentEducationOrganizationAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentEducationOrganizationAssociation_Id] ON [edfi].[StudentEducationOrganizationAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StudentEducationOrganizationAssociation_EducationOrganization] on [edfi].[StudentEducationOrganizationAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_EducationOrganization] ON [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId])
GO
PRINT N'Creating index [FK_StudentEducationOrganizationAssociation_ResponsibilityDescriptor] on [edfi].[StudentEducationOrganizationAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_ResponsibilityDescriptor] ON [edfi].[StudentEducationOrganizationAssociation] ([ResponsibilityDescriptorId])
GO
PRINT N'Creating index [FK_StudentEducationOrganizationAssociation_Student] on [edfi].[StudentEducationOrganizationAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_Student] ON [edfi].[StudentEducationOrganizationAssociation] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] ADD CONSTRAINT [StudentEducationOrganizationAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] ADD CONSTRAINT [StudentEducationOrganizationAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] ADD CONSTRAINT [StudentEducationOrganizationAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO

