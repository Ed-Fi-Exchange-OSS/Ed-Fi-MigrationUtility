-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationStudentIndicatorPeriod_PK] on [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod] ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentIndicatorPeriod_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [IndicatorName], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationStudentIndicatorPeriod_StudentEducationOrganizationAssociationStudentIndicator] on [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationStudentIndicatorPeriod_StudentEducationOrganizationAssociationStudentIndicator] ON [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod] ([EducationOrganizationId], [IndicatorName], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod] ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentIndicatorPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
