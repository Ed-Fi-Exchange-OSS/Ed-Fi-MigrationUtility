-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationDisabilityDesignation_PK] on [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation] ADD CONSTRAINT [StudentEducationOrganizationAssociationDisabilityDesignation_PK] PRIMARY KEY CLUSTERED  ([DisabilityDescriptorId], [DisabilityDesignationDescriptorId], [EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationDisabilityDesignation_StudentEducationOrganizationAssociationDisability] on [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationDisabilityDesignation_StudentEducationOrganizationAssociationDisability] ON [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation] ([DisabilityDescriptorId], [EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationDisabilityDesignation_DisabilityDesignationDescriptor] on [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationDisabilityDesignation_DisabilityDesignationDescriptor] ON [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation] ([DisabilityDesignationDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation] ADD CONSTRAINT [StudentEducationOrganizationAssociationDisabilityDesignation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
