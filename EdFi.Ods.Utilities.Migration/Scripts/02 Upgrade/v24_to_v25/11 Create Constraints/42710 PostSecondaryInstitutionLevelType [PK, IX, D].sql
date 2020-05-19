-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PostSecondaryInstitutionLevelType_PK] on [edfi].[PostSecondaryInstitutionLevelType]'
GO
ALTER TABLE [edfi].[PostSecondaryInstitutionLevelType] ADD CONSTRAINT [PostSecondaryInstitutionLevelType_PK] PRIMARY KEY CLUSTERED  ([PostSecondaryInstitutionLevelTypeId])
GO
PRINT N'Creating index [UX_PostSecondaryInstitutionLevelType_Id] on [edfi].[PostSecondaryInstitutionLevelType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_PostSecondaryInstitutionLevelType_Id] ON [edfi].[PostSecondaryInstitutionLevelType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[PostSecondaryInstitutionLevelType]'
GO
ALTER TABLE [edfi].[PostSecondaryInstitutionLevelType] ADD CONSTRAINT [PostSecondaryInstitutionLevelType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[PostSecondaryInstitutionLevelType] ADD CONSTRAINT [PostSecondaryInstitutionLevelType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[PostSecondaryInstitutionLevelType] ADD CONSTRAINT [PostSecondaryInstitutionLevelType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

