-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisabilityDeterminationSourceType_PK] on [edfi].[DisabilityDeterminationSourceType]'
GO
ALTER TABLE [edfi].[DisabilityDeterminationSourceType] ADD CONSTRAINT [DisabilityDeterminationSourceType_PK] PRIMARY KEY CLUSTERED  ([DisabilityDeterminationSourceTypeId])
GO
PRINT N'Creating index [UX_DisabilityDeterminationSourceType_Id] on [edfi].[DisabilityDeterminationSourceType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_DisabilityDeterminationSourceType_Id] ON [edfi].[DisabilityDeterminationSourceType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[DisabilityDeterminationSourceType]'
GO
ALTER TABLE [edfi].[DisabilityDeterminationSourceType] ADD CONSTRAINT [DisabilityDeterminationSourceType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[DisabilityDeterminationSourceType] ADD CONSTRAINT [DisabilityDeterminationSourceType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[DisabilityDeterminationSourceType] ADD CONSTRAINT [DisabilityDeterminationSourceType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

