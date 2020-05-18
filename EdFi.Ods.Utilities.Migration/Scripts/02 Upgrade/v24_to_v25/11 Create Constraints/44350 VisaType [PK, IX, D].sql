-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [VisaType_PK] on [edfi].[VisaType]'
GO
ALTER TABLE [edfi].[VisaType] ADD CONSTRAINT [VisaType_PK] PRIMARY KEY CLUSTERED  ([VisaTypeId])
GO
PRINT N'Creating index [UX_VisaType_Id] on [edfi].[VisaType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_VisaType_Id] ON [edfi].[VisaType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[VisaType]'
GO
ALTER TABLE [edfi].[VisaType] ADD CONSTRAINT [VisaType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[VisaType] ADD CONSTRAINT [VisaType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[VisaType] ADD CONSTRAINT [VisaType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

