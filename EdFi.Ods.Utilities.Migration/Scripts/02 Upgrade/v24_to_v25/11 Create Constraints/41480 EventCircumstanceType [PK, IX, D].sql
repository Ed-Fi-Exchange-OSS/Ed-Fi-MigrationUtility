-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EventCircumstanceType_PK] on [edfi].[EventCircumstanceType]'
GO
ALTER TABLE [edfi].[EventCircumstanceType] ADD CONSTRAINT [EventCircumstanceType_PK] PRIMARY KEY CLUSTERED  ([EventCircumstanceTypeId])
GO
PRINT N'Creating index [UX_EventCircumstanceType_Id] on [edfi].[EventCircumstanceType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EventCircumstanceType_Id] ON [edfi].[EventCircumstanceType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[EventCircumstanceType]'
GO
ALTER TABLE [edfi].[EventCircumstanceType] ADD CONSTRAINT [EventCircumstanceType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EventCircumstanceType] ADD CONSTRAINT [EventCircumstanceType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EventCircumstanceType] ADD CONSTRAINT [EventCircumstanceType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

