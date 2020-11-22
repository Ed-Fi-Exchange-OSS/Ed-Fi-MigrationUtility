-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

--  Alter Table [edfi].[[AcademicWeek]]---
ALTER TABLE [edfi].[AcademicWeek]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_AcademicWeek_ChangeVersion]
    ON [edfi].[AcademicWeek]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Account]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Account_ChangeVersion]
    ON [edfi].[Account]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[AccountabilityRating]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_AccountabilityRating_ChangeVersion]
    ON [edfi].[AccountabilityRating]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[AccountCode]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_AccountCode_ChangeVersion]
    ON [edfi].[AccountCode]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Actual]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Actual_ChangeVersion]
    ON [edfi].[Actual]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Assessment]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Assessment_ChangeVersion]
    ON [edfi].[Assessment]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[AssessmentItem]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_AssessmentItem_ChangeVersion]
    ON [edfi].[AssessmentItem]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[BellSchedule]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_BellSchedule_ChangeVersion]
    ON [edfi].[BellSchedule]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Budget]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Budget_ChangeVersion]
    ON [edfi].[Budget]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Calendar]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Calendar_ChangeVersion]
    ON [edfi].[Calendar]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[CalendarDate]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_CalendarDate_ChangeVersion]
    ON [edfi].[CalendarDate]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[ClassPeriod]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_ClassPeriod_ChangeVersion]
    ON [edfi].[ClassPeriod]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Cohort]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Cohort_ChangeVersion]
    ON [edfi].[Cohort]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[CommunityProviderLicense]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_CommunityProviderLicense_ChangeVersion]
    ON [edfi].[CommunityProviderLicense]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[CompetencyObjective]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_CompetencyObjective_ChangeVersion]
    ON [edfi].[CompetencyObjective]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[ContractedStaff]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_ContractedStaff_ChangeVersion]
    ON [edfi].[ContractedStaff]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Course]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Course_ChangeVersion]
    ON [edfi].[Course]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[CourseOffering]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_CourseOffering_ChangeVersion]
    ON [edfi].[CourseOffering]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[CourseTranscript]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_CourseTranscript_ChangeVersion]
    ON [edfi].[CourseTranscript]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Credential]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Credential_ChangeVersion]
    ON [edfi].[Credential]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Descriptor]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Descriptor_ChangeVersion]
    ON [edfi].[Descriptor]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[DisciplineAction]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_DisciplineAction_ChangeVersion]
    ON [edfi].[DisciplineAction]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[DisciplineIncident]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_DisciplineIncident_ChangeVersion]
    ON [edfi].[DisciplineIncident]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[EducationContent]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_EducationContent_ChangeVersion]
    ON [edfi].[EducationContent]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[EducationOrganization]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_EducationOrganization_ChangeVersion]
    ON [edfi].[EducationOrganization]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_EducationOrganizationInterventionPrescriptionAssociation_ChangeVersion]
    ON [edfi].[EducationOrganizationInterventionPrescriptionAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_EducationOrganizationNetworkAssociation_ChangeVersion]
    ON [edfi].[EducationOrganizationNetworkAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[EducationOrganizationPeerAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_EducationOrganizationPeerAssociation_ChangeVersion]
    ON [edfi].[EducationOrganizationPeerAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[FeederSchoolAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_FeederSchoolAssociation_ChangeVersion]
    ON [edfi].[FeederSchoolAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[GeneralStudentProgramAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_GeneralStudentProgramAssociation_ChangeVersion]
    ON [edfi].[GeneralStudentProgramAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Grade]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Grade_ChangeVersion]
    ON [edfi].[Grade]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[GradebookEntry]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_GradebookEntry_ChangeVersion]
    ON [edfi].[GradebookEntry]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[GradingPeriod]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_GradingPeriod_ChangeVersion]
    ON [edfi].[GradingPeriod]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[GraduationPlan]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_GraduationPlan_ChangeVersion]
    ON [edfi].[GraduationPlan]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Intervention]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Intervention_ChangeVersion]
    ON [edfi].[Intervention]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[InterventionPrescription]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO


