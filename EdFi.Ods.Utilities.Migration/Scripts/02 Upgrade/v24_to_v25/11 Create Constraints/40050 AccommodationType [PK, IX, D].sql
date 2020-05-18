-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AccommodationType_PK] on [edfi].[AccommodationType]'
GO
ALTER TABLE [edfi].[AccommodationType] ADD CONSTRAINT [AccommodationType_PK] PRIMARY KEY CLUSTERED  ([AccommodationTypeId])
GO
PRINT N'Creating index [UX_AccommodationType_Id] on [edfi].[AccommodationType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AccommodationType_Id] ON [edfi].[AccommodationType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AccommodationType]'
GO
ALTER TABLE [edfi].[AccommodationType] ADD CONSTRAINT [AccommodationType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AccommodationType] ADD CONSTRAINT [AccommodationType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AccommodationType] ADD CONSTRAINT [AccommodationType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

