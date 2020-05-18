-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Course]'
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_CareerPathwayDescriptor] FOREIGN KEY ([CareerPathwayDescriptorId]) REFERENCES [edfi].[CareerPathwayDescriptor] ([CareerPathwayDescriptorId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_CourseDefinedByDescriptor] FOREIGN KEY ([CourseDefinedByDescriptorId]) REFERENCES [edfi].[CourseDefinedByDescriptor] ([CourseDefinedByDescriptorId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_CourseGPAApplicabilityDescriptor] FOREIGN KEY ([CourseGPAApplicabilityDescriptorId]) REFERENCES [edfi].[CourseGPAApplicabilityDescriptor] ([CourseGPAApplicabilityDescriptorId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_CreditTypeDescriptor] FOREIGN KEY ([MinimumAvailableCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_CreditTypeDescriptor1] FOREIGN KEY ([MaximumAvailableCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
