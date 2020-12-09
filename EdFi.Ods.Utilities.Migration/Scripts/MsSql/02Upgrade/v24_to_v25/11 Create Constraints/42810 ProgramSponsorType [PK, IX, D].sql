-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProgramSponsorType_PK] on [edfi].[ProgramSponsorType]'
GO
ALTER TABLE [edfi].[ProgramSponsorType] ADD CONSTRAINT [ProgramSponsorType_PK] PRIMARY KEY CLUSTERED  ([ProgramSponsorTypeId])
GO
PRINT N'Creating index [UX_ProgramSponsorType_Id] on [edfi].[ProgramSponsorType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ProgramSponsorType_Id] ON [edfi].[ProgramSponsorType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[ProgramSponsorType]'
GO
ALTER TABLE [edfi].[ProgramSponsorType] ADD CONSTRAINT [ProgramSponsorType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ProgramSponsorType] ADD CONSTRAINT [ProgramSponsorType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ProgramSponsorType] ADD CONSTRAINT [ProgramSponsorType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