CREATE NONCLUSTERED INDEX [UX_InterventionPrescription_ChangeVersion]
    ON [edfi].[InterventionPrescription]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[InterventionStudy]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_InterventionStudy_ChangeVersion]
    ON [edfi].[InterventionStudy]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[LearningObjective]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_LearningObjective_ChangeVersion]
    ON [edfi].[LearningObjective]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[LearningStandard]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_LearningStandard_ChangeVersion]
    ON [edfi].[LearningStandard]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[LearningStandardEquivalenceAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_LearningStandardEquivalenceAssociation_ChangeVersion]
    ON [edfi].[LearningStandardEquivalenceAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Location]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Location_ChangeVersion]
    ON [edfi].[Location]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[ObjectiveAssessment]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_ObjectiveAssessment_ChangeVersion]
    ON [edfi].[ObjectiveAssessment]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[OpenStaffPosition]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_OpenStaffPosition_ChangeVersion]
    ON [edfi].[OpenStaffPosition]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Parent]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Parent_ChangeVersion]
    ON [edfi].[Parent]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Payroll]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Payroll_ChangeVersion]
    ON [edfi].[Payroll]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Person]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Person_ChangeVersion]
    ON [edfi].[Person]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[PostSecondaryEvent]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_PostSecondaryEvent_ChangeVersion]
    ON [edfi].[PostSecondaryEvent]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Program]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Program_ChangeVersion]
    ON [edfi].[Program]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[ReportCard]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_ReportCard_ChangeVersion]
    ON [edfi].[ReportCard]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[RestraintEvent]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_RestraintEvent_ChangeVersion]
    ON [edfi].[RestraintEvent]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SchoolYearType]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SchoolYearType_ChangeVersion]
    ON [edfi].[SchoolYearType]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Section]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Section_ChangeVersion]
    ON [edfi].[Section]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SectionAttendanceTakenEvent_ChangeVersion]
    ON [edfi].[SectionAttendanceTakenEvent]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Session]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Session_ChangeVersion]
    ON [edfi].[Session]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Staff]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Staff_ChangeVersion]
    ON [edfi].[Staff]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StaffAbsenceEvent]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StaffAbsenceEvent_ChangeVersion]
    ON [edfi].[StaffAbsenceEvent]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StaffCohortAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StaffCohortAssociation_ChangeVersion]
    ON [edfi].[StaffCohortAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StaffDisciplineIncidentAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StaffDisciplineIncidentAssociation_ChangeVersion]
    ON [edfi].[StaffDisciplineIncidentAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StaffEducationOrganizationAssignmentAssociation_ChangeVersion]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StaffEducationOrganizationContactAssociation_ChangeVersion]
    ON [edfi].[StaffEducationOrganizationContactAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StaffEducationOrganizationEmploymentAssociation_ChangeVersion]
    ON [edfi].[StaffEducationOrganizationEmploymentAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StaffLeave]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StaffLeave_ChangeVersion]
    ON [edfi].[StaffLeave]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StaffProgramAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StaffProgramAssociation_ChangeVersion]
    ON [edfi].[StaffProgramAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StaffSchoolAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StaffSchoolAssociation_ChangeVersion]
    ON [edfi].[StaffSchoolAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StaffSectionAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StaffSectionAssociation_ChangeVersion]
    ON [edfi].[StaffSectionAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Student]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Student_ChangeVersion]
    ON [edfi].[Student]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentAcademicRecord]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentAcademicRecord_ChangeVersion]
    ON [edfi].[StudentAcademicRecord]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentAssessment]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentAssessment_ChangeVersion]
    ON [edfi].[StudentAssessment]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentCohortAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentCohortAssociation_ChangeVersion]
    ON [edfi].[StudentCohortAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentCompetencyObjective]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentCompetencyObjective_ChangeVersion]
    ON [edfi].[StudentCompetencyObjective]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentDisciplineIncidentAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentDisciplineIncidentAssociation_ChangeVersion]
    ON [edfi].[StudentDisciplineIncidentAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO


CREATE NONCLUSTERED INDEX [UX_StudentEducationOrganizationAssociation_ChangeVersion]
    ON [edfi].[StudentEducationOrganizationAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentEducationOrganizationResponsibilityAssociation_ChangeVersion]
    ON [edfi].[StudentEducationOrganizationResponsibilityAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentGradebookEntry]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentGradebookEntry_ChangeVersion]
    ON [edfi].[StudentGradebookEntry]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentInterventionAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentInterventionAssociation_ChangeVersion]
    ON [edfi].[StudentInterventionAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentInterventionAttendanceEvent]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentInterventionAttendanceEvent_ChangeVersion]
    ON [edfi].[StudentInterventionAttendanceEvent]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentLearningObjective]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentLearningObjective_ChangeVersion]
    ON [edfi].[StudentLearningObjective]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentParentAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentParentAssociation_ChangeVersion]
    ON [edfi].[StudentParentAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentProgramAttendanceEvent]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentProgramAttendanceEvent_ChangeVersion]
    ON [edfi].[StudentProgramAttendanceEvent]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentSchoolAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentSchoolAssociation_ChangeVersion]
    ON [edfi].[StudentSchoolAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentSchoolAttendanceEvent]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentSchoolAttendanceEvent_ChangeVersion]
    ON [edfi].[StudentSchoolAttendanceEvent]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentSectionAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentSectionAssociation_ChangeVersion]
    ON [edfi].[StudentSectionAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentSectionAttendanceEvent]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_StudentSectionAttendanceEvent_ChangeVersion]
    ON [edfi].[StudentSectionAttendanceEvent]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[Survey]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_Survey_ChangeVersion]
    ON [edfi].[Survey]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveyCourseAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveyCourseAssociation_ChangeVersion]
    ON [edfi].[SurveyCourseAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveyProgramAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveyProgramAssociation_ChangeVersion]
    ON [edfi].[SurveyProgramAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveyQuestion]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveyQuestion_ChangeVersion]
    ON [edfi].[SurveyQuestion]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveyQuestionResponse]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveyQuestionResponse_ChangeVersion]
    ON [edfi].[SurveyQuestionResponse]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveyResponse]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveyResponse_ChangeVersion]
    ON [edfi].[SurveyResponse]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveyResponseEducationOrganizationTargetAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveyResponseEducationOrganizationTargetAssociation_ChangeVersion]
    ON [edfi].[SurveyResponseEducationOrganizationTargetAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveyResponseStaffTargetAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveyResponseStaffTargetAssociation_ChangeVersion]
    ON [edfi].[SurveyResponseStaffTargetAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveySection]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveySection_ChangeVersion]
    ON [edfi].[SurveySection]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveySectionAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveySectionAssociation_ChangeVersion]
    ON [edfi].[SurveySectionAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveySectionResponse]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveySectionResponse_ChangeVersion]
    ON [edfi].[SurveySectionResponse]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveySectionResponseEducationOrganizationTargetAssociation_ChangeVersion]
    ON [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[SurveySectionResponseStaffTargetAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL
GO

CREATE NONCLUSTERED INDEX [UX_SurveySectionResponseStaffTargetAssociation_ChangeVersion]
    ON [edfi].[SurveySectionResponseStaffTargetAssociation]([ChangeVersion] ASC);
GO