-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CompetencyLevelDescriptor_PK] on [edfi].[CompetencyLevelDescriptor]'
GO
ALTER TABLE [edfi].[CompetencyLevelDescriptor] ADD CONSTRAINT [CompetencyLevelDescriptor_PK] PRIMARY KEY CLUSTERED  ([CompetencyLevelDescriptorId])
GO
PRINT N'Creating index [FK_CompetencyLevelDescriptor_Descriptor] on [edfi].[CompetencyLevelDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_CompetencyLevelDescriptor_Descriptor] ON [edfi].[CompetencyLevelDescriptor] ([CompetencyLevelDescriptorId])
GO
PRINT N'Creating index [FK_CompetencyLevelDescriptor_PerformanceBaseConversionType] on [edfi].[CompetencyLevelDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_CompetencyLevelDescriptor_PerformanceBaseConversionType] ON [edfi].[CompetencyLevelDescriptor] ([PerformanceBaseConversionTypeId])
GO

