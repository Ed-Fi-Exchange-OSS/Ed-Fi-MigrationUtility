-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProgressDescriptor_PK] on [edfi].[ProgressDescriptor]'
GO
ALTER TABLE [edfi].[ProgressDescriptor] ADD CONSTRAINT [ProgressDescriptor_PK] PRIMARY KEY CLUSTERED  ([ProgressDescriptorId])
GO
