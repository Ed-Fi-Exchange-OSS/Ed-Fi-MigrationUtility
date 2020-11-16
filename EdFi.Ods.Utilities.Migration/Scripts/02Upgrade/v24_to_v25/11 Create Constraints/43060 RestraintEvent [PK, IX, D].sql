-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [RestraintEvent_PK] on [edfi].[RestraintEvent]'
GO
ALTER TABLE [edfi].[RestraintEvent] ADD CONSTRAINT [RestraintEvent_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [SchoolId], [RestraintEventIdentifier], [EventDate])
GO
PRINT N'Creating index [UX_RestraintEvent_Id] on [edfi].[RestraintEvent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_RestraintEvent_Id] ON [edfi].[RestraintEvent] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_RestraintEvent_EducationalEnvironmentType] on [edfi].[RestraintEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_RestraintEvent_EducationalEnvironmentType] ON [edfi].[RestraintEvent] ([EducationalEnvironmentTypeId])
GO
PRINT N'Creating index [FK_RestraintEvent_School] on [edfi].[RestraintEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_RestraintEvent_School] ON [edfi].[RestraintEvent] ([SchoolId])
GO
PRINT N'Creating index [FK_RestraintEvent_Student] on [edfi].[RestraintEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_RestraintEvent_Student] ON [edfi].[RestraintEvent] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[RestraintEvent]'
GO
ALTER TABLE [edfi].[RestraintEvent] ADD CONSTRAINT [RestraintEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[RestraintEvent] ADD CONSTRAINT [RestraintEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[RestraintEvent] ADD CONSTRAINT [RestraintEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO

