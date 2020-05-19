-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationDisability_PK] on [edfi].[StudentEducationOrganizationAssociationDisability]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisability] ADD CONSTRAINT [StudentEducationOrganizationAssociationDisability_PK] PRIMARY KEY CLUSTERED  ([DisabilityDescriptorId], [EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationDisability_DisabilityDescriptor] on [edfi].[StudentEducationOrganizationAssociationDisability]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationDisability_DisabilityDescriptor] ON [edfi].[StudentEducationOrganizationAssociationDisability] ([DisabilityDescriptorId])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationDisability_DisabilityDeterminationSourceTypeDescriptor] on [edfi].[StudentEducationOrganizationAssociationDisability]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationDisability_DisabilityDeterminationSourceTypeDescriptor] ON [edfi].[StudentEducationOrganizationAssociationDisability] ([DisabilityDeterminationSourceTypeDescriptorId])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationDisability_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationDisability]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationDisability_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationDisability] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationDisability]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisability] ADD CONSTRAINT [StudentEducationOrganizationAssociationDisability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
