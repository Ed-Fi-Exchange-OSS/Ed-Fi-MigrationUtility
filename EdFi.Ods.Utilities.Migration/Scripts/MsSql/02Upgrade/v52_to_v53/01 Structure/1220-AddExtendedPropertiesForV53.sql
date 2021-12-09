-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'BarrierToInternetAccessInResidenceDescriptor', @level2type = N'COLUMN', @level2name = N'BarrierToInternetAccessInResidenceDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of the barrier to having internet access in the student’s primary place of residence.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'BarrierToInternetAccessInResidenceDescriptor';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date the partial credits and/or grades were awarded or earned.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'AwardDate';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'CourseAttemptResultDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a course.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'CourseCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'CourseEducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The number of credits a student earned for completing a given course.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'EarnedCredits';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The indicator of student performance as submitted by the instructor.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'LetterGradeEarned';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The method the credits were earned.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'MethodCreditEarnedDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The indicator of student performance as submitted by the instructor.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'NumericGradeEarned';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'SchoolYear';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'StudentUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The term for the session during the school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'TermDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A collection of partial credits and/or grades a student earned against the course over the session, used when awards of credit are incremental.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'InternetAccessTypeInResidenceDescriptor', @level2type = N'COLUMN', @level2name = N'InternetAccessTypeInResidenceDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The primary type of internet service used in the student’s primary place of residence.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'InternetAccessTypeInResidenceDescriptor';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'InternetPerformanceInResidenceDescriptor', @level2type = N'COLUMN', @level2name = N'InternetPerformanceInResidenceDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'InternetPerformanceInResidenceDescriptor';
GO


EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'PrimaryLearningDeviceAccessDescriptor', @level2type = N'COLUMN', @level2name = N'PrimaryLearningDeviceAccessDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of whether the primary learning device is shared or not shared with another individual.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'PrimaryLearningDeviceAccessDescriptor';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'PrimaryLearningDeviceAwayFromSchoolDescriptor', @level2type = N'COLUMN', @level2name = N'PrimaryLearningDeviceAwayFromSchoolDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of device the student uses most often to complete learning activities away from school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'PrimaryLearningDeviceAwayFromSchoolDescriptor';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'PrimaryLearningDeviceProviderDescriptor', @level2type = N'COLUMN', @level2name = N'PrimaryLearningDeviceProviderDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The provider of the primary learning device.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'PrimaryLearningDeviceProviderDescriptor';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'AttendanceEventCategoryDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'ClassPeriodName';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date for this attendance event.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'EventDate';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'LocalCourseCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'SchoolId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'SchoolYear';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The local identifier assigned to a section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'SectionIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'SessionName';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'StudentUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The Class Period(s) to which the Section Attendance Event applies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the external institution where the student completed the course; to be used only when the reference ExternalEducationOrganization is not available.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'ExternalEducationOrganizationNameOfInstitution';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the end or termination date of a staff member''s employment, contract, or relationship with the education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This association indicates the education organization to which a staff member provides services.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of the barrier to having internet access in the student’s primary place of residence.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'BarrierToInternetAccessInResidenceDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of whether the student is able to access the internet in their primary place of residence.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'InternetAccessInResidence';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The primary type of internet service used in the student’s primary place of residence.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'InternetAccessTypeInResidenceDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'InternetPerformanceInResidenceDescriptorId';
GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of whether the primary learning device is shared or not shared with another individual.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'PrimaryLearningDeviceAccessDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of device the student uses most often to complete learning activities away from school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'PrimaryLearningDeviceAwayFromSchoolDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The provider of the primary learning device.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'PrimaryLearningDeviceProviderDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The school year associated with the cohort; for example, the intended school year of graduation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationCohortYear', @level2type = N'COLUMN', @level2name = N'SchoolYear';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The term associated with the cohort year; for example, the intended term of graduation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationCohortYear', @level2type = N'COLUMN', @level2name = N'TermDescriptorId';
GO