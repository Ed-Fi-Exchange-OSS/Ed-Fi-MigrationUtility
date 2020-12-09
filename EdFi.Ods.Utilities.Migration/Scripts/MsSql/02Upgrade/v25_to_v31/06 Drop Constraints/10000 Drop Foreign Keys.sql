-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping all foreign keys'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AcademicHonorCategoryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AcademicSubjectDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AcademicSubjectType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AccommodationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AccommodationType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Account'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AccountabilityRating'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AccountCode'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AccountCodeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AchievementCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AchievementCategoryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Actual'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AdditionalCreditType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AddressType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AdministrationEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AdministrativeFundingControlDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AdministrativeFundingControlType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Assessment'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentAssessedGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentCategoryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentContentStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentFamily'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentFamilyAssessmentPeriod'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentFamilyContentStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentFamilyContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentFamilyIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentFamilyLanguage'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentItemCategoryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentItemLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentItemResultType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentLanguage'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentProgram'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentReportingMethodType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AssessmentSection'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AttendanceEventCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'AttendanceEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'BehaviorDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'BehaviorType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'BellSchedule'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'BellScheduleMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Budget'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CalendarDate'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CalendarDateCalendarEvent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CalendarEventDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CalendarEventType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CareerPathwayType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CharterApprovalAgencyType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CharterStatusType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CitizenshipStatusType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ClassPeriod'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ClassroomPositionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ClassroomPositionType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Cohort'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CohortProgram'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CohortScopeType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CohortType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CohortYearType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CompetencyLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ContentClassType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ContinuationOfServicesReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ContinuationOfServicesReasonType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ContractedStaff'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CostRateType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CountryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Course'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseAttemptResultType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseCompetencyLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseDefinedByType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseGPAApplicabilityType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseLevelCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseLevelCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseOfferedGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseOffering'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseOfferingCurriculumUsed'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseRepeatCodeType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseTranscript'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CourseTranscriptEarnedAdditionalCredits'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CredentialFieldDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CredentialType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CreditType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'CurriculumUsedType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DeliveryMethodType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Descriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DiagnosisDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DiagnosisType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DiplomaLevelType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DiplomaType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisabilityCategoryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisabilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisabilityDeterminationSourceType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisabilityType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisciplineAction'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisciplineActionDiscipline'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisciplineActionDisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisciplineActionLengthDifferenceReasonType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisciplineActionStaff'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisciplineDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisciplineIncidentBehavior'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisciplineIncidentWeapon'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'DisciplineType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationalEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationContent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationContentAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationContentAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationContentAuthor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationContentDerivativeSourceEducationContent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationContentDerivativeSourceLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationContentDerivativeSourceURI'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationContentLanguage'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganization'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationAddress'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationCategory'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationCategoryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationInstitutionTelephone'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationInterventionPrescriptionAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationNetwork'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationNetworkAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationOrganizationPeerAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationPlanType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EducationServiceCenter'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ElectronicMailType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EmploymentStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EmploymentStatusType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EntryGradeLevelReasonType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EntryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EntryTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'EventCircumstanceType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ExitWithdrawType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ExitWithdrawTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'FeederSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Grade'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GradebookEntryLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GradebookEntryLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GradebookEntryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GradeLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GradeLevelType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GradeType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GradingPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GradingPeriodType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GraduationPlan'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GraduationPlanCreditsByCourse'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GraduationPlanCreditsByCourseCourse'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GraduationPlanCreditsBySubject'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GraduationPlanRequiredAssessment'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GraduationPlanRequiredAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GraduationPlanType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GraduationPlanTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'GunFreeSchoolsActReportingStatusType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'IdentificationDocumentUseType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'IncidentLocationType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InstitutionTelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'IntegratedTechnologyStatusType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InteractivityStyleType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InternetAccessType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Intervention'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionClassType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionEffectivenessRatingType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionInterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionPrescriptionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionPrescriptionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionPrescriptionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionPrescriptionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionPrescriptionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionPrescriptionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionPrescriptionURI'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionStaff'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionStudy'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionStudyAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionStudyAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionStudyEducationContent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionStudyInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionStudyLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionStudyPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionStudyStateAbbreviation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionStudyURI'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'InterventionURI'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LanguageDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LanguageType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LanguageUseType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningObjective'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningObjectiveAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningObjectiveContentStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningObjectiveContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningObjectiveGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningObjectiveLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningStandardContentStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningStandardContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningStandardGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningStandardIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LearningStandardPrerequisiteLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LeaveEvent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LeaveEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LevelDescriptorGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LevelOfEducationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LevelOfEducationType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LimitedEnglishProficiencyDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LimitedEnglishProficiencyType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LocalEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LocalEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LocalEducationAgencyCategoryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'LocalEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Location'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'MagnetSpecialProgramEmphasisSchoolType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'MediumOfInstructionType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'MeetingDayType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'MethodCreditEarnedType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'NetworkPurposeType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ObjectiveAssessmentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ObjectiveAssessmentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ObjectiveAssessmentLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ObjectiveAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'OldEthnicityType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'OpenStaffPosition'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'OpenStaffPositionAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'OpenStaffPositionInstructionalGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'OperationalStatusType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'OtherNameType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Parent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ParentAddress'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ParentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ParentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ParentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ParentOtherName'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ParentTelephone'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Payroll'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PerformanceBaseConversionType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PerformanceLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PersonalInformationVerificationType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PopulationServedType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PostingResultType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PostSecondaryEvent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PostSecondaryEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PostSecondaryEventPostSecondaryInstitution'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PostSecondaryInstitutionLevelType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Program'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ProgramAssignmentDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ProgramAssignmentType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ProgramCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ProgramCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ProgramLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ProgramLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ProgramService'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ProgramSponsorType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ProgramType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'PublicationStatusType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'RaceType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ReasonExitedDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ReasonExitedType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ReasonNotTestedType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'RecognitionType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'RelationType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'RepeatIdentifierType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ReportCard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ReportCardGrade'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ReportCardStudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ReportCardStudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ReporterDescriptionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ReporterDescriptionType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ResidencyStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ResidencyStatusType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ResponseIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ResponsibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ResponsibilityType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'RestraintEvent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'RestraintEventProgram'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'RestraintEventReason'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'RestraintEventReasonType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ResultDatatypeType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'RetestIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'School'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SchoolCategory'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SchoolCategoryType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SchoolChoiceImplementStatusType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SchoolFoodServicesEligibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SchoolFoodServicesEligibilityType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SchoolGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SchoolType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SchoolYearType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Section'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SectionAttendanceTakenEvent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SectionCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SectionCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SectionCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SectionProgram'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SeparationReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SeparationReasonType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SeparationType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'ServiceDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Session'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SessionAcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SessionGradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SexType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SpecialEducationSettingDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'SpecialEducationSettingType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Staff'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffAddress'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffClassificationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffClassificationType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffCredential'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffEducationOrganizationAssignmentAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffEducationOrganizationEmploymentAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffLanguage'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffOtherName'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffRace'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffSchoolAssociationAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffSchoolAssociationGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffTelephone'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StaffVisa'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StateAbbreviationType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StateEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StateEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StateEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'Student'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAcademicRecord'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAcademicRecordAcademicHonor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAcademicRecordClassRanking'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAcademicRecordDiploma'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAcademicRecordRecognition'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAcademicRecordReportCard'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAddress'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAssessment'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAssessmentAccommodation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAssessmentStudentObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentCohortAssociationSection'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentCohortYear'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentCTEProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentCTEProgramAssociationCTEProgram'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentDisability'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentDisciplineIncidentAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentDisciplineIncidentAssociationBehavior'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentEducationOrganizationAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentGradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentIndicator'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentInterventionAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentInterventionAssociationInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentInterventionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentLanguage'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentLearningStyle'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentMigrantEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentOtherName'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentParentAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentParticipationCodeType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentProgramAssociationService'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentProgramAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentProgramParticipation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentProgramParticipationProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentRace'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentSchoolAssociationEducationPlan'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentSchoolAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentSectionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentSpecialEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentSpecialEducationProgramAssociationServiceProvider'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentTelephone'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentTitleIPartAProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'StudentVisa'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'TeachingCredentialBasisType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'TeachingCredentialDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'TeachingCredentialType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'TelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'TermDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'TermType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'TitleIPartAParticipantType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'TitleIPartASchoolDesignationType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'VisaType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'WeaponDescriptor'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi', 'WeaponType'
GO

EXEC [migration_tempdata].[sp_DropForeignKeys] 'edfi'
GO
