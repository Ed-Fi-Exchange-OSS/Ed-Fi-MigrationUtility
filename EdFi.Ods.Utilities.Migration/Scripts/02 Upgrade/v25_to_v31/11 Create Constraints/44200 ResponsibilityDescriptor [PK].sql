-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ResponsibilityDescriptor_PK] on [edfi].[ResponsibilityDescriptor]'
GO
ALTER TABLE [edfi].[ResponsibilityDescriptor] ADD CONSTRAINT [ResponsibilityDescriptor_PK] PRIMARY KEY CLUSTERED  ([ResponsibilityDescriptorId])
GO
