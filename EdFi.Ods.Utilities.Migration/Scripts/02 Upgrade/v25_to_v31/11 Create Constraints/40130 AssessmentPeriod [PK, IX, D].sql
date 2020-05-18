-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentPeriod_PK] on [edfi].[AssessmentPeriod]'
GO
ALTER TABLE [edfi].[AssessmentPeriod] ADD CONSTRAINT [AssessmentPeriod_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentPeriod_AssessmentPeriodDescriptor] on [edfi].[AssessmentPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentPeriod_AssessmentPeriodDescriptor] ON [edfi].[AssessmentPeriod] ([AssessmentPeriodDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentPeriod]'
GO
ALTER TABLE [edfi].[AssessmentPeriod] ADD CONSTRAINT [AssessmentPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
