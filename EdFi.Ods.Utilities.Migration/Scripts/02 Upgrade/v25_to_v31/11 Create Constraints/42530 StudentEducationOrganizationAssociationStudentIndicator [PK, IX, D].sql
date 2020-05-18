-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationStudentIndicator_PK] on [edfi].[StudentEducationOrganizationAssociationStudentIndicator]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicator] ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentIndicator_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [IndicatorName], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationStudentIndicator_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationStudentIndicator]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationStudentIndicator_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationStudentIndicator] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationStudentIndicator]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicator] ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentIndicator_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
