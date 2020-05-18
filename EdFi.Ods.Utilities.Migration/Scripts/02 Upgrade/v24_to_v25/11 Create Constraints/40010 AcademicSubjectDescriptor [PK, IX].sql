-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AcademicSubjectDescriptor_PK] on [edfi].[AcademicSubjectDescriptor]'
GO
ALTER TABLE [edfi].[AcademicSubjectDescriptor] ADD CONSTRAINT [AcademicSubjectDescriptor_PK] PRIMARY KEY CLUSTERED  ([AcademicSubjectDescriptorId])
GO
PRINT N'Creating index [FK_AcademicSubjectDescriptor_Descriptor] on [edfi].[AcademicSubjectDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_AcademicSubjectDescriptor_Descriptor] ON [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO
PRINT N'Creating index [FK_AcademicSubjectDescriptor_AcademicSubjectType] on [edfi].[AcademicSubjectDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_AcademicSubjectDescriptor_AcademicSubjectType] ON [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectTypeId])
GO

