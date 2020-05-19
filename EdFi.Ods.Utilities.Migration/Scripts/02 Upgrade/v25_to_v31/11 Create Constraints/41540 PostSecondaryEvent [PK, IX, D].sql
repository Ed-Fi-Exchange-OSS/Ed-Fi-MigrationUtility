-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PostSecondaryEvent_PK] on [edfi].[PostSecondaryEvent]'
GO
ALTER TABLE [edfi].[PostSecondaryEvent] ADD CONSTRAINT [PostSecondaryEvent_PK] PRIMARY KEY CLUSTERED  ([EventDate], [PostSecondaryEventCategoryDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [UX_PostSecondaryEvent_Id] on [edfi].[PostSecondaryEvent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_PostSecondaryEvent_Id] ON [edfi].[PostSecondaryEvent] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_PostSecondaryEvent_PostSecondaryEventCategoryDescriptor] on [edfi].[PostSecondaryEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryEvent_PostSecondaryEventCategoryDescriptor] ON [edfi].[PostSecondaryEvent] ([PostSecondaryEventCategoryDescriptorId])
GO

PRINT N'Creating index [FK_PostSecondaryEvent_PostSecondaryInstitution] on [edfi].[PostSecondaryEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryEvent_PostSecondaryInstitution] ON [edfi].[PostSecondaryEvent] ([PostSecondaryInstitutionId])
GO

PRINT N'Creating index [FK_PostSecondaryEvent_Student] on [edfi].[PostSecondaryEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryEvent_Student] ON [edfi].[PostSecondaryEvent] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[PostSecondaryEvent]'
GO
ALTER TABLE [edfi].[PostSecondaryEvent] ADD CONSTRAINT [PostSecondaryEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[PostSecondaryEvent] ADD CONSTRAINT [PostSecondaryEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[PostSecondaryEvent] ADD CONSTRAINT [PostSecondaryEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
