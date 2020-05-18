-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ClassPeriod_PK] on [edfi].[ClassPeriod]'
GO
ALTER TABLE [edfi].[ClassPeriod] ADD CONSTRAINT [ClassPeriod_PK] PRIMARY KEY CLUSTERED  ([ClassPeriodName], [SchoolId])
GO

PRINT N'Creating index [UX_ClassPeriod_Id] on [edfi].[ClassPeriod]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ClassPeriod_Id] ON [edfi].[ClassPeriod] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_ClassPeriod_School] on [edfi].[ClassPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_ClassPeriod_School] ON [edfi].[ClassPeriod] ([SchoolId])
GO

PRINT N'Adding constraints to [edfi].[ClassPeriod]'
GO
ALTER TABLE [edfi].[ClassPeriod] ADD CONSTRAINT [ClassPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ClassPeriod] ADD CONSTRAINT [ClassPeriod_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ClassPeriod] ADD CONSTRAINT [ClassPeriod_DF_Id] DEFAULT (newid()) FOR [Id]
GO
