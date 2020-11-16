-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Course_PK] on [edfi].[Course]'
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [Course_PK] PRIMARY KEY CLUSTERED  ([CourseCode], [EducationOrganizationId])
GO

PRINT N'Creating index [UX_Course_Id] on [edfi].[Course]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Course_Id] ON [edfi].[Course] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_Course_AcademicSubjectDescriptor] on [edfi].[Course]'
GO
CREATE NONCLUSTERED INDEX [FK_Course_AcademicSubjectDescriptor] ON [edfi].[Course] ([AcademicSubjectDescriptorId])
GO

PRINT N'Creating index [FK_Course_CareerPathwayDescriptor] on [edfi].[Course]'
GO
CREATE NONCLUSTERED INDEX [FK_Course_CareerPathwayDescriptor] ON [edfi].[Course] ([CareerPathwayDescriptorId])
GO

PRINT N'Creating index [FK_Course_CourseDefinedByDescriptor] on [edfi].[Course]'
GO
CREATE NONCLUSTERED INDEX [FK_Course_CourseDefinedByDescriptor] ON [edfi].[Course] ([CourseDefinedByDescriptorId])
GO

PRINT N'Creating index [FK_Course_CourseGPAApplicabilityDescriptor] on [edfi].[Course]'
GO
CREATE NONCLUSTERED INDEX [FK_Course_CourseGPAApplicabilityDescriptor] ON [edfi].[Course] ([CourseGPAApplicabilityDescriptorId])
GO

PRINT N'Creating index [FK_Course_EducationOrganization] on [edfi].[Course]'
GO
CREATE NONCLUSTERED INDEX [FK_Course_EducationOrganization] ON [edfi].[Course] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_Course_CreditTypeDescriptor1] on [edfi].[Course]'
GO
CREATE NONCLUSTERED INDEX [FK_Course_CreditTypeDescriptor1] ON [edfi].[Course] ([MaximumAvailableCreditTypeDescriptorId])
GO

PRINT N'Creating index [FK_Course_CreditTypeDescriptor] on [edfi].[Course]'
GO
CREATE NONCLUSTERED INDEX [FK_Course_CreditTypeDescriptor] ON [edfi].[Course] ([MinimumAvailableCreditTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[Course]'
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [Course_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [Course_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [Course_DF_Id] DEFAULT (newid()) FOR [Id]
GO
