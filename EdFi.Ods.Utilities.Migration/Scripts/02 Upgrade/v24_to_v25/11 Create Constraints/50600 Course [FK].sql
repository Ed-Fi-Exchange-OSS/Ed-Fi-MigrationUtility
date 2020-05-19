-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Course]'
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_CareerPathwayType] FOREIGN KEY ([CareerPathwayTypeId]) REFERENCES [edfi].[CareerPathwayType] ([CareerPathwayTypeId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_CourseDefinedByType] FOREIGN KEY ([CourseDefinedByTypeId]) REFERENCES [edfi].[CourseDefinedByType] ([CourseDefinedByTypeId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_CourseGPAApplicabilityType] FOREIGN KEY ([CourseGPAApplicabilityTypeId]) REFERENCES [edfi].[CourseGPAApplicabilityType] ([CourseGPAApplicabilityTypeId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_CreditType] FOREIGN KEY ([MinimumAvailableCreditTypeId]) REFERENCES [edfi].[CreditType] ([CreditTypeId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_CreditType1] FOREIGN KEY ([MaximumAvailableCreditTypeId]) REFERENCES [edfi].[CreditType] ([CreditTypeId])
GO
ALTER TABLE [edfi].[Course] ADD CONSTRAINT [FK_Course_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
