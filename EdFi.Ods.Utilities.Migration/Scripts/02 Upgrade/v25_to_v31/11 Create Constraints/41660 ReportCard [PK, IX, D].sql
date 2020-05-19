-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ReportCard_PK] on [edfi].[ReportCard]'
GO
ALTER TABLE [edfi].[ReportCard] ADD CONSTRAINT [ReportCard_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [StudentUSI])
GO

PRINT N'Creating index [UX_ReportCard_Id] on [edfi].[ReportCard]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ReportCard_Id] ON [edfi].[ReportCard] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_ReportCard_EducationOrganization] on [edfi].[ReportCard]'
GO
CREATE NONCLUSTERED INDEX [FK_ReportCard_EducationOrganization] ON [edfi].[ReportCard] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_ReportCard_GradingPeriod] on [edfi].[ReportCard]'
GO
CREATE NONCLUSTERED INDEX [FK_ReportCard_GradingPeriod] ON [edfi].[ReportCard] ([GradingPeriodDescriptorId], [GradingPeriodSequence], [GradingPeriodSchoolId], [GradingPeriodSchoolYear])
GO

PRINT N'Creating index [FK_ReportCard_Student] on [edfi].[ReportCard]'
GO
CREATE NONCLUSTERED INDEX [FK_ReportCard_Student] ON [edfi].[ReportCard] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[ReportCard]'
GO
ALTER TABLE [edfi].[ReportCard] ADD CONSTRAINT [ReportCard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ReportCard] ADD CONSTRAINT [ReportCard_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ReportCard] ADD CONSTRAINT [ReportCard_DF_Id] DEFAULT (newid()) FOR [Id]
GO
