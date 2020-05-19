-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PerformanceLevelDescriptor_PK] on [edfi].[PerformanceLevelDescriptor]'
GO
ALTER TABLE [edfi].[PerformanceLevelDescriptor] ADD CONSTRAINT [PerformanceLevelDescriptor_PK] PRIMARY KEY CLUSTERED  ([PerformanceLevelDescriptorId])
GO
