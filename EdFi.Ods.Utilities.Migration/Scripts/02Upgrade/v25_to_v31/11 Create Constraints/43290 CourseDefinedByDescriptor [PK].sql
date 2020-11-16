-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseDefinedByDescriptor_PK] on [edfi].[CourseDefinedByDescriptor]'
GO
ALTER TABLE [edfi].[CourseDefinedByDescriptor] ADD CONSTRAINT [CourseDefinedByDescriptor_PK] PRIMARY KEY CLUSTERED  ([CourseDefinedByDescriptorId])
GO
