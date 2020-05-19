-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping unused ods views, if they exist'

IF OBJECT_ID('[ods].[StudentAssessment]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentAssessment]
GO

IF OBJECT_ID('[ods].[ObjectiveAssessmentPerformanceLevel]', 'V') IS NOT NULL
	DROP VIEW [ods].[ObjectiveAssessmentPerformanceLevel]
GO

IF OBJECT_ID('[ods].[ObjectiveAssessmentLearningObjective]', 'V') IS NOT NULL
	DROP VIEW [ods].[ObjectiveAssessmentLearningObjective]
GO

IF OBJECT_ID('[ods].[AssessmentPerformanceLevel]', 'V') IS NOT NULL
	DROP VIEW [ods].[AssessmentPerformanceLevel]
GO

IF OBJECT_ID('[ods].[NetworkPurposeType]', 'V') IS NOT NULL
	DROP VIEW [ods].[NetworkPurposeType]
GO

IF OBJECT_ID('[ods].[AssessmentItemLearningStandard]', 'V') IS NOT NULL
	DROP VIEW [ods].[AssessmentItemLearningStandard]
GO

IF OBJECT_ID('[ods].[Assessment]', 'V') IS NOT NULL
	DROP VIEW [ods].[Assessment]
GO

IF OBJECT_ID('[ods].[Cohort]', 'V') IS NOT NULL
	DROP VIEW [ods].[Cohort]
GO

IF OBJECT_ID('[ods].[StudentProgramAssociationService]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentProgramAssociationService]
GO

IF OBJECT_ID('[ods].[StudentProgramAssociation]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentProgramAssociation]
GO

IF OBJECT_ID('[ods].[LanguagesType]', 'V') IS NOT NULL
	DROP VIEW [ods].[LanguagesType]
GO

IF OBJECT_ID('[ods].[Course]', 'V') IS NOT NULL
	DROP VIEW [ods].[Course]
GO

IF OBJECT_ID('[ods].[InterventionEffectivenessRatingType]', 'V') IS NOT NULL
	DROP VIEW [ods].[InterventionEffectivenessRatingType]
GO

IF OBJECT_ID('[ods].[Grade]', 'V') IS NOT NULL
	DROP VIEW [ods].[Grade]
GO

IF OBJECT_ID('[ods].[InterventionClassType]', 'V') IS NOT NULL
	DROP VIEW [ods].[InterventionClassType]
GO

IF OBJECT_ID('[ods].[StudentSchoolAssociationGraduationPlan]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentSchoolAssociationGraduationPlan]
GO

IF OBJECT_ID('[ods].[InternetAccessType]', 'V') IS NOT NULL
	DROP VIEW [ods].[InternetAccessType]
GO

IF OBJECT_ID('[ods].[StudentSectionAssociation]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentSectionAssociation]
GO

IF OBJECT_ID('[ods].[CalendarDate]', 'V') IS NOT NULL
	DROP VIEW [ods].[CalendarDate]
GO

IF OBJECT_ID('[ods].[IdentificationDocumentUseType]', 'V') IS NOT NULL
	DROP VIEW [ods].[IdentificationDocumentUseType]
GO

IF OBJECT_ID('[ods].[SessionGradingPeriod]', 'V') IS NOT NULL
	DROP VIEW [ods].[SessionGradingPeriod]
GO

IF OBJECT_ID('[ods].[Session]', 'V') IS NOT NULL
	DROP VIEW [ods].[Session]
GO

IF OBJECT_ID('[ods].[GraduationPlanType]', 'V') IS NOT NULL
	DROP VIEW [ods].[GraduationPlanType]
GO

IF OBJECT_ID('[ods].[TeacherSectionAssociation]', 'V') IS NOT NULL
	DROP VIEW [ods].[TeacherSectionAssociation]
GO

IF OBJECT_ID('[ods].[TeacherSchoolAssociation]', 'V') IS NOT NULL
	DROP VIEW [ods].[TeacherSchoolAssociation]
GO

IF OBJECT_ID('[ods].[GradeLevelType]', 'V') IS NOT NULL
	DROP VIEW [ods].[GradeLevelType]
GO

IF OBJECT_ID('[ods].[GradebookEntryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[GradebookEntryType]
GO

IF OBJECT_ID('[ods].[Staff]', 'V') IS NOT NULL
	DROP VIEW [ods].[Staff]
GO

IF OBJECT_ID('[ods].[Credential]', 'V') IS NOT NULL
	DROP VIEW [ods].[Credential]
GO

IF OBJECT_ID('[ods].[EventCircumstanceType]', 'V') IS NOT NULL
	DROP VIEW [ods].[EventCircumstanceType]
GO

IF OBJECT_ID('[ods].[Section]', 'V') IS NOT NULL
	DROP VIEW [ods].[Section]
GO

IF OBJECT_ID('[ods].[CourseOffering]', 'V') IS NOT NULL
	DROP VIEW [ods].[CourseOffering]
GO

IF OBJECT_ID('[ods].[EntryGradeLevelReasonType]', 'V') IS NOT NULL
	DROP VIEW [ods].[EntryGradeLevelReasonType]
GO

IF OBJECT_ID('[ods].[StudentSchoolAttendanceEvent]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentSchoolAttendanceEvent]
GO

IF OBJECT_ID('[ods].[StudentSectionAttendanceEvent]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentSectionAttendanceEvent]
GO

IF OBJECT_ID('[ods].[StudentDisciplineIncidentBehavior]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentDisciplineIncidentBehavior]
GO

IF OBJECT_ID('[ods].[DisciplineIncidentBehavior]', 'V') IS NOT NULL
	DROP VIEW [ods].[DisciplineIncidentBehavior]
GO

IF OBJECT_ID('[ods].[DisciplineActionDiscipline]', 'V') IS NOT NULL
	DROP VIEW [ods].[DisciplineActionDiscipline]
GO

IF OBJECT_ID('[ods].[DisciplineAction]', 'V') IS NOT NULL
	DROP VIEW [ods].[DisciplineAction]
GO

IF OBJECT_ID('[ods].[StudentAcademicRecord]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentAcademicRecord]
GO

IF OBJECT_ID('[ods].[DocumentCategoryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[DocumentCategoryType]
GO

IF OBJECT_ID('[ods].[CourseTranscript]', 'V') IS NOT NULL
	DROP VIEW [ods].[CourseTranscript]
GO

IF OBJECT_ID('[ods].[DisciplineType]', 'V') IS NOT NULL
	DROP VIEW [ods].[DisciplineType]
GO

IF OBJECT_ID('[ods].[ParentAddress]', 'V') IS NOT NULL
	DROP VIEW [ods].[ParentAddress]
GO

IF OBJECT_ID('[ods].[StudentAddress]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentAddress]
GO

IF OBJECT_ID('[ods].[DisabilityCategoryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[DisabilityCategoryType]
GO

IF OBJECT_ID('[ods].[StudentLanguageUse]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentLanguageUse]
GO

IF OBJECT_ID('[ods].[StudentLanguages]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentLanguages]
GO

IF OBJECT_ID('[ods].[Student]', 'V') IS NOT NULL
	DROP VIEW [ods].[Student]
GO

IF OBJECT_ID('[ods].[DiagnosisType]', 'V') IS NOT NULL
	DROP VIEW [ods].[DiagnosisType]
GO

IF OBJECT_ID('[ods].[DeliveryMethodType]', 'V') IS NOT NULL
	DROP VIEW [ods].[DeliveryMethodType]
GO

IF OBJECT_ID('[ods].[CostRateType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CostRateType]
GO

IF OBJECT_ID('[ods].[ContinuationOfServicesReasonType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ContinuationOfServicesReasonType]
GO

IF OBJECT_ID('[ods].[CitizenshipStatusType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CitizenshipStatusType]
GO

IF OBJECT_ID('[ods].[LanguageDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[LanguageDescriptor]
GO

IF OBJECT_ID('[ods].[AssessmentReportingMethodType]', 'V') IS NOT NULL
	DROP VIEW [ods].[AssessmentReportingMethodType]
GO

IF OBJECT_ID('[ods].[AdministrativeFundingControlType]', 'V') IS NOT NULL
	DROP VIEW [ods].[AdministrativeFundingControlType]
GO

IF OBJECT_ID('[ods].[AccommodationType]', 'V') IS NOT NULL
	DROP VIEW [ods].[AccommodationType]
GO

IF OBJECT_ID('[ods].[VisaType]', 'V') IS NOT NULL
	DROP VIEW [ods].[VisaType]
GO

IF OBJECT_ID('[ods].[StudentSpecialEdProgramAssociation]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentSpecialEdProgramAssociation]
GO

IF OBJECT_ID('[ods].[ProgramCharacteristicDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[ProgramCharacteristicDescriptor]
GO

IF OBJECT_ID('[ods].[SchoolChoiceImplementStatusType]', 'V') IS NOT NULL
	DROP VIEW [ods].[SchoolChoiceImplementStatusType]
GO

IF OBJECT_ID('[ods].[ResultDatatypeType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ResultDatatypeType]
GO

IF OBJECT_ID('[ods].[SchoolList]', 'V') IS NOT NULL
	DROP VIEW [ods].[SchoolList]
GO

IF OBJECT_ID('[ods].[CurrentStudentSchoolAssociation]', 'V') IS NOT NULL
	DROP VIEW [ods].[CurrentStudentSchoolAssociation]
GO

IF OBJECT_ID('[ods].[StudentSchoolAssociation]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentSchoolAssociation]
GO

IF OBJECT_ID('[ods].[CurrentStaffEducationOrgEmploymentAssociation]', 'V') IS NOT NULL
	DROP VIEW [ods].[CurrentStaffEducationOrgEmploymentAssociation]
GO

IF OBJECT_ID('[ods].[StaffEducationOrgEmploymentAssociation]', 'V') IS NOT NULL
	DROP VIEW [ods].[StaffEducationOrgEmploymentAssociation]
GO

IF OBJECT_ID('[ods].[CurrentStaffEducationOrgAssignmentAssociation]', 'V') IS NOT NULL
	DROP VIEW [ods].[CurrentStaffEducationOrgAssignmentAssociation]
GO

IF OBJECT_ID('[ods].[MinMaxDate]', 'V') IS NOT NULL
	DROP VIEW [ods].[MinMaxDate]
GO

IF OBJECT_ID('[ods].[StudentIdentificationCode]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentIdentificationCode]
GO

IF OBJECT_ID('[ods].[StaffIdentificationCode]', 'V') IS NOT NULL
	DROP VIEW [ods].[StaffIdentificationCode]
GO

IF OBJECT_ID('[ods].[PublicationStatusType]', 'V') IS NOT NULL
	DROP VIEW [ods].[PublicationStatusType]
GO

IF OBJECT_ID('[ods].[StudentObjectiveAssessmentScoreResults]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentObjectiveAssessmentScoreResults]
GO

IF OBJECT_ID('[ods].[StudentObjectiveAssessment]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentObjectiveAssessment]
GO

IF OBJECT_ID('[ods].[StudentAssessmentScoreResult]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentAssessmentScoreResult]
GO

IF OBJECT_ID('[ods].[ProgramCharacteristicType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ProgramCharacteristicType]
GO

IF OBJECT_ID('[ods].[StudentAssessmentPerformanceLevel]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentAssessmentPerformanceLevel]
GO

IF OBJECT_ID('[ods].[StudentAssessmentItem]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentAssessmentItem]
GO

IF OBJECT_ID('[ods].[AssessmentItem]', 'V') IS NOT NULL
	DROP VIEW [ods].[AssessmentItem]
GO

IF OBJECT_ID('[ods].[PostSecondaryInstitutionLevelType]', 'V') IS NOT NULL
	DROP VIEW [ods].[PostSecondaryInstitutionLevelType]
GO

IF OBJECT_ID('[ods].[StudentAssessmentAccommodation]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentAssessmentAccommodation]
GO

IF OBJECT_ID('[ods].[LeaveEventCategoryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[LeaveEventCategoryType]
GO

IF OBJECT_ID('[ods].[LevelDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[LevelDescriptor]
GO

IF OBJECT_ID('[ods].[LevelDescriptorGradeLevel]', 'V') IS NOT NULL
	DROP VIEW [ods].[LevelDescriptorGradeLevel]
GO

IF OBJECT_ID('[ods].[SectionCharacteristicsDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[SectionCharacteristicsDescriptor]
GO

IF OBJECT_ID('[ods].[AcademicSubjectDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[AcademicSubjectDescriptor]
GO

IF OBJECT_ID('[ods].[CredentialFieldDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[CredentialFieldDescriptor]
GO

IF OBJECT_ID('[ods].[LearningObjective]', 'V') IS NOT NULL
	DROP VIEW [ods].[LearningObjective]
GO

IF OBJECT_ID('[ods].[LearningStandard]', 'V') IS NOT NULL
	DROP VIEW [ods].[LearningStandard]
GO

IF OBJECT_ID('[ods].[ObjectiveAssessment]', 'V') IS NOT NULL
	DROP VIEW [ods].[ObjectiveAssessment]
GO

IF OBJECT_ID('[ods].[AssessmentIdentificationCode]', 'V') IS NOT NULL
	DROP VIEW [ods].[AssessmentIdentificationCode]
GO

IF OBJECT_ID('[ods].[AccommodationDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[AccommodationDescriptor]
GO

IF OBJECT_ID('[ods].[AdministrativeFundingControlDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[AdministrativeFundingControlDescriptor]
GO

IF OBJECT_ID('[ods].[GradeLevelDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[GradeLevelDescriptor]
GO

IF OBJECT_ID('[ods].[PerformanceLevelDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].PerformanceLevelDescriptor
GO

IF OBJECT_ID('[ods].[AttendanceEventCategoryDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[AttendanceEventCategoryDescriptor]
GO

IF OBJECT_ID('[ods].[BehaviorDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[BehaviorDescriptor]
GO

IF OBJECT_ID('[ods].[ProgramAssignmentType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ProgramAssignmentType]
GO


IF OBJECT_ID('[ods].[ProgramSponsorType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ProgramSponsorType]
GO


IF OBJECT_ID('[ods].[ProgramType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ProgramType]
GO


IF OBJECT_ID('[ods].[RaceType]', 'V') IS NOT NULL
	DROP VIEW [ods].[RaceType]
GO


IF OBJECT_ID('[ods].[ReasonExitedType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ReasonExitedType]
GO


IF OBJECT_ID('[ods].[ReasonNotTestedType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ReasonNotTestedType]
GO


IF OBJECT_ID('[ods].[RecognitionType]', 'V') IS NOT NULL
	DROP VIEW [ods].[RecognitionType]
GO


IF OBJECT_ID('[ods].[RelationType]', 'V') IS NOT NULL
	DROP VIEW [ods].[RelationType]
GO


IF OBJECT_ID('[ods].[RepeatIdentifierType]', 'V') IS NOT NULL
	DROP VIEW [ods].[RepeatIdentifierType]
GO


IF OBJECT_ID('[ods].[ReporterDescriptionType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ReporterDescriptionType]
GO


IF OBJECT_ID('[ods].[ResidencyStatusType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ResidencyStatusType]
GO


IF OBJECT_ID('[ods].[ResponseIndicatorType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ResponseIndicatorType]
GO


IF OBJECT_ID('[ods].[ResponsibilityType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ResponsibilityType]
GO


IF OBJECT_ID('[ods].[RestraintEventReasonsType]', 'V') IS NOT NULL
	DROP VIEW [ods].[RestraintEventReasonsType]
GO


IF OBJECT_ID('[ods].[RetestIndicatorType]', 'V') IS NOT NULL
	DROP VIEW [ods].[RetestIndicatorType]
GO


IF OBJECT_ID('[ods].[SchoolCategoryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[SchoolCategoryType]
GO


IF OBJECT_ID('[ods].[SchoolFoodServicesEligibilityType]', 'V') IS NOT NULL
	DROP VIEW [ods].[SchoolFoodServicesEligibilityType]
GO


IF OBJECT_ID('[ods].[SchoolType]', 'V') IS NOT NULL
	DROP VIEW [ods].[SchoolType]
GO


IF OBJECT_ID('[ods].[SchoolYearType]', 'V') IS NOT NULL
	DROP VIEW [ods].[SchoolYearType]
GO


IF OBJECT_ID('[ods].[SeparationReasonType]', 'V') IS NOT NULL
	DROP VIEW [ods].[SeparationReasonType]
GO


IF OBJECT_ID('[ods].[SeparationType]', 'V') IS NOT NULL
	DROP VIEW [ods].[SeparationType]
GO


IF OBJECT_ID('[ods].[SexType]', 'V') IS NOT NULL
	DROP VIEW [ods].[SexType]
GO


IF OBJECT_ID('[ods].[SpecialEducationSettingType]', 'V') IS NOT NULL
	DROP VIEW [ods].[SpecialEducationSettingType]
GO


IF OBJECT_ID('[ods].[StaffClassificationType]', 'V') IS NOT NULL
	DROP VIEW [ods].[StaffClassificationType]
GO


IF OBJECT_ID('[ods].[StaffIdentificationSystemType]', 'V') IS NOT NULL
	DROP VIEW [ods].[StaffIdentificationSystemType]
GO


IF OBJECT_ID('[ods].[StateAbbreviationType]', 'V') IS NOT NULL
	DROP VIEW [ods].[StateAbbreviationType]
GO


IF OBJECT_ID('[ods].[StudentCharacteristicsType]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentCharacteristicsType]
GO


IF OBJECT_ID('[ods].[StudentIdentificationSystemType]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentIdentificationSystemType]
GO


IF OBJECT_ID('[ods].[StudentParticipationCodeType]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentParticipationCodeType]
GO


IF OBJECT_ID('[ods].[TeachingCredentialBasisType]', 'V') IS NOT NULL
	DROP VIEW [ods].[TeachingCredentialBasisType]
GO


IF OBJECT_ID('[ods].[TeachingCredentialType]', 'V') IS NOT NULL
	DROP VIEW [ods].[TeachingCredentialType]
GO


IF OBJECT_ID('[ods].[TelephoneNumberType]', 'V') IS NOT NULL
	DROP VIEW [ods].[TelephoneNumberType]
GO


IF OBJECT_ID('[ods].[TermType]', 'V') IS NOT NULL
	DROP VIEW [ods].[TermType]
GO


IF OBJECT_ID('[ods].[TitleIPartAParticipantType]', 'V') IS NOT NULL
	DROP VIEW [ods].[TitleIPartAParticipantType]
GO


IF OBJECT_ID('[ods].[TitleIPartASchoolDesignationType]', 'V') IS NOT NULL
	DROP VIEW [ods].[TitleIPartASchoolDesignationType]
GO


IF OBJECT_ID('[ods].[WeaponsType]', 'V') IS NOT NULL
	DROP VIEW [ods].[WeaponsType]
GO


IF OBJECT_ID('[ods].[Descriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[Descriptor]
GO


IF OBJECT_ID('[ods].[AccountCodeDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[AccountCodeDescriptor]
GO


IF OBJECT_ID('[ods].[AchievementCategoryDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[AchievementCategoryDescriptor]
GO


IF OBJECT_ID('[ods].[AssessmentPeriodDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[AssessmentPeriodDescriptor]
GO


IF OBJECT_ID('[ods].[BehaviorDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[BehaviorDescriptor]
GO


IF OBJECT_ID('[ods].[AcademicHonorsType]', 'V') IS NOT NULL
	DROP VIEW [ods].[AcademicHonorsType]
GO


IF OBJECT_ID('[ods].[CalendarEventDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[CalendarEventDescriptor]
GO


IF OBJECT_ID('[ods].[AcademicSubjectType]', 'V') IS NOT NULL
	DROP VIEW [ods].[AcademicSubjectType]
GO


IF OBJECT_ID('[ods].[ClassroomPositionDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[ClassroomPositionDescriptor]
GO


IF OBJECT_ID('[ods].[CompetencyLevelDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[CompetencyLevelDescriptor]
GO


IF OBJECT_ID('[ods].[AddressType]', 'V') IS NOT NULL
	DROP VIEW [ods].[AddressType]
GO


IF OBJECT_ID('[ods].[ContinuationOfServicesReasonDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[ContinuationOfServicesReasonDescriptor]
GO


IF OBJECT_ID('[ods].[AdministrationEnvironmentType]', 'V') IS NOT NULL
	DROP VIEW [ods].[AdministrationEnvironmentType]
GO


IF OBJECT_ID('[ods].[DiagnosisDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[DiagnosisDescriptor]
GO


IF OBJECT_ID('[ods].[AssessmentCategoryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[AssessmentCategoryType]
GO


IF OBJECT_ID('[ods].[DisabilityDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[DisabilityDescriptor]
GO


IF OBJECT_ID('[ods].[AssessmentIdentificationSystemType]', 'V') IS NOT NULL
	DROP VIEW [ods].[AssessmentIdentificationSystemType]
GO


IF OBJECT_ID('[ods].[DisciplineDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[DisciplineDescriptor]
GO


IF OBJECT_ID('[ods].[AssessmentItemResultType]', 'V') IS NOT NULL
	DROP VIEW [ods].[AssessmentItemResultType]
GO


IF OBJECT_ID('[ods].[EmploymentStatusDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[EmploymentStatusDescriptor]
GO


IF OBJECT_ID('[ods].[EntryTypeDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[EntryTypeDescriptor]
GO


IF OBJECT_ID('[ods].[AttendanceEventCategoryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[AttendanceEventCategoryType]
GO


IF OBJECT_ID('[ods].[ExitWithdrawTypeDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[ExitWithdrawTypeDescriptor]
GO


IF OBJECT_ID('[ods].[BehaviorCategoryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[BehaviorCategoryType]
GO


IF OBJECT_ID('[ods].[CalendarEventType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CalendarEventType]
GO


IF OBJECT_ID('[ods].[GradingPeriodDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[GradingPeriodDescriptor]
GO


IF OBJECT_ID('[ods].[CareerPathwayType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CareerPathwayType]
GO


IF OBJECT_ID('[ods].[GraduationPlanTypeDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[GraduationPlanTypeDescriptor]
GO


IF OBJECT_ID('[ods].[CharterStatusType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CharterStatusType]
GO


IF OBJECT_ID('[ods].[ClassroomPositionType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ClassroomPositionType]
GO


IF OBJECT_ID('[ods].[CohortScopeType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CohortScopeType]
GO


IF OBJECT_ID('[ods].[LevelOfEducationDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[LevelOfEducationDescriptor]
GO


IF OBJECT_ID('[ods].[CohortType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CohortType]
GO


IF OBJECT_ID('[ods].[LimitedEnglishProficiencyDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[LimitedEnglishProficiencyDescriptor]
GO


IF OBJECT_ID('[ods].[CohortYearType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CohortYearType]
GO


IF OBJECT_ID('[ods].[ContentClassType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ContentClassType]
GO


IF OBJECT_ID('[ods].[ProgramAssignmentDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[ProgramAssignmentDescriptor]
GO


IF OBJECT_ID('[ods].[ReasonExitedDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[ReasonExitedDescriptor]
GO


IF OBJECT_ID('[ods].[CountryCodeType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CountryCodeType]
GO


IF OBJECT_ID('[ods].[ReporterDescriptionDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[ReporterDescriptionDescriptor]
GO


IF OBJECT_ID('[ods].[CourseAttemptResultType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CourseAttemptResultType]
GO


IF OBJECT_ID('[ods].[ResidencyStatusDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[ResidencyStatusDescriptor]
GO


IF OBJECT_ID('[ods].[CourseCodeSystemType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CourseCodeSystemType]
GO


IF OBJECT_ID('[ods].[ResponsibilityDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[ResponsibilityDescriptor]
GO


IF OBJECT_ID('[ods].[CourseDefinedByType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CourseDefinedByType]
GO


IF OBJECT_ID('[ods].[SchoolFoodServicesEligibilityDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[SchoolFoodServicesEligibilityDescriptor]
GO


IF OBJECT_ID('[ods].[CourseGPAApplicabilityType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CourseGPAApplicabilityType]
GO


IF OBJECT_ID('[ods].[CourseLevelCharacteristicsType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CourseLevelCharacteristicsType]
GO


IF OBJECT_ID('[ods].[SeparationReasonDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[SeparationReasonDescriptor]
GO


IF OBJECT_ID('[ods].[CourseRepeatCodeType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CourseRepeatCodeType]
GO


IF OBJECT_ID('[ods].[ServiceDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[ServiceDescriptor]
GO


IF OBJECT_ID('[ods].[CredentialType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CredentialType]
GO


IF OBJECT_ID('[ods].[SpecialEducationSettingDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[SpecialEducationSettingDescriptor]
GO


IF OBJECT_ID('[ods].[CreditType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CreditType]
GO


IF OBJECT_ID('[ods].[StaffClassificationDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[StaffClassificationDescriptor]
GO


IF OBJECT_ID('[ods].[CurriculumUsedType]', 'V') IS NOT NULL
	DROP VIEW [ods].[CurriculumUsedType]
GO


IF OBJECT_ID('[ods].[TeachingCredentialDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[TeachingCredentialDescriptor]
GO


IF OBJECT_ID('[ods].[WeaponDescriptor]', 'V') IS NOT NULL
	DROP VIEW [ods].[WeaponDescriptor]
GO


IF OBJECT_ID('[ods].[DiplomaLevelType]', 'V') IS NOT NULL
	DROP VIEW [ods].[DiplomaLevelType]
GO


IF OBJECT_ID('[ods].[DiplomaType]', 'V') IS NOT NULL
	DROP VIEW [ods].[DiplomaType]
GO


IF OBJECT_ID('[ods].[StudentCharacteristics]', 'V') IS NOT NULL
	DROP VIEW [ods].[StudentCharacteristics]
GO


IF OBJECT_ID('[ods].[DisabilityType]', 'V') IS NOT NULL
	DROP VIEW [ods].[DisabilityType]
GO


IF OBJECT_ID('[ods].[DisciplineActionLengthDifferenceReasonType]', 'V') IS NOT NULL
	DROP VIEW [ods].[DisciplineActionLengthDifferenceReasonType]
GO


IF OBJECT_ID('[ods].[EducationalEnvironmentType]', 'V') IS NOT NULL
	DROP VIEW [ods].[EducationalEnvironmentType]
GO


IF OBJECT_ID('[ods].[EducationOrganizationCategoryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[EducationOrganizationCategoryType]
GO


IF OBJECT_ID('[ods].[EducationOrgIdentificationSystemType]', 'V') IS NOT NULL
	DROP VIEW [ods].[EducationOrgIdentificationSystemType]
GO


IF OBJECT_ID('[ods].[EducationPlansType]', 'V') IS NOT NULL
	DROP VIEW [ods].[EducationPlansType]
GO


IF OBJECT_ID('[ods].[ElectronicMailType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ElectronicMailType]
GO


IF OBJECT_ID('[ods].[EmploymentStatusType]', 'V') IS NOT NULL
	DROP VIEW [ods].[EmploymentStatusType]
GO


IF OBJECT_ID('[ods].[EntryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[EntryType]
GO


IF OBJECT_ID('[ods].[ExitWithdrawType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ExitWithdrawType]
GO


IF OBJECT_ID('[ods].[StaffEducationOrgAssignmentAssociation]', 'V') IS NOT NULL
	DROP VIEW [ods].[StaffEducationOrgAssignmentAssociation]
GO


IF OBJECT_ID('[ods].[GradeType]', 'V') IS NOT NULL
	DROP VIEW [ods].[GradeType]
GO


IF OBJECT_ID('[ods].[GradingPeriodType]', 'V') IS NOT NULL
	DROP VIEW [ods].[GradingPeriodType]
GO


IF OBJECT_ID('[ods].[GunFreeSchoolsActReportingStatusType]', 'V') IS NOT NULL
	DROP VIEW [ods].[GunFreeSchoolsActReportingStatusType]
GO


IF OBJECT_ID('[ods].[IncidentLocationType]', 'V') IS NOT NULL
	DROP VIEW [ods].[IncidentLocationType]
GO


IF OBJECT_ID('[ods].[GradingPeriod]', 'V') IS NOT NULL
	DROP VIEW [ods].[GradingPeriod]
GO


IF OBJECT_ID('[ods].[InstitutionTelephoneNumberType]', 'V') IS NOT NULL
	DROP VIEW [ods].[InstitutionTelephoneNumberType]
GO


IF OBJECT_ID('[ods].[InteractivityStyleType]', 'V') IS NOT NULL
	DROP VIEW [ods].[InteractivityStyleType]
GO


IF OBJECT_ID('[ods].[ItemCategoryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[ItemCategoryType]
GO


IF OBJECT_ID('[ods].[CourseCodeIdentificationCode]', 'V') IS NOT NULL
	DROP VIEW [ods].[CourseCodeIdentificationCode]
GO


IF OBJECT_ID('[ods].[CourseLevelCharacteristics]', 'V') IS NOT NULL
	DROP VIEW [ods].[CourseLevelCharacteristics]
GO


IF OBJECT_ID('[ods].[LanguageUseType]', 'V') IS NOT NULL
	DROP VIEW [ods].[LanguageUseType]
GO


IF OBJECT_ID('[ods].[EducationOrganizationTelephone]', 'V') IS NOT NULL
	DROP VIEW [ods].[EducationOrganizationTelephone]
GO


IF OBJECT_ID('[ods].[LEACategoryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[LEACategoryType]
GO


IF OBJECT_ID('[ods].[LevelOfEducationType]', 'V') IS NOT NULL
	DROP VIEW [ods].[LevelOfEducationType]
GO


IF OBJECT_ID('[ods].[LimitedEnglishProficiencyType]', 'V') IS NOT NULL
	DROP VIEW [ods].[LimitedEnglishProficiencyType]
GO


IF OBJECT_ID('[ods].[MagnetSpecialProgramEmphasisSchoolType]', 'V') IS NOT NULL
	DROP VIEW [ods].[MagnetSpecialProgramEmphasisSchoolType]
GO


IF OBJECT_ID('[ods].[MediumOfInstructionType]', 'V') IS NOT NULL
	DROP VIEW [ods].[MediumOfInstructionType]
GO


IF OBJECT_ID('[ods].[MeetingDaysType]', 'V') IS NOT NULL
	DROP VIEW [ods].[MeetingDaysType]
GO


IF OBJECT_ID('[ods].[MethodCreditEarnedType]', 'V') IS NOT NULL
	DROP VIEW [ods].[MethodCreditEarnedType]
GO


IF OBJECT_ID('[ods].[OldEthnicityType]', 'V') IS NOT NULL
	DROP VIEW [ods].[OldEthnicityType]
GO


IF OBJECT_ID('[ods].[OperationalStatusType]', 'V') IS NOT NULL
	DROP VIEW [ods].[OperationalStatusType]
GO


IF OBJECT_ID('[ods].[OtherNameType]', 'V') IS NOT NULL
	DROP VIEW [ods].[OtherNameType]
GO


IF OBJECT_ID('[ods].[PerformanceBaseType]', 'V') IS NOT NULL
	DROP VIEW [ods].[PerformanceBaseType]
GO


IF OBJECT_ID('[ods].[PopulationServedType]', 'V') IS NOT NULL
	DROP VIEW [ods].[PopulationServedType]
GO


IF OBJECT_ID('[ods].[PostingResultType]', 'V') IS NOT NULL
	DROP VIEW [ods].[PostingResultType]
GO


IF OBJECT_ID('[ods].[PostSecondaryEventCategoryType]', 'V') IS NOT NULL
	DROP VIEW [ods].[PostSecondaryEventCategoryType]
GO

IF OBJECT_ID('[ods].[Disability]', 'V') IS NOT NULL
	DROP VIEW [ods].[Disability]
GO

IF OBJECT_ID(N'[ods].[AcademicHonorCategoryType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AcademicHonorCategoryType]
GO

IF OBJECT_ID(N'[ods].[AcademicWeek]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AcademicWeek]
GO

IF OBJECT_ID(N'[ods].[AccountCode]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AccountCode]
GO

IF OBJECT_ID(N'[ods].[Account]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[Account]
GO

IF OBJECT_ID(N'[ods].[AccountabilityRating]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AccountabilityRating]
GO

IF OBJECT_ID(N'[ods].[AchievementCategoryType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AchievementCategoryType]
GO

IF OBJECT_ID(N'[ods].[Actual]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[Actual]
GO

IF OBJECT_ID(N'[ods].[AdditionalCreditType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AdditionalCreditType]
GO

IF OBJECT_ID(N'[ods].[AssessmentCategoryDescriptor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentCategoryDescriptor]
GO

IF OBJECT_ID(N'[ods].[AssessmentContentStandardAuthor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentContentStandardAuthor]
GO

IF OBJECT_ID(N'[ods].[AssessmentContentStandard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentContentStandard]
GO

IF OBJECT_ID(N'[ods].[AssessmentFamilyAssessmentPeriod]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentFamilyAssessmentPeriod]
GO

IF OBJECT_ID(N'[ods].[AssessmentFamilyContentStandardAuthor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentFamilyContentStandardAuthor]
GO

IF OBJECT_ID(N'[ods].[AssessmentFamilyContentStandard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentFamilyContentStandard]
GO

IF OBJECT_ID(N'[ods].[AssessmentFamilyIdentificationCode]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentFamilyIdentificationCode]
GO

IF OBJECT_ID(N'[ods].[AssessmentFamilyLanguage]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentFamilyLanguage]
GO

IF OBJECT_ID(N'[ods].[AssessmentFamily]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentFamily]
GO

IF OBJECT_ID(N'[ods].[AssessmentIdentificationSystemDescriptor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentIdentificationSystemDescriptor]
GO

IF OBJECT_ID(N'[ods].[AssessmentItemCategoryType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentItemCategoryType]
GO

IF OBJECT_ID(N'[ods].[AssessmentLanguage]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentLanguage]
GO

IF OBJECT_ID(N'[ods].[AssessmentProgram]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentProgram]
GO

IF OBJECT_ID(N'[ods].[AssessmentScore]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentScore]
GO

IF OBJECT_ID(N'[ods].[AssessmentSection]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[AssessmentSection]
GO

IF OBJECT_ID(N'[ods].[BehaviorType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[BehaviorType]
GO

IF OBJECT_ID(N'[ods].[BellScheduleMeetingTime]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[BellScheduleMeetingTime]
GO

IF OBJECT_ID(N'[ods].[BellSchedule]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[BellSchedule]
GO

IF OBJECT_ID(N'[ods].[Budget]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[Budget]
GO

IF OBJECT_ID(N'[ods].[CalendarDateCalendarEvent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CalendarDateCalendarEvent]
GO

IF OBJECT_ID(N'[ods].[CharterApprovalAgencyType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CharterApprovalAgencyType]
GO

IF OBJECT_ID(N'[ods].[ClassPeriod]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ClassPeriod]
GO

IF OBJECT_ID(N'[ods].[CohortProgram]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CohortProgram]
GO

IF OBJECT_ID(N'[ods].[CompetencyObjective]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CompetencyObjective]
GO

IF OBJECT_ID(N'[ods].[ContractedStaff]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ContractedStaff]
GO

IF OBJECT_ID(N'[ods].[CountryDescriptor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CountryDescriptor]
GO

IF OBJECT_ID(N'[ods].[CourseCompetencyLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CourseCompetencyLevel]
GO

IF OBJECT_ID(N'[ods].[CourseIdentificationCode]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CourseIdentificationCode]
GO

IF OBJECT_ID(N'[ods].[CourseIdentificationSystemDescriptor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CourseIdentificationSystemDescriptor]
GO

IF OBJECT_ID(N'[ods].[CourseIdentificationSystemType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CourseIdentificationSystemType]
GO

IF OBJECT_ID(N'[ods].[CourseLearningObjective]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CourseLearningObjective]
GO

IF OBJECT_ID(N'[ods].[CourseLearningStandard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CourseLearningStandard]
GO

IF OBJECT_ID(N'[ods].[CourseLevelCharacteristicType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CourseLevelCharacteristicType]
GO

IF OBJECT_ID(N'[ods].[CourseOfferedGradeLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CourseOfferedGradeLevel]
GO

IF OBJECT_ID(N'[ods].[CourseOfferingCurriculumUsed]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CourseOfferingCurriculumUsed]
GO

IF OBJECT_ID(N'[ods].[CourseTranscriptEarnedAdditionalCredits]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[CourseTranscriptEarnedAdditionalCredits]
GO

IF OBJECT_ID(N'[ods].[DisabilityDeterminationSourceType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[DisabilityDeterminationSourceType]
GO

IF OBJECT_ID(N'[ods].[DisciplineActionDisciplineIncident]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[DisciplineActionDisciplineIncident]
GO

IF OBJECT_ID(N'[ods].[DisciplineActionStaff]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[DisciplineActionStaff]
GO

IF OBJECT_ID(N'[ods].[DisciplineIncidentWeapon]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[DisciplineIncidentWeapon]
GO

IF OBJECT_ID(N'[ods].[DisciplineIncident]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[DisciplineIncident]
GO

IF OBJECT_ID(N'[ods].[EducationContentAppropriateGradeLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationContentAppropriateGradeLevel]
GO

IF OBJECT_ID(N'[ods].[EducationContentAppropriateSex]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationContentAppropriateSex]
GO

IF OBJECT_ID(N'[ods].[EducationContentAuthor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationContentAuthor]
GO

IF OBJECT_ID(N'[ods].[EducationContentDerivativeSourceEducationContent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationContentDerivativeSourceEducationContent]
GO

IF OBJECT_ID(N'[ods].[EducationContentDerivativeSourceLearningResourceMetadataURI]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationContentDerivativeSourceLearningResourceMetadataURI]
GO

IF OBJECT_ID(N'[ods].[EducationContentDerivativeSourceURI]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationContentDerivativeSourceURI]
GO

IF OBJECT_ID(N'[ods].[EducationContentLanguage]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationContentLanguage]
GO

IF OBJECT_ID(N'[ods].[EducationContent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationContent]
GO

IF OBJECT_ID(N'[ods].[EducationOrganizationAddress]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationOrganizationAddress]
GO

IF OBJECT_ID(N'[ods].[EducationOrganizationCategory]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationOrganizationCategory]
GO

IF OBJECT_ID(N'[ods].[EducationOrganizationIdentificationCode]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationOrganizationIdentificationCode]
GO

IF OBJECT_ID(N'[ods].[EducationOrganizationIdentificationSystemDescriptor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationOrganizationIdentificationSystemDescriptor]
GO

IF OBJECT_ID(N'[ods].[EducationOrganizationIdentificationSystemType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationOrganizationIdentificationSystemType]
GO

IF OBJECT_ID(N'[ods].[EducationOrganizationInternationalAddress]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationOrganizationInternationalAddress]
GO

IF OBJECT_ID(N'[ods].[EducationOrganizationInterventionPrescriptionAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationOrganizationInterventionPrescriptionAssociation]
GO

IF OBJECT_ID(N'[ods].[EducationOrganizationNetworkAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationOrganizationNetworkAssociation]
GO

IF OBJECT_ID(N'[ods].[EducationOrganizationNetwork]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationOrganizationNetwork]
GO

IF OBJECT_ID(N'[ods].[EducationOrganizationPeerAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationOrganizationPeerAssociation]
GO

IF OBJECT_ID(N'[ods].[EducationOrganization]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationOrganization]
GO

IF OBJECT_ID(N'[ods].[EducationPlanType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationPlanType]
GO

IF OBJECT_ID(N'[ods].[EducationServiceCenter]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[EducationServiceCenter]
GO

IF OBJECT_ID(N'[ods].[FeederSchoolAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[FeederSchoolAssociation]
GO

IF OBJECT_ID(N'[ods].[GradebookEntryLearningObjective]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[GradebookEntryLearningObjective]
GO

IF OBJECT_ID(N'[ods].[GradebookEntryLearningStandard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[GradebookEntryLearningStandard]
GO

IF OBJECT_ID(N'[ods].[GradebookEntry]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[GradebookEntry]
GO

IF OBJECT_ID(N'[ods].[GraduationPlanCreditsByCourseCourse]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[GraduationPlanCreditsByCourseCourse]
GO

IF OBJECT_ID(N'[ods].[GraduationPlanCreditsByCourse]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[GraduationPlanCreditsByCourse]
GO

IF OBJECT_ID(N'[ods].[GraduationPlanCreditsBySubject]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[GraduationPlanCreditsBySubject]
GO

IF OBJECT_ID(N'[ods].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]
GO

IF OBJECT_ID(N'[ods].[GraduationPlanRequiredAssessmentScore]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[GraduationPlanRequiredAssessmentScore]
GO

IF OBJECT_ID(N'[ods].[GraduationPlanRequiredAssessment]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[GraduationPlanRequiredAssessment]
GO

IF OBJECT_ID(N'[ods].[GraduationPlan]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[GraduationPlan]
GO

IF OBJECT_ID(N'[ods].[IntegratedTechnologyStatusType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[IntegratedTechnologyStatusType]
GO

IF OBJECT_ID(N'[ods].[InterventionAppropriateGradeLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionAppropriateGradeLevel]
GO

IF OBJECT_ID(N'[ods].[InterventionAppropriateSex]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionAppropriateSex]
GO

IF OBJECT_ID(N'[ods].[InterventionDiagnosis]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionDiagnosis]
GO

IF OBJECT_ID(N'[ods].[InterventionEducationContent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionEducationContent]
GO

IF OBJECT_ID(N'[ods].[InterventionInterventionPrescription]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionInterventionPrescription]
GO

IF OBJECT_ID(N'[ods].[InterventionLearningResourceMetadataURI]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionLearningResourceMetadataURI]
GO

IF OBJECT_ID(N'[ods].[InterventionMeetingTime]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionMeetingTime]
GO

IF OBJECT_ID(N'[ods].[InterventionPopulationServed]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionPopulationServed]
GO

IF OBJECT_ID(N'[ods].[InterventionPrescriptionAppropriateGradeLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionPrescriptionAppropriateGradeLevel]
GO

IF OBJECT_ID(N'[ods].[InterventionPrescriptionAppropriateSex]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionPrescriptionAppropriateSex]
GO

IF OBJECT_ID(N'[ods].[InterventionPrescriptionDiagnosis]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionPrescriptionDiagnosis]
GO

IF OBJECT_ID(N'[ods].[InterventionPrescriptionEducationContent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionPrescriptionEducationContent]
GO

IF OBJECT_ID(N'[ods].[InterventionPrescriptionLearningResourceMetadataURI]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionPrescriptionLearningResourceMetadataURI]
GO

IF OBJECT_ID(N'[ods].[InterventionPrescriptionPopulationServed]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionPrescriptionPopulationServed]
GO

IF OBJECT_ID(N'[ods].[InterventionPrescriptionURI]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionPrescriptionURI]
GO

IF OBJECT_ID(N'[ods].[InterventionPrescription]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionPrescription]
GO

IF OBJECT_ID(N'[ods].[InterventionStaff]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionStaff]
GO

IF OBJECT_ID(N'[ods].[InterventionStudyAppropriateGradeLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionStudyAppropriateGradeLevel]
GO

IF OBJECT_ID(N'[ods].[InterventionStudyAppropriateSex]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionStudyAppropriateSex]
GO

IF OBJECT_ID(N'[ods].[InterventionStudyEducationContent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionStudyEducationContent]
GO

IF OBJECT_ID(N'[ods].[InterventionStudyInterventionEffectiveness]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionStudyInterventionEffectiveness]
GO

IF OBJECT_ID(N'[ods].[InterventionStudyLearningResourceMetadataURI]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionStudyLearningResourceMetadataURI]
GO

IF OBJECT_ID(N'[ods].[InterventionStudyPopulationServed]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionStudyPopulationServed]
GO

IF OBJECT_ID(N'[ods].[InterventionStudyStateAbbreviation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionStudyStateAbbreviation]
GO

IF OBJECT_ID(N'[ods].[InterventionStudyURI]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionStudyURI]
GO

IF OBJECT_ID(N'[ods].[InterventionStudy]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionStudy]
GO

IF OBJECT_ID(N'[ods].[InterventionURI]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[InterventionURI]
GO

IF OBJECT_ID(N'[ods].[Intervention]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[Intervention]
GO

IF OBJECT_ID(N'[ods].[LanguageType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LanguageType]
GO

IF OBJECT_ID(N'[ods].[LearningObjectiveContentStandardAuthor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LearningObjectiveContentStandardAuthor]
GO

IF OBJECT_ID(N'[ods].[LearningObjectiveContentStandard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LearningObjectiveContentStandard]
GO

IF OBJECT_ID(N'[ods].[LearningObjectiveLearningStandard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LearningObjectiveLearningStandard]
GO

IF OBJECT_ID(N'[ods].[LearningStandardContentStandardAuthor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LearningStandardContentStandardAuthor]
GO

IF OBJECT_ID(N'[ods].[LearningStandardContentStandard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LearningStandardContentStandard]
GO

IF OBJECT_ID(N'[ods].[LearningStandardGradeLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LearningStandardGradeLevel]
GO

IF OBJECT_ID(N'[ods].[LearningStandardIdentificationCode]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LearningStandardIdentificationCode]
GO

IF OBJECT_ID(N'[ods].[LearningStandardPrerequisiteLearningStandard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LearningStandardPrerequisiteLearningStandard]
GO

IF OBJECT_ID(N'[ods].[LeaveEvent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LeaveEvent]
GO

IF OBJECT_ID(N'[ods].[LocalEducationAgencyAccountability]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LocalEducationAgencyAccountability]
GO

IF OBJECT_ID(N'[ods].[LocalEducationAgencyCategoryType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LocalEducationAgencyCategoryType]
GO

IF OBJECT_ID(N'[ods].[LocalEducationAgencyFederalFunds]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LocalEducationAgencyFederalFunds]
GO

IF OBJECT_ID(N'[ods].[LocalEducationAgency]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[LocalEducationAgency]
GO

IF OBJECT_ID(N'[ods].[Location]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[Location]
GO

IF OBJECT_ID(N'[ods].[MeetingDayType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[MeetingDayType]
GO

IF OBJECT_ID(N'[ods].[ObjectiveAssessmentAssessmentItem]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ObjectiveAssessmentAssessmentItem]
GO

IF OBJECT_ID(N'[ods].[ObjectiveAssessmentLearningStandard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ObjectiveAssessmentLearningStandard]
GO

IF OBJECT_ID(N'[ods].[OpenStaffPositionAcademicSubject]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[OpenStaffPositionAcademicSubject]
GO

IF OBJECT_ID(N'[ods].[OpenStaffPositionInstructionalGradeLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[OpenStaffPositionInstructionalGradeLevel]
GO

IF OBJECT_ID(N'[ods].[OpenStaffPosition]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[OpenStaffPosition]
GO

IF OBJECT_ID(N'[ods].[ParentElectronicMail]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ParentElectronicMail]
GO

IF OBJECT_ID(N'[ods].[ParentIdentificationDocument]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ParentIdentificationDocument]
GO

IF OBJECT_ID(N'[ods].[ParentInternationalAddress]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ParentInternationalAddress]
GO

IF OBJECT_ID(N'[ods].[ParentOtherName]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ParentOtherName]
GO

IF OBJECT_ID(N'[ods].[ParentTelephone]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ParentTelephone]
GO

IF OBJECT_ID(N'[ods].[Parent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[Parent]
GO

IF OBJECT_ID(N'[ods].[Payroll]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[Payroll]
GO

IF OBJECT_ID(N'[ods].[PerformanceBaseConversionType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[PerformanceBaseConversionType]
GO

IF OBJECT_ID(N'[ods].[PersonalInformationVerificationType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[PersonalInformationVerificationType]
GO

IF OBJECT_ID(N'[ods].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]
GO

IF OBJECT_ID(N'[ods].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]
GO

IF OBJECT_ID(N'[ods].[PostSecondaryEventPostSecondaryInstitution]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[PostSecondaryEventPostSecondaryInstitution]
GO

IF OBJECT_ID(N'[ods].[PostSecondaryEvent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[PostSecondaryEvent]
GO

IF OBJECT_ID(N'[ods].[ProgramCharacteristic]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ProgramCharacteristic]
GO

IF OBJECT_ID(N'[ods].[ProgramLearningObjective]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ProgramLearningObjective]
GO

IF OBJECT_ID(N'[ods].[ProgramLearningStandard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ProgramLearningStandard]
GO

IF OBJECT_ID(N'[ods].[ProgramService]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ProgramService]
GO

IF OBJECT_ID(N'[ods].[Program]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[Program]
GO

IF OBJECT_ID(N'[ods].[ReportCardGrade]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ReportCardGrade]
GO

IF OBJECT_ID(N'[ods].[ReportCardStudentCompetencyObjective]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ReportCardStudentCompetencyObjective]
GO

IF OBJECT_ID(N'[ods].[ReportCardStudentLearningObjective]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ReportCardStudentLearningObjective]
GO

IF OBJECT_ID(N'[ods].[ReportCard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[ReportCard]
GO

IF OBJECT_ID(N'[ods].[RestraintEventProgram]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[RestraintEventProgram]
GO

IF OBJECT_ID(N'[ods].[RestraintEventReasonType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[RestraintEventReasonType]
GO

IF OBJECT_ID(N'[ods].[RestraintEventReason]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[RestraintEventReason]
GO

IF OBJECT_ID(N'[ods].[RestraintEvent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[RestraintEvent]
GO

IF OBJECT_ID(N'[ods].[SchoolCategory]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[SchoolCategory]
GO

IF OBJECT_ID(N'[ods].[SchoolGradeLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[SchoolGradeLevel]
GO

IF OBJECT_ID(N'[ods].[School]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[School]
GO

IF OBJECT_ID(N'[ods].[SectionAttendanceTakenEvent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[SectionAttendanceTakenEvent]
GO

IF OBJECT_ID(N'[ods].[SectionCharacteristicDescriptor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[SectionCharacteristicDescriptor]
GO

IF OBJECT_ID(N'[ods].[SectionCharacteristicType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[SectionCharacteristicType]
GO

IF OBJECT_ID(N'[ods].[SectionCharacteristic]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[SectionCharacteristic]
GO

IF OBJECT_ID(N'[ods].[SectionProgram]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[SectionProgram]
GO

IF OBJECT_ID(N'[ods].[SessionAcademicWeek]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[SessionAcademicWeek]
GO

IF OBJECT_ID(N'[ods].[StaffAddress]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffAddress]
GO

IF OBJECT_ID(N'[ods].[StaffCohortAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffCohortAssociation]
GO

IF OBJECT_ID(N'[ods].[StaffCredential]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffCredential]
GO

IF OBJECT_ID(N'[ods].[StaffEducationOrganizationAssignmentAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffEducationOrganizationAssignmentAssociation]
GO

IF OBJECT_ID(N'[ods].[StaffEducationOrganizationEmploymentAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffEducationOrganizationEmploymentAssociation]
GO

IF OBJECT_ID(N'[ods].[StaffElectronicMail]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffElectronicMail]
GO

IF OBJECT_ID(N'[ods].[StaffIdentificationDocument]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffIdentificationDocument]
GO

IF OBJECT_ID(N'[ods].[StaffIdentificationSystemDescriptor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffIdentificationSystemDescriptor]
GO

IF OBJECT_ID(N'[ods].[StaffInternationalAddress]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffInternationalAddress]
GO

IF OBJECT_ID(N'[ods].[StaffLanguageUse]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffLanguageUse]
GO

IF OBJECT_ID(N'[ods].[StaffLanguage]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffLanguage]
GO

IF OBJECT_ID(N'[ods].[StaffOtherName]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffOtherName]
GO

IF OBJECT_ID(N'[ods].[StaffProgramAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffProgramAssociation]
GO

IF OBJECT_ID(N'[ods].[StaffRace]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffRace]
GO

IF OBJECT_ID(N'[ods].[StaffSchoolAssociationAcademicSubject]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffSchoolAssociationAcademicSubject]
GO

IF OBJECT_ID(N'[ods].[StaffSchoolAssociationGradeLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffSchoolAssociationGradeLevel]
GO

IF OBJECT_ID(N'[ods].[StaffSchoolAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffSchoolAssociation]
GO

IF OBJECT_ID(N'[ods].[StaffSectionAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffSectionAssociation]
GO

IF OBJECT_ID(N'[ods].[StaffTelephone]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffTelephone]
GO

IF OBJECT_ID(N'[ods].[StaffVisa]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StaffVisa]
GO

IF OBJECT_ID(N'[ods].[StateEducationAgencyAccountability]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StateEducationAgencyAccountability]
GO

IF OBJECT_ID(N'[ods].[StateEducationAgencyFederalFunds]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StateEducationAgencyFederalFunds]
GO

IF OBJECT_ID(N'[ods].[StateEducationAgency]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StateEducationAgency]
GO

IF OBJECT_ID(N'[ods].[StudentAcademicRecordAcademicHonor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentAcademicRecordAcademicHonor]
GO

IF OBJECT_ID(N'[ods].[StudentAcademicRecordClassRanking]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentAcademicRecordClassRanking]
GO

IF OBJECT_ID(N'[ods].[StudentAcademicRecordDiploma]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentAcademicRecordDiploma]
GO

IF OBJECT_ID(N'[ods].[StudentAcademicRecordRecognition]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentAcademicRecordRecognition]
GO

IF OBJECT_ID(N'[ods].[StudentAcademicRecordReportCard]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentAcademicRecordReportCard]
GO

IF OBJECT_ID(N'[ods].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
GO

IF OBJECT_ID(N'[ods].[StudentAssessmentStudentObjectiveAssessmentScoreResult]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentAssessmentStudentObjectiveAssessmentScoreResult]
GO

IF OBJECT_ID(N'[ods].[StudentAssessmentStudentObjectiveAssessment]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentAssessmentStudentObjectiveAssessment]
GO

IF OBJECT_ID(N'[ods].[StudentCTEProgramAssociationCTEProgram]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentCTEProgramAssociationCTEProgram]
GO

IF OBJECT_ID(N'[ods].[StudentCTEProgramAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentCTEProgramAssociation]
GO

IF OBJECT_ID(N'[ods].[StudentCharacteristicDescriptor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentCharacteristicDescriptor]
GO

IF OBJECT_ID(N'[ods].[StudentCharacteristicType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentCharacteristicType]
GO

IF OBJECT_ID(N'[ods].[StudentCohortAssociationSection]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentCohortAssociationSection]
GO

IF OBJECT_ID(N'[ods].[StudentCohortAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentCohortAssociation]
GO

IF OBJECT_ID(N'[ods].[StudentCohortYear]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentCohortYear]
GO

IF OBJECT_ID(N'[ods].[StudentCompetencyObjective]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentCompetencyObjective]
GO

IF OBJECT_ID(N'[ods].[StudentDisability]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentDisability]
GO

IF OBJECT_ID(N'[ods].[StudentDisciplineIncidentAssociationBehavior]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentDisciplineIncidentAssociationBehavior]
GO

IF OBJECT_ID(N'[ods].[StudentDisciplineIncidentAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentDisciplineIncidentAssociation]
GO

IF OBJECT_ID(N'[ods].[StudentEducationOrganizationAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentEducationOrganizationAssociation]
GO

IF OBJECT_ID(N'[ods].[StudentElectronicMail]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentElectronicMail]
GO

IF OBJECT_ID(N'[ods].[StudentGradebookEntry]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentGradebookEntry]
GO

IF OBJECT_ID(N'[ods].[StudentIdentificationDocument]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentIdentificationDocument]
GO

IF OBJECT_ID(N'[ods].[StudentIdentificationSystemDescriptor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentIdentificationSystemDescriptor]
GO

IF OBJECT_ID(N'[ods].[StudentIndicator]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentIndicator]
GO

IF OBJECT_ID(N'[ods].[StudentInternationalAddress]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentInternationalAddress]
GO

IF OBJECT_ID(N'[ods].[StudentInterventionAssociationInterventionEffectiveness]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentInterventionAssociationInterventionEffectiveness]
GO

IF OBJECT_ID(N'[ods].[StudentInterventionAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentInterventionAssociation]
GO

IF OBJECT_ID(N'[ods].[StudentInterventionAttendanceEvent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentInterventionAttendanceEvent]
GO

IF OBJECT_ID(N'[ods].[StudentLearningObjective]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentLearningObjective]
GO

IF OBJECT_ID(N'[ods].[StudentLearningStyle]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentLearningStyle]
GO

IF OBJECT_ID(N'[ods].[StudentMigrantEducationProgramAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentMigrantEducationProgramAssociation]
GO

IF OBJECT_ID(N'[ods].[StudentOtherName]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentOtherName]
GO

IF OBJECT_ID(N'[ods].[StudentParentAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentParentAssociation]
GO

IF OBJECT_ID(N'[ods].[StudentProgramAttendanceEvent]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentProgramAttendanceEvent]
GO

IF OBJECT_ID(N'[ods].[StudentProgramParticipationProgramCharacteristic]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentProgramParticipationProgramCharacteristic]
GO

IF OBJECT_ID(N'[ods].[StudentProgramParticipation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentProgramParticipation]
GO

IF OBJECT_ID(N'[ods].[StudentRace]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentRace]
GO

IF OBJECT_ID(N'[ods].[StudentSchoolAssociationEducationPlan]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentSchoolAssociationEducationPlan]
GO

IF OBJECT_ID(N'[ods].[StudentSpecialEducationProgramAssociationServiceProvider]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentSpecialEducationProgramAssociationServiceProvider]
GO

IF OBJECT_ID(N'[ods].[StudentSpecialEducationProgramAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentSpecialEducationProgramAssociation]
GO

IF OBJECT_ID(N'[ods].[StudentTelephone]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentTelephone]
GO

IF OBJECT_ID(N'[ods].[StudentTitleIPartAProgramAssociation]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentTitleIPartAProgramAssociation]
GO

IF OBJECT_ID(N'[ods].[StudentVisa]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[StudentVisa]
GO

IF OBJECT_ID(N'[ods].[TermDescriptor]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[TermDescriptor]
GO

IF OBJECT_ID(N'[ods].[WeaponType]', 'SN') IS NOT NULL
	DROP SYNONYM [ods].[WeaponType]
GO


