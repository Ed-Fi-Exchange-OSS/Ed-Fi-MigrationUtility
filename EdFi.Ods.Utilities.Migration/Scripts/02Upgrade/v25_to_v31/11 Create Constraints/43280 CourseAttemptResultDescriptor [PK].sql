-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseAttemptResultDescriptor_PK] on [edfi].[CourseAttemptResultDescriptor]'
GO
ALTER TABLE [edfi].[CourseAttemptResultDescriptor] ADD CONSTRAINT [CourseAttemptResultDescriptor_PK] PRIMARY KEY CLUSTERED  ([CourseAttemptResultDescriptorId])
GO
