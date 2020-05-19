-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseRepeatCodeDescriptor_PK] on [edfi].[CourseRepeatCodeDescriptor]'
GO
ALTER TABLE [edfi].[CourseRepeatCodeDescriptor] ADD CONSTRAINT [CourseRepeatCodeDescriptor_PK] PRIMARY KEY CLUSTERED  ([CourseRepeatCodeDescriptorId])
GO
