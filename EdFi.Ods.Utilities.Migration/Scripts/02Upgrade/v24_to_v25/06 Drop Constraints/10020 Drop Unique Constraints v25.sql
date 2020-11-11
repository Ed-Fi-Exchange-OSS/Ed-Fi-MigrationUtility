-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping all unique constraints'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AcademicHonorCategoryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AcademicSubjectDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AcademicSubjectType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AccommodationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AccommodationType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Account'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AccountabilityRating'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AccountCode'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AccountCodeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AchievementCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AchievementCategoryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Actual'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AdditionalCreditType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AddressType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AdministrationEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AdministrativeFundingControlDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AdministrativeFundingControlType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Assessment'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentCategoryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentContentStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentFamily'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentFamilyAssessmentPeriod'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentFamilyContentStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentFamilyContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentFamilyIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentFamilyLanguage'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentItemCategoryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentItemLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentItemResultType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentLanguage'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentProgram'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentReportingMethodType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AssessmentSection'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AttendanceEventCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'AttendanceEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'BehaviorDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'BehaviorType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'BellSchedule'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'BellScheduleMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Budget'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CalendarDate'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CalendarDateCalendarEvent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CalendarEventDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CalendarEventType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CareerPathwayType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CharterApprovalAgencyType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CharterStatusType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CitizenshipStatusType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ClassPeriod'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ClassroomPositionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ClassroomPositionType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Cohort'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CohortProgram'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CohortScopeType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CohortType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CohortYearType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CompetencyLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ContentClassType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ContinuationOfServicesReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ContinuationOfServicesReasonType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ContractedStaff'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CostRateType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CountryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Course'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseAttemptResultType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseCompetencyLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseDefinedByType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseGPAApplicabilityType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseLevelCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseLevelCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseOfferedGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseOffering'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseOfferingCurriculumUsed'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseRepeatCodeType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseTranscript'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CourseTranscriptEarnedAdditionalCredits'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CredentialFieldDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CredentialType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CreditType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'CurriculumUsedType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DeliveryMethodType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Descriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DiagnosisDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DiagnosisType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DiplomaLevelType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DiplomaType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisabilityCategoryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisabilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisabilityDeterminationSourceType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisabilityType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisciplineAction'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisciplineActionDiscipline'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisciplineActionDisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisciplineActionLengthDifferenceReasonType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisciplineActionStaff'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisciplineDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisciplineIncidentBehavior'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisciplineIncidentWeapon'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'DisciplineType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EdFiException'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationalEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationContent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationContentAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationContentAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationContentAuthor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationContentDerivativeSourceEducationContent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationContentDerivativeSourceLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationContentDerivativeSourceURI'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationContentLanguage'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganization'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationAddress'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationCategory'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationCategoryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationInstitutionTelephone'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationInterventionPrescriptionAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationNetwork'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationNetworkAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationOrganizationPeerAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationPlanType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EducationServiceCenter'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ElectronicMailType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EmploymentStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EmploymentStatusType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EntryGradeLevelReasonType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EntryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EntryTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'EventCircumstanceType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ExitWithdrawType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ExitWithdrawTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'FeederSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Grade'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GradebookEntryLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GradebookEntryLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GradebookEntryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GradeLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GradeLevelType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GradeType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GradingPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GradingPeriodType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GraduationPlan'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GraduationPlanCreditsByCourse'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GraduationPlanCreditsByCourseCourse'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GraduationPlanCreditsBySubject'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GraduationPlanRequiredAssessment'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GraduationPlanRequiredAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GraduationPlanType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GraduationPlanTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'GunFreeSchoolsActReportingStatusType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'IdentificationDocumentUseType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'IncidentLocationType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InstitutionTelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'IntegratedTechnologyStatusType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InteractivityStyleType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InternetAccessType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Intervention'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionClassType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionEffectivenessRatingType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionInterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionPrescriptionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionPrescriptionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionPrescriptionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionPrescriptionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionPrescriptionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionPrescriptionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionPrescriptionURI'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionStaff'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionStudy'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionStudyAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionStudyAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionStudyEducationContent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionStudyInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionStudyLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionStudyPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionStudyStateAbbreviation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionStudyURI'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'InterventionURI'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LanguageDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LanguageType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LanguageUseType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LearningObjective'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LearningObjectiveContentStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LearningObjectiveContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LearningObjectiveLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LearningStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LearningStandardContentStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LearningStandardContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LearningStandardGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LearningStandardIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LearningStandardPrerequisiteLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LeaveEvent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LeaveEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LevelDescriptorGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LevelOfEducationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LevelOfEducationType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LimitedEnglishProficiencyDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LimitedEnglishProficiencyType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LocalEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LocalEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LocalEducationAgencyCategoryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'LocalEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Location'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'MagnetSpecialProgramEmphasisSchoolType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'MediumOfInstructionType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'MeetingDayType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'MethodCreditEarnedType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'NetworkPurposeType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ObjectiveAssessmentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ObjectiveAssessmentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ObjectiveAssessmentLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ObjectiveAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'OldEthnicityType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'OpenStaffPosition'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'OpenStaffPositionAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'OpenStaffPositionInstructionalGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'OperationalStatusType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'OtherNameType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Parent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ParentAddress'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ParentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ParentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ParentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ParentOtherName'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ParentTelephone'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Payroll'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PerformanceBaseConversionType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PerformanceLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PersonalInformationVerificationType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PopulationServedType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PostingResultType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PostSecondaryEvent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PostSecondaryEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PostSecondaryEventPostSecondaryInstitution'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PostSecondaryInstitutionLevelType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Program'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ProgramAssignmentDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ProgramAssignmentType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ProgramCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ProgramCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ProgramLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ProgramLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ProgramService'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ProgramSponsorType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ProgramType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'PublicationStatusType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'RaceType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ReasonExitedDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ReasonExitedType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ReasonNotTestedType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'RecognitionType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'RelationType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'RepeatIdentifierType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ReportCard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ReportCardGrade'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ReportCardStudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ReportCardStudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ReporterDescriptionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ReporterDescriptionType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ResidencyStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ResidencyStatusType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ResponseIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ResponsibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ResponsibilityType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'RestraintEvent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'RestraintEventProgram'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'RestraintEventReason'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'RestraintEventReasonType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ResultDatatypeType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'RetestIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'School'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SchoolCategory'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SchoolCategoryType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SchoolChoiceImplementStatusType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SchoolFoodServicesEligibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SchoolFoodServicesEligibilityType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SchoolGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SchoolType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SchoolYearType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Section'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SectionAttendanceTakenEvent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SectionCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SectionCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SectionCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SectionProgram'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SeparationReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SeparationReasonType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SeparationType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'ServiceDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Session'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SessionAcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SessionGradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SexType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SpecialEducationSettingDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'SpecialEducationSettingType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Staff'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffAddress'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffClassificationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffClassificationType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffCredential'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffEducationOrganizationAssignmentAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffEducationOrganizationEmploymentAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffLanguage'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffOtherName'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffRace'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffSchoolAssociationAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffSchoolAssociationGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffTelephone'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StaffVisa'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StateAbbreviationType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StateEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StateEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StateEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'Student'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAcademicRecord'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAcademicRecordAcademicHonor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAcademicRecordClassRanking'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAcademicRecordDiploma'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAcademicRecordRecognition'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAcademicRecordReportCard'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAddress'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAssessment'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAssessmentAccommodation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAssessmentStudentObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentCohortAssociationSection'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentCohortYear'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentCTEProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentCTEProgramAssociationCTEProgram'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentDisability'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentDisciplineIncidentAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentDisciplineIncidentAssociationBehavior'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentEducationOrganizationAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentGradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentIndicator'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentInterventionAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentInterventionAssociationInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentInterventionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentLanguage'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentLearningStyle'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentMigrantEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentOtherName'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentParentAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentParticipationCodeType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentProgramAssociationService'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentProgramAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentProgramParticipation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentProgramParticipationProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentRace'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentSchoolAssociationEducationPlan'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentSchoolAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentSectionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentSpecialEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentSpecialEducationProgramAssociationServiceProvider'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentTelephone'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentTitleIPartAProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'StudentVisa'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'TeachingCredentialBasisType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'TeachingCredentialDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'TeachingCredentialType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'TelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'TermDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'TermType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'TitleIPartAParticipantType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'TitleIPartASchoolDesignationType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'VisaType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'WeaponDescriptor'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi', 'WeaponType'
GO

EXEC [migration_tempdata].[sp_DropUniqueConstraints] 'edfi'
GO
