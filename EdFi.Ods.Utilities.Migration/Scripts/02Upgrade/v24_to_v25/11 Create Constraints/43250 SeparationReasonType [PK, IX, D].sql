-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SeparationReasonType_PK] on [edfi].[SeparationReasonType]'
GO
ALTER TABLE [edfi].[SeparationReasonType] ADD CONSTRAINT [SeparationReasonType_PK] PRIMARY KEY CLUSTERED  ([SeparationReasonTypeId])
GO
PRINT N'Creating index [UX_SeparationReasonType_Id] on [edfi].[SeparationReasonType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_SeparationReasonType_Id] ON [edfi].[SeparationReasonType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[SeparationReasonType]'
GO
ALTER TABLE [edfi].[SeparationReasonType] ADD CONSTRAINT [SeparationReasonType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[SeparationReasonType] ADD CONSTRAINT [SeparationReasonType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[SeparationReasonType] ADD CONSTRAINT [SeparationReasonType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

