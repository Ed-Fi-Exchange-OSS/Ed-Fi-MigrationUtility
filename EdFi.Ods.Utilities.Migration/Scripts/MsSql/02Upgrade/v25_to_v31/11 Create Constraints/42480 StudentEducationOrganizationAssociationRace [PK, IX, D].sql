-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationRace_PK] on [edfi].[StudentEducationOrganizationAssociationRace]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationRace] ADD CONSTRAINT [StudentEducationOrganizationAssociationRace_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [RaceDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationRace_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationRace]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationRace_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationRace] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationRace_RaceDescriptor] on [edfi].[StudentEducationOrganizationAssociationRace]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationRace_RaceDescriptor] ON [edfi].[StudentEducationOrganizationAssociationRace] ([RaceDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationRace]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationRace] ADD CONSTRAINT [StudentEducationOrganizationAssociationRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
