-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[AcademicWeek]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[AcademicWeek] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Account]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Account] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[AccountabilityRating]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[AccountabilityRating] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[AccountCode]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[AccountCode] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Actual]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Actual] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Assessment]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Assessment] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[AssessmentItem]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[AssessmentItem] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[BellSchedule]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[BellSchedule] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Budget]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Budget] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Calendar]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Calendar] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[CalendarDate]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[CalendarDate] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[ClassPeriod]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[ClassPeriod] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Cohort]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Cohort] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[CommunityProviderLicense]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[CommunityProviderLicense] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[CompetencyObjective]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[CompetencyObjective] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[ContractedStaff]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[ContractedStaff] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Course]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Course] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[CourseOffering]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[CourseOffering] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[CourseTranscript]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[CourseTranscript] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Credential]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Credential] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[DisciplineAction]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[DisciplineAction] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[DisciplineIncident]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[DisciplineIncident] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[EducationContent]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[EducationContent] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[EducationOrganization]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[EducationOrganization] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[EducationOrganizationInterventionPrescriptionAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[EducationOrganizationNetworkAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[EducationOrganizationPeerAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[EducationOrganizationPeerAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[FeederSchoolAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[FeederSchoolAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[GeneralStudentProgramAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[GeneralStudentProgramAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Grade]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Grade] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[GradebookEntry]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[GradebookEntry] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[GradingPeriod]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[GradingPeriod] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[GraduationPlan]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[GraduationPlan] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Intervention]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Intervention] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[InterventionPrescription]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[InterventionPrescription] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[InterventionStudy]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[InterventionStudy] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[LearningObjective]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[LearningObjective] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[LearningStandard]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[LearningStandard] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Location]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Location] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[ObjectiveAssessment]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[ObjectiveAssessment] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[OpenStaffPosition]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[OpenStaffPosition] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Parent]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Parent] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Payroll]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Payroll] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[PostSecondaryEvent]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[PostSecondaryEvent] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Program]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Program] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[ReportCard]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[ReportCard] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[RestraintEvent]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[RestraintEvent] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Section]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Section] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[SectionAttendanceTakenEvent]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[SectionAttendanceTakenEvent] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Session]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Session] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Staff]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Staff] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StaffAbsenceEvent]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StaffAbsenceEvent] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StaffCohortAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StaffCohortAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StaffEducationOrganizationAssignmentAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StaffEducationOrganizationContactAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StaffEducationOrganizationEmploymentAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StaffLeave]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StaffLeave] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StaffProgramAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StaffProgramAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StaffSchoolAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StaffSchoolAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StaffSectionAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StaffSectionAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[Student]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[Student] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentAcademicRecord]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentAcademicRecord] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentAssessment]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentAssessment] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentCohortAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentCohortAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentCompetencyObjective]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentCompetencyObjective] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentDisciplineIncidentAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentDisciplineIncidentAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentEducationOrganizationAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentEducationOrganizationResponsibilityAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentGradebookEntry]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentGradebookEntry] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentInterventionAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentInterventionAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentInterventionAttendanceEvent]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentLearningObjective]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentLearningObjective] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentParentAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentParentAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentProgramAttendanceEvent]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentProgramAttendanceEvent] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentSchoolAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentSchoolAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentSchoolAttendanceEvent]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentSectionAssociation]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentSectionAssociation] ADD [Discriminator] NVARCHAR(128) NULL
END
GO

IF NOT EXISTS (SELECT 1 FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'[edfi].[StudentSectionAttendanceEvent]') AND name = 'Discriminator')
BEGIN
    ALTER TABLE [edfi].[StudentSectionAttendanceEvent] ADD [Discriminator] NVARCHAR(128) NULL
END
GO
