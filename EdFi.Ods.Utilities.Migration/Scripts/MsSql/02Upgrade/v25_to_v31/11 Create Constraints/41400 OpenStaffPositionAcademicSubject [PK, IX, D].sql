-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [OpenStaffPositionAcademicSubject_PK] on [edfi].[OpenStaffPositionAcademicSubject]'
GO
ALTER TABLE [edfi].[OpenStaffPositionAcademicSubject] ADD CONSTRAINT [OpenStaffPositionAcademicSubject_PK] PRIMARY KEY CLUSTERED  ([AcademicSubjectDescriptorId], [EducationOrganizationId], [RequisitionNumber])
GO

PRINT N'Creating index [FK_OpenStaffPositionAcademicSubject_AcademicSubjectDescriptor] on [edfi].[OpenStaffPositionAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionAcademicSubject_AcademicSubjectDescriptor] ON [edfi].[OpenStaffPositionAcademicSubject] ([AcademicSubjectDescriptorId])
GO

PRINT N'Creating index [FK_OpenStaffPositionAcademicSubject_OpenStaffPosition] on [edfi].[OpenStaffPositionAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionAcademicSubject_OpenStaffPosition] ON [edfi].[OpenStaffPositionAcademicSubject] ([EducationOrganizationId], [RequisitionNumber])
GO

PRINT N'Adding constraints to [edfi].[OpenStaffPositionAcademicSubject]'
GO
ALTER TABLE [edfi].[OpenStaffPositionAcademicSubject] ADD CONSTRAINT [OpenStaffPositionAcademicSubject_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
