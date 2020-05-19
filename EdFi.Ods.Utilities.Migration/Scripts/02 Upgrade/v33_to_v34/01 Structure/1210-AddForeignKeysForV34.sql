-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE [edfi].[CourseTranscriptAcademicSubject] WITH CHECK ADD CONSTRAINT [FK_CourseTranscriptAcademicSubject_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
    REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscriptAcademicSubject_AcademicSubjectDescriptor]
    ON [edfi].[CourseTranscriptAcademicSubject] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [edfi].[CourseTranscriptAcademicSubject] WITH CHECK ADD CONSTRAINT [FK_CourseTranscriptAcademicSubject_CourseTranscript] FOREIGN KEY ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
    REFERENCES [edfi].[CourseTranscript] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
    ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscriptAcademicSubject_CourseTranscript]
    ON [edfi].[CourseTranscriptAcademicSubject] ([CourseAttemptResultDescriptorId] ASC, [CourseCode] ASC, [CourseEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [SchoolYear] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [edfi].[CourseTranscriptAlternativeCourseIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_CourseTranscriptAlternativeCourseIdentificationCode_CourseIdentificationSystemDescriptor] FOREIGN KEY ([CourseIdentificationSystemDescriptorId])
    REFERENCES [edfi].[CourseIdentificationSystemDescriptor] ([CourseIdentificationSystemDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscriptAlternativeCourseIdentificationCode_CourseIdentificationSystemDescriptor]
    ON [edfi].[CourseTranscriptAlternativeCourseIdentificationCode] ([CourseIdentificationSystemDescriptorId] ASC)
GO

ALTER TABLE [edfi].[CourseTranscriptAlternativeCourseIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_CourseTranscriptAlternativeCourseIdentificationCode_CourseTranscript] FOREIGN KEY ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
    REFERENCES [edfi].[CourseTranscript] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
    ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscriptAlternativeCourseIdentificationCode_CourseTranscript]
    ON [edfi].[CourseTranscriptAlternativeCourseIdentificationCode] ([CourseAttemptResultDescriptorId] ASC, [CourseCode] ASC, [CourseEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [SchoolYear] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [edfi].[CourseTranscriptCreditCategory] WITH CHECK ADD CONSTRAINT [FK_CourseTranscriptCreditCategory_CourseTranscript] FOREIGN KEY ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
    REFERENCES [edfi].[CourseTranscript] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
    ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscriptCreditCategory_CourseTranscript]
    ON [edfi].[CourseTranscriptCreditCategory] ([CourseAttemptResultDescriptorId] ASC, [CourseCode] ASC, [CourseEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [SchoolYear] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [edfi].[CourseTranscriptCreditCategory] WITH CHECK ADD CONSTRAINT [FK_CourseTranscriptCreditCategory_CreditCategoryDescriptor] FOREIGN KEY ([CreditCategoryDescriptorId])
    REFERENCES [edfi].[CreditCategoryDescriptor] ([CreditCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscriptCreditCategory_CreditCategoryDescriptor]
    ON [edfi].[CourseTranscriptCreditCategory] ([CreditCategoryDescriptorId] ASC)
GO

ALTER TABLE [edfi].[CreditCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_CreditCategoryDescriptor_Descriptor] FOREIGN KEY ([CreditCategoryDescriptorId])
    REFERENCES [edfi].[Descriptor] ([DescriptorId])
    ON DELETE CASCADE
GO

ALTER TABLE [edfi].[GradePointAverageTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_GradePointAverageTypeDescriptor_Descriptor] FOREIGN KEY ([GradePointAverageTypeDescriptorId])
    REFERENCES [edfi].[Descriptor] ([DescriptorId])
    ON DELETE CASCADE
GO

ALTER TABLE [edfi].[GraduationPlanCreditsByCreditCategory] WITH CHECK ADD CONSTRAINT [FK_GraduationPlanCreditsByCreditCategory_CreditCategoryDescriptor] FOREIGN KEY ([CreditCategoryDescriptorId])
    REFERENCES [edfi].[CreditCategoryDescriptor] ([CreditCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_GraduationPlanCreditsByCreditCategory_CreditCategoryDescriptor]
    ON [edfi].[GraduationPlanCreditsByCreditCategory] ([CreditCategoryDescriptorId] ASC)
GO

ALTER TABLE [edfi].[GraduationPlanCreditsByCreditCategory] WITH CHECK ADD CONSTRAINT [FK_GraduationPlanCreditsByCreditCategory_CreditTypeDescriptor] FOREIGN KEY ([CreditTypeDescriptorId])
    REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_GraduationPlanCreditsByCreditCategory_CreditTypeDescriptor]
    ON [edfi].[GraduationPlanCreditsByCreditCategory] ([CreditTypeDescriptorId] ASC)
GO

ALTER TABLE [edfi].[GraduationPlanCreditsByCreditCategory] WITH CHECK ADD CONSTRAINT [FK_GraduationPlanCreditsByCreditCategory_GraduationPlan] FOREIGN KEY ([EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
    REFERENCES [edfi].[GraduationPlan] ([EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
    ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_GraduationPlanCreditsByCreditCategory_GraduationPlan]
    ON [edfi].[GraduationPlanCreditsByCreditCategory] ([EducationOrganizationId] ASC, [GraduationPlanTypeDescriptorId] ASC, [GraduationSchoolYear] ASC)
GO

ALTER TABLE [edfi].[ReportCardGradePointAverage] WITH CHECK ADD CONSTRAINT [FK_ReportCardGradePointAverage_GradePointAverageTypeDescriptor] FOREIGN KEY ([GradePointAverageTypeDescriptorId])
    REFERENCES [edfi].[GradePointAverageTypeDescriptor] ([GradePointAverageTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ReportCardGradePointAverage_GradePointAverageTypeDescriptor]
    ON [edfi].[ReportCardGradePointAverage] ([GradePointAverageTypeDescriptorId] ASC)
GO


ALTER TABLE [edfi].[StudentAcademicRecordGradePointAverage] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordGradePointAverage_GradePointAverageTypeDescriptor] FOREIGN KEY ([GradePointAverageTypeDescriptorId])
    REFERENCES [edfi].[GradePointAverageTypeDescriptor] ([GradePointAverageTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordGradePointAverage_GradePointAverageTypeDescriptor]
    ON [edfi].[StudentAcademicRecordGradePointAverage] ([GradePointAverageTypeDescriptorId] ASC)
GO
