-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PerformanceBaseConversionType_PK] on [edfi].[PerformanceBaseConversionType]'
GO
ALTER TABLE [edfi].[PerformanceBaseConversionType] ADD CONSTRAINT [PerformanceBaseConversionType_PK] PRIMARY KEY CLUSTERED  ([PerformanceBaseConversionTypeId])
GO
PRINT N'Creating index [UX_PerformanceBaseConversionType_Id] on [edfi].[PerformanceBaseConversionType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_PerformanceBaseConversionType_Id] ON [edfi].[PerformanceBaseConversionType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[PerformanceBaseConversionType]'
GO
ALTER TABLE [edfi].[PerformanceBaseConversionType] ADD CONSTRAINT [PerformanceBaseConversionType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[PerformanceBaseConversionType] ADD CONSTRAINT [PerformanceBaseConversionType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[PerformanceBaseConversionType] ADD CONSTRAINT [PerformanceBaseConversionType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

