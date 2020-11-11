-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentContentStandard_PK] on [edfi].[AssessmentContentStandard]'
GO
ALTER TABLE [edfi].[AssessmentContentStandard] ADD CONSTRAINT [AssessmentContentStandard_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentContentStandard_EducationOrganization] on [edfi].[AssessmentContentStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentContentStandard_EducationOrganization] ON [edfi].[AssessmentContentStandard] ([MandatingEducationOrganizationId])
GO

PRINT N'Creating index [FK_AssessmentContentStandard_PublicationStatusDescriptor] on [edfi].[AssessmentContentStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentContentStandard_PublicationStatusDescriptor] ON [edfi].[AssessmentContentStandard] ([PublicationStatusDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentContentStandard]'
GO
ALTER TABLE [edfi].[AssessmentContentStandard] ADD CONSTRAINT [AssessmentContentStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
