-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URL for the course catalog that defines the course identification code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'CourseCatalogURL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization code or name assigning the course identification code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'AssigningOrganizationIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URL for the course catalog that defines the course identification code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseCatalogURL'
GO

-- Extended Properties [edfi].[CourseTranscriptAcademicSubject] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The subject area for the course transcript credits awarded in the course transcript.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAcademicSubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The subject area for the course transcript credits awarded in the course transcript.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAcademicSubject', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAcademicSubject', @level2type=N'COLUMN', @level2name=N'CourseAttemptResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAcademicSubject', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAcademicSubject', @level2type=N'COLUMN', @level2name=N'CourseEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAcademicSubject', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAcademicSubject', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAcademicSubject', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAcademicSubject', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

-- Extended Properties [edfi].[CourseTranscriptAlternativeCourseIdentificationCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code that identifies the course, course offering, the code from an external educational organization, or other alternate course code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'CourseAttemptResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'CourseEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'CourseIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a "/". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization code or name assigning the Identification Code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssigningOrganizationIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URL for the course catalog that defines the course identification code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptAlternativeCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'CourseCatalogURL'
GO

-- Extended Properties [edfi].[CourseTranscriptCreditCategory] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A categorization for the course transcript credits awarded in the course transcript.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptCreditCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptCreditCategory', @level2type=N'COLUMN', @level2name=N'CourseAttemptResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptCreditCategory', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptCreditCategory', @level2type=N'COLUMN', @level2name=N'CourseEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A categorization for the course transcript credits awarded in the course transcript.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptCreditCategory', @level2type=N'COLUMN', @level2name=N'CreditCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptCreditCategory', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptCreditCategory', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptCreditCategory', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptCreditCategory', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

-- Extended Properties [edfi].[CreditCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A categorization for the course transcript credits.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CreditCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CreditCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'CreditCategoryDescriptorId'
GO

-- Extended Properties [edfi].[GradePointAverageTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system used for calculating the grade point average for an individual.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GradePointAverageTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GradePointAverageTypeDescriptor', @level2type=N'COLUMN', @level2name=N'GradePointAverageTypeDescriptorId'
GO

-- Extended Properties [edfi].[GraduationPlanCreditsByCreditCategory] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total credits required for graduation based on the credit category.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanCreditsByCreditCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A categorization for the course transcript credits awarded in the course transcript.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanCreditsByCreditCategory', @level2type=N'COLUMN', @level2name=N'CreditCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanCreditsByCreditCategory', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanCreditsByCreditCategory', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanCreditsByCreditCategory', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanCreditsByCreditCategory', @level2type=N'COLUMN', @level2name=N'Credits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanCreditsByCreditCategory', @level2type=N'COLUMN', @level2name=N'CreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanCreditsByCreditCategory', @level2type=N'COLUMN', @level2name=N'CreditConversion'
GO

-- Extended Properties [edfi].[ReportCardGradePointAverage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum value for the grade point average.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ReportCardGradePointAverage', @level2type=N'COLUMN', @level2name=N'MaxGradePointAverageValue'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally-defined name for the section, generally created to make the section more recognizable in informal contexts and generally distinct from the SectionIdentifier.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Section', @level2type=N'COLUMN', @level2name=N'SectionName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum value for the grade point average.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordGradePointAverage', @level2type=N'COLUMN', @level2name=N'MaxGradePointAverageValue'
GO

