-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SchoolChoiceImplementStatusType_PK] on [edfi].[SchoolChoiceImplementStatusType]'
GO
ALTER TABLE [edfi].[SchoolChoiceImplementStatusType] ADD CONSTRAINT [SchoolChoiceImplementStatusType_PK] PRIMARY KEY CLUSTERED  ([SchoolChoiceImplementStatusTypeId])
GO
PRINT N'Creating index [UX_SchoolChoiceImplementStatusType_Id] on [edfi].[SchoolChoiceImplementStatusType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_SchoolChoiceImplementStatusType_Id] ON [edfi].[SchoolChoiceImplementStatusType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[SchoolChoiceImplementStatusType]'
GO
ALTER TABLE [edfi].[SchoolChoiceImplementStatusType] ADD CONSTRAINT [SchoolChoiceImplementStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[SchoolChoiceImplementStatusType] ADD CONSTRAINT [SchoolChoiceImplementStatusType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[SchoolChoiceImplementStatusType] ADD CONSTRAINT [SchoolChoiceImplementStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

