-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentFamilyAssessmentPeriod_PK] on [edfi].[AssessmentFamilyAssessmentPeriod]'
GO
ALTER TABLE [edfi].[AssessmentFamilyAssessmentPeriod] ADD CONSTRAINT [AssessmentFamilyAssessmentPeriod_PK] PRIMARY KEY CLUSTERED  ([AssessmentFamilyTitle], [AssessmentPeriodDescriptorId])
GO
PRINT N'Creating index [FK_AssessmentFamilyAssessmentPeriod_AssessmentFamily] on [edfi].[AssessmentFamilyAssessmentPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamilyAssessmentPeriod_AssessmentFamily] ON [edfi].[AssessmentFamilyAssessmentPeriod] ([AssessmentFamilyTitle])
GO
PRINT N'Creating index [FK_AssessmentFamilyAssessmentPeriod_AssessmentPeriodDescriptor] on [edfi].[AssessmentFamilyAssessmentPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamilyAssessmentPeriod_AssessmentPeriodDescriptor] ON [edfi].[AssessmentFamilyAssessmentPeriod] ([AssessmentPeriodDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentFamilyAssessmentPeriod]'
GO
ALTER TABLE [edfi].[AssessmentFamilyAssessmentPeriod] ADD CONSTRAINT [AssessmentFamilyAssessmentPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

