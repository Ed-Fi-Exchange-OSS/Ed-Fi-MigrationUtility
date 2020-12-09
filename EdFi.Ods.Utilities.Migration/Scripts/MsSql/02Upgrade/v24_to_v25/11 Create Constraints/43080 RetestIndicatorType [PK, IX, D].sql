-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [RetestIndicatorType_PK] on [edfi].[RetestIndicatorType]'
GO
ALTER TABLE [edfi].[RetestIndicatorType] ADD CONSTRAINT [RetestIndicatorType_PK] PRIMARY KEY CLUSTERED  ([RetestIndicatorTypeId])
GO
PRINT N'Creating index [UX_RetestIndicatorType_Id] on [edfi].[RetestIndicatorType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_RetestIndicatorType_Id] ON [edfi].[RetestIndicatorType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[RetestIndicatorType]'
GO
ALTER TABLE [edfi].[RetestIndicatorType] ADD CONSTRAINT [RetestIndicatorType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[RetestIndicatorType] ADD CONSTRAINT [RetestIndicatorType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[RetestIndicatorType] ADD CONSTRAINT [RetestIndicatorType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

