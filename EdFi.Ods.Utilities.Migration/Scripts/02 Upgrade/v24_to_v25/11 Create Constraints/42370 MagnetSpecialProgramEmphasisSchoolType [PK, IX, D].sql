-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [MagnetSpecialProgramEmphasisSchoolType_PK] on [edfi].[MagnetSpecialProgramEmphasisSchoolType]'
GO
ALTER TABLE [edfi].[MagnetSpecialProgramEmphasisSchoolType] ADD CONSTRAINT [MagnetSpecialProgramEmphasisSchoolType_PK] PRIMARY KEY CLUSTERED  ([MagnetSpecialProgramEmphasisSchoolTypeId])
GO
PRINT N'Creating index [UX_MagnetSpecialProgramEmphasisSchoolType_Id] on [edfi].[MagnetSpecialProgramEmphasisSchoolType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_MagnetSpecialProgramEmphasisSchoolType_Id] ON [edfi].[MagnetSpecialProgramEmphasisSchoolType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[MagnetSpecialProgramEmphasisSchoolType]'
GO
ALTER TABLE [edfi].[MagnetSpecialProgramEmphasisSchoolType] ADD CONSTRAINT [MagnetSpecialProgramEmphasisSchoolType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[MagnetSpecialProgramEmphasisSchoolType] ADD CONSTRAINT [MagnetSpecialProgramEmphasisSchoolType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[MagnetSpecialProgramEmphasisSchoolType] ADD CONSTRAINT [MagnetSpecialProgramEmphasisSchoolType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

