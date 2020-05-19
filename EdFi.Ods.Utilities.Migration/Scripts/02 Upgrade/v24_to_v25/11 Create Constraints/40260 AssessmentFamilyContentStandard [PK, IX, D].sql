-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentFamilyContentStandard_PK] on [edfi].[AssessmentFamilyContentStandard]'
GO
ALTER TABLE [edfi].[AssessmentFamilyContentStandard] ADD CONSTRAINT [AssessmentFamilyContentStandard_PK] PRIMARY KEY CLUSTERED  ([AssessmentFamilyTitle])
GO
PRINT N'Creating index [FK_AssessmentFamilyContentStandard_AssessmentFamily] on [edfi].[AssessmentFamilyContentStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamilyContentStandard_AssessmentFamily] ON [edfi].[AssessmentFamilyContentStandard] ([AssessmentFamilyTitle])
GO
PRINT N'Creating index [FK_AssessmentFamilyContentStandard_EducationOrganization] on [edfi].[AssessmentFamilyContentStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamilyContentStandard_EducationOrganization] ON [edfi].[AssessmentFamilyContentStandard] ([MandatingEducationOrganizationId])
GO
PRINT N'Creating index [FK_AssessmentFamilyContentStandard_PublicationStatusType] on [edfi].[AssessmentFamilyContentStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamilyContentStandard_PublicationStatusType] ON [edfi].[AssessmentFamilyContentStandard] ([PublicationStatusTypeId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentFamilyContentStandard]'
GO
ALTER TABLE [edfi].[AssessmentFamilyContentStandard] ADD CONSTRAINT [AssessmentFamilyContentStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

