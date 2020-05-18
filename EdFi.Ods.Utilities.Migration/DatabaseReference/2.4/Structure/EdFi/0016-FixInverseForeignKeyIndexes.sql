-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

/* 
 * INDEX: [FK_Grade_StudentSectionAssociation] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.Grade') AND name='FK_Grade_StudentSectionAssociation')
    DROP INDEX [FK_Grade_StudentSectionAssociation] ON [edfi].[Grade]
GO
CREATE NONCLUSTERED INDEX [FK_Grade_StudentSectionAssociation]
ON [edfi].[Grade]([BeginDate] ASC, [ClassPeriodName] ASC, [ClassroomIdentificationCode] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SequenceOfCourse] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC, [UniqueSectionCode] ASC)
GO

/* 
 * INDEX: [FK_GradebookEntry_GradingPeriod] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.GradebookEntry') AND name='FK_GradebookEntry_GradingPeriod')
    DROP INDEX [FK_GradebookEntry_GradingPeriod] ON [edfi].[GradebookEntry]
GO
CREATE NONCLUSTERED INDEX [FK_GradebookEntry_GradingPeriod]
ON [edfi].[GradebookEntry]([BeginDate] ASC, [GradingPeriodDescriptorId] ASC, [SchoolId] ASC)
GO

/* 
 * INDEX: [FK_GradebookEntry_Section_SchoolId] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.GradebookEntry') AND name='FK_GradebookEntry_Section_SchoolId')
    DROP INDEX [FK_GradebookEntry_Section_SchoolId] ON [edfi].[GradebookEntry]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.GradebookEntry') AND name='FK_GradebookEntry_Section')
    CREATE NONCLUSTERED INDEX [FK_GradebookEntry_Section]
    ON [edfi].[GradebookEntry]([ClassPeriodName] ASC, [ClassroomIdentificationCode] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SequenceOfCourse] ASC, [TermDescriptorId] ASC, [UniqueSectionCode] ASC)
GO

/* 
 * INDEX: [FK_ReportCardStudentCompetencyObjective_StudentCompetencyObjective_StudentUSI] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.ReportCardStudentCompetencyObjective') AND name='FK_ReportCardStudentCompetencyObjective_StudentCompetencyObjective_StudentUSI')
    DROP INDEX [FK_ReportCardStudentCompetencyObjective_StudentCompetencyObjective_StudentUSI] ON [edfi].[ReportCardStudentCompetencyObjective]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.ReportCardStudentCompetencyObjective') AND name='FK_ReportCardStudentCompetencyObjective_StudentCompetencyObjective')
    CREATE NONCLUSTERED INDEX [FK_ReportCardStudentCompetencyObjective_StudentCompetencyObjective]
    ON [edfi].[ReportCardStudentCompetencyObjective]([GradingPeriodBeginDate] ASC, [GradingPeriodDescriptorId] ASC, [SchoolId] ASC, [Objective] ASC, [ObjectiveEducationOrganizationId] ASC, [ObjectiveGradeLevelDescriptorId] ASC, [StudentUSI] ASC)
GO

/* 
 * INDEX: [FK_ReportCardStudentLearningObjective_ReportCard] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.ReportCardStudentLearningObjective') AND name='FK_ReportCardStudentLearningObjective_ReportCard')
    DROP INDEX [FK_ReportCardStudentLearningObjective_ReportCard] ON [edfi].[ReportCardStudentLearningObjective]
GO
CREATE NONCLUSTERED INDEX [FK_ReportCardStudentLearningObjective_ReportCard]
ON [edfi].[ReportCardStudentLearningObjective]([ReportCardEducationOrganizationId] ASC, [GradingPeriodBeginDate] ASC, [GradingPeriodDescriptorId] ASC, [SchoolId] ASC, [StudentUSI] ASC)
GO

/* 
 * INDEX: [FK_ReportCardStudentLearningObjective_StudentLearningObjective_StudentUSI] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.ReportCardStudentLearningObjective') AND name='FK_ReportCardStudentLearningObjective_StudentLearningObjective_StudentUSI')
    DROP INDEX [FK_ReportCardStudentLearningObjective_StudentLearningObjective_StudentUSI] ON [edfi].[ReportCardStudentLearningObjective]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.ReportCardStudentLearningObjective') AND name='FK_ReportCardStudentLearningObjective_StudentLearningObjective')
    CREATE NONCLUSTERED INDEX [FK_ReportCardStudentLearningObjective_StudentLearningObjective]
    ON [edfi].[ReportCardStudentLearningObjective]([AcademicSubjectDescriptorId] ASC, [GradingPeriodBeginDate] ASC, [GradingPeriodDescriptorId] ASC, [SchoolId] ASC, [Objective] ASC, [ObjectiveGradeLevelDescriptorId] ASC, [StudentUSI] ASC)
GO

/* 
 * INDEX: [FK_Section_CourseOffering_SchoolId] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.Section') AND name='FK_Section_CourseOffering_SchoolId')
    DROP INDEX [FK_Section_CourseOffering_SchoolId] ON [edfi].[Section]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.Section') AND name='FK_Section_CourseOffering')
    CREATE NONCLUSTERED INDEX [FK_Section_CourseOffering]
    ON [edfi].[Section]([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [TermDescriptorId] ASC)
GO

/* 
 * INDEX: [FK_SectionCharacteristic_Section_SchoolId] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.SectionCharacteristic') AND name='FK_SectionCharacteristic_Section_SchoolId')
    DROP INDEX [FK_SectionCharacteristic_Section_SchoolId] ON [edfi].[SectionCharacteristic]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.SectionCharacteristic') AND name='FK_SectionCharacteristic_Section')
    CREATE NONCLUSTERED INDEX [FK_SectionCharacteristic_Section]
    ON [edfi].[SectionCharacteristic]([ClassPeriodName] ASC, [ClassroomIdentificationCode] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SequenceOfCourse] ASC, [TermDescriptorId] ASC, [UniqueSectionCode] ASC)
GO

/* 
 * INDEX: [FK_SectionProgram_Section_SchoolId] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.SectionProgram') AND name='FK_SectionProgram_Section_SchoolId')
    DROP INDEX [FK_SectionProgram_Section_SchoolId] ON [edfi].[SectionProgram]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.SectionProgram') AND name='FK_SectionProgram_Section')
    CREATE NONCLUSTERED INDEX [FK_SectionProgram_Section]
    ON [edfi].[SectionProgram]([ClassPeriodName] ASC, [ClassroomIdentificationCode] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SequenceOfCourse] ASC, [TermDescriptorId] ASC, [UniqueSectionCode] ASC)
GO

/* 
 * INDEX: [FK_StaffSectionAssociation_Section_SchoolId] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StaffSectionAssociation') AND name='FK_StaffSectionAssociation_Section_SchoolId')
    DROP INDEX [FK_StaffSectionAssociation_Section_SchoolId] ON [edfi].[StaffSectionAssociation]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StaffSectionAssociation') AND name='FK_StaffSectionAssociation_Section')
    CREATE NONCLUSTERED INDEX [FK_StaffSectionAssociation_Section]
    ON [edfi].[StaffSectionAssociation]([ClassPeriodName] ASC, [ClassroomIdentificationCode] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SequenceOfCourse] ASC, [TermDescriptorId] ASC, [UniqueSectionCode] ASC)
GO

/* 
 * INDEX: [FK_StudentAcademicRecordReportCard_ReportCard] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentAcademicRecordReportCard') AND name='FK_StudentAcademicRecordReportCard_ReportCard')
    DROP INDEX [FK_StudentAcademicRecordReportCard_ReportCard] ON [edfi].[StudentAcademicRecordReportCard]
GO
CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordReportCard_ReportCard]
ON [edfi].[StudentAcademicRecordReportCard]([EducationOrganizationId] ASC, [GradingPeriodBeginDate] ASC, [GradingPeriodDescriptorId] ASC, [SchoolId] ASC, [StudentUSI] ASC)
GO

/* 
 * INDEX: [FK_StudentCohortAssociationSection_Section_LocalCourseCode] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentCohortAssociationSection') AND name='FK_StudentCohortAssociationSection_Section_LocalCourseCode')
    DROP INDEX [FK_StudentCohortAssociationSection_Section_LocalCourseCode] ON [edfi].[StudentCohortAssociationSection]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentCohortAssociationSection') AND name='FK_StudentCohortAssociationSection_Section')
    CREATE NONCLUSTERED INDEX [FK_StudentCohortAssociationSection_Section]
    ON [edfi].[StudentCohortAssociationSection]([ClassPeriodName] ASC, [ClassroomIdentificationCode] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SequenceOfCourse] ASC, [TermDescriptorId] ASC, [UniqueSectionCode] ASC)
GO

/* 
 * INDEX: [FK_StudentCompetencyObjective_StudentSectionAssociation]  (Covered by FK_StudentCompetencyObjective_Student?)
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentCompetencyObjective') AND name='FK_StudentCompetencyObjective_StudentSectionAssociation')
    DROP INDEX [FK_StudentCompetencyObjective_StudentSectionAssociation] ON [edfi].[StudentCompetencyObjective]
GO
CREATE NONCLUSTERED INDEX [FK_StudentCompetencyObjective_StudentSectionAssociation]
ON [edfi].[StudentCompetencyObjective]([BeginDate] ASC, [ClassPeriodName] ASC, [ClassroomIdentificationCode] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SequenceOfCourse] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC, [UniqueSectionCode] ASC)
GO

/* 
 * INDEX: [FK_StudentGradebookEntry_StudentSectionAssociation_StudentUSI] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentGradebookEntry') AND name='FK_StudentGradebookEntry_StudentSectionAssociation_StudentUSI')
    DROP INDEX [FK_StudentGradebookEntry_StudentSectionAssociation_StudentUSI] ON [edfi].[StudentGradebookEntry]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentGradebookEntry') AND name='FK_StudentGradebookEntry_StudentSectionAssociation')
    CREATE NONCLUSTERED INDEX [FK_StudentGradebookEntry_StudentSectionAssociation]
    ON [edfi].[StudentGradebookEntry]([BeginDate] ASC, [ClassPeriodName] ASC, [ClassroomIdentificationCode] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SequenceOfCourse] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC, [UniqueSectionCode] ASC)
GO

/* 
 * INDEX: [FK_StudentLearningObjective_StudentSectionAssociation_StudentUSI] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentLearningObjective') AND name='FK_StudentLearningObjective_StudentSectionAssociation_StudentUSI')
    DROP INDEX [FK_StudentLearningObjective_StudentSectionAssociation_StudentUSI] ON [edfi].[StudentLearningObjective]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentLearningObjective') AND name='FK_StudentLearningObjective_StudentSectionAssociation')
    CREATE NONCLUSTERED INDEX [FK_StudentLearningObjective_StudentSectionAssociation]
    ON [edfi].[StudentLearningObjective]([StudentSectionAssociationBeginDate] ASC, [ClassPeriodName] ASC, [ClassroomIdentificationCode] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SequenceOfCourse] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC, [UniqueSectionCode] ASC)
GO

/* 
 * INDEX: [FK_StudentLearningObjective_StudentProgramAssociation] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentLearningObjective') AND name='FK_StudentLearningObjective_StudentProgramAssociation')
    DROP INDEX [FK_StudentLearningObjective_StudentProgramAssociation] ON [edfi].[StudentLearningObjective]
GO
CREATE NONCLUSTERED INDEX [FK_StudentLearningObjective_StudentProgramAssociation]
ON [edfi].[StudentLearningObjective]([BeginDate] ASC, [EducationOrganizationId] ASC, [ProgramEducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeId] ASC, [StudentUSI] ASC)
GO

/* 
 * INDEX: [FK_StudentSectionAssociation_Section] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentSectionAssociation') AND name='FK_StudentSectionAssociation_Section_SchoolId')
    DROP INDEX [FK_StudentSectionAssociation_Section_SchoolId] ON [edfi].[StudentSectionAssociation]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentSectionAssociation') AND name='FK_StudentSectionAssociation_Section')
    CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociation_Section]
    ON [edfi].[StudentSectionAssociation]([ClassPeriodName] ASC, [ClassroomIdentificationCode] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SequenceOfCourse] ASC, [TermDescriptorId] ASC, [UniqueSectionCode] ASC)
GO

/* 
 * INDEX: [FK_StudentSectionAttendanceEvent_Section] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentSectionAttendanceEvent') AND name='FK_StudentSectionAttendanceEvent_Section_SchoolId')
    DROP INDEX [FK_StudentSectionAttendanceEvent_Section_SchoolId] ON [edfi].[StudentSectionAttendanceEvent]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StudentSectionAttendanceEvent') AND name='FK_StudentSectionAttendanceEvent_Section')
    CREATE NONCLUSTERED INDEX [FK_StudentSectionAttendanceEvent_Section]
    ON [edfi].[StudentSectionAttendanceEvent]([ClassPeriodName] ASC, [ClassroomIdentificationCode] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SequenceOfCourse] ASC, [TermDescriptorId] ASC, [UniqueSectionCode] ASC)
GO

/* 
 * INDEX: [FK_StaffSchoolAssociation_SchoolYearType] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StaffSchoolAssociation') AND name='FK_StaffSchoolAssociation_SchoolYearType_SchoolYear')
    DROP INDEX [FK_StaffSchoolAssociation_SchoolYearType_SchoolYear] ON [edfi].[StaffSchoolAssociation]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.StaffSchoolAssociation') AND name='FK_StaffSchoolAssociation_SchoolYearType')
    CREATE NONCLUSTERED INDEX [FK_StaffSchoolAssociation_SchoolYearType]
    ON [edfi].[StaffSchoolAssociation]([SchoolYear] ASC)
GO

/* 
 * INDEX: [FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_AssessmentReportingMethodType] 
 */

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('edfi.GraduationPlanRequiredAssessmentAssessmentPerformanceLevel') AND name='FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_AssessmentReportingMethodType')
    DROP INDEX [FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_AssessmentReportingMethodType] ON [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_AssessmentReportingMethodType]
ON [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]([AssessmentReportingMethodTypeId] ASC)
GO