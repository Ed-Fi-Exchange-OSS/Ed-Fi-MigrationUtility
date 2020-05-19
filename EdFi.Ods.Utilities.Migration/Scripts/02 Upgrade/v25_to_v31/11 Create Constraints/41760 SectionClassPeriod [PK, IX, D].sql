-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SectionClassPeriod_PK] on [edfi].[SectionClassPeriod]'
GO
ALTER TABLE [edfi].[SectionClassPeriod] ADD CONSTRAINT [SectionClassPeriod_PK] PRIMARY KEY CLUSTERED  ([ClassPeriodName], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO

PRINT N'Creating index [FK_SectionClassPeriod_ClassPeriod] on [edfi].[SectionClassPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionClassPeriod_ClassPeriod] ON [edfi].[SectionClassPeriod] ([ClassPeriodName], [SchoolId])
GO

PRINT N'Creating index [FK_SectionClassPeriod_Section] on [edfi].[SectionClassPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionClassPeriod_Section] ON [edfi].[SectionClassPeriod] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO

PRINT N'Adding constraints to [edfi].[SectionClassPeriod]'
GO
ALTER TABLE [edfi].[SectionClassPeriod] ADD CONSTRAINT [SectionClassPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
