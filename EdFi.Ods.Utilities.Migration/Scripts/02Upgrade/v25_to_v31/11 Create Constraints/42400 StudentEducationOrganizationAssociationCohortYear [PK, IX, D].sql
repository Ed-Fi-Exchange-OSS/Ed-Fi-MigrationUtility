-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationCohortYear_PK] on [edfi].[StudentEducationOrganizationAssociationCohortYear]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] ADD CONSTRAINT [StudentEducationOrganizationAssociationCohortYear_PK] PRIMARY KEY CLUSTERED  ([CohortYearTypeDescriptorId], [EducationOrganizationId], [SchoolYear], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationCohortYear_CohortYearTypeDescriptor] on [edfi].[StudentEducationOrganizationAssociationCohortYear]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationCohortYear_CohortYearTypeDescriptor] ON [edfi].[StudentEducationOrganizationAssociationCohortYear] ([CohortYearTypeDescriptorId])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationCohortYear_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationCohortYear]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationCohortYear_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationCohortYear] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationCohortYear_SchoolYearType] on [edfi].[StudentEducationOrganizationAssociationCohortYear]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationCohortYear_SchoolYearType] ON [edfi].[StudentEducationOrganizationAssociationCohortYear] ([SchoolYear])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationCohortYear]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] ADD CONSTRAINT [StudentEducationOrganizationAssociationCohortYear_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
