-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationTribalAffiliation_PK] on [edfi].[StudentEducationOrganizationAssociationTribalAffiliation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTribalAffiliation] ADD CONSTRAINT [StudentEducationOrganizationAssociationTribalAffiliation_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [StudentUSI], [TribalAffiliationDescriptorId])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationTribalAffiliation_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationTribalAffiliation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationTribalAffiliation_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationTribalAffiliation] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationTribalAffiliation_TribalAffiliationDescriptor] on [edfi].[StudentEducationOrganizationAssociationTribalAffiliation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationTribalAffiliation_TribalAffiliationDescriptor] ON [edfi].[StudentEducationOrganizationAssociationTribalAffiliation] ([TribalAffiliationDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationTribalAffiliation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTribalAffiliation] ADD CONSTRAINT [StudentEducationOrganizationAssociationTribalAffiliation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
