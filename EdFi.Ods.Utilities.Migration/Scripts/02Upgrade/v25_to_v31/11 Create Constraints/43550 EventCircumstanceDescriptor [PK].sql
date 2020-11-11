-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EventCircumstanceDescriptor_PK] on [edfi].[EventCircumstanceDescriptor]'
GO
ALTER TABLE [edfi].[EventCircumstanceDescriptor] ADD CONSTRAINT [EventCircumstanceDescriptor_PK] PRIMARY KEY CLUSTERED  ([EventCircumstanceDescriptorId])
GO
