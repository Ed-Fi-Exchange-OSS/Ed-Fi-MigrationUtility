-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping all indexes'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AcademicHonorCategoryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AcademicSubjectDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AcademicSubjectType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AccommodationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AccommodationType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Account'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AccountabilityRating'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AccountCode'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AccountCodeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AchievementCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AchievementCategoryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Actual'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AdditionalCreditType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AddressType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AdministrationEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AdministrativeFundingControlDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AdministrativeFundingControlType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Assessment'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentAssessedGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentCategoryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentContentStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentFamily'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentFamilyAssessmentPeriod'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentFamilyContentStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentFamilyContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentFamilyIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentFamilyLanguage'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentItemCategoryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentItemLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentItemResultType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentLanguage'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentProgram'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentReportingMethodType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AssessmentSection'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AttendanceEventCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'AttendanceEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'BehaviorDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'BehaviorType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'BellSchedule'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'BellScheduleMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Budget'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CalendarDate'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CalendarDateCalendarEvent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CalendarEventDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CalendarEventType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CareerPathwayType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CharterApprovalAgencyType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CharterStatusType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CitizenshipStatusType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ClassPeriod'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ClassroomPositionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ClassroomPositionType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Cohort'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CohortProgram'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CohortScopeType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CohortType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CohortYearType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CompetencyLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ContentClassType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ContinuationOfServicesReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ContinuationOfServicesReasonType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ContractedStaff'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CostRateType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CountryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Course'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseAttemptResultType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseCompetencyLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseDefinedByType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseGPAApplicabilityType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseLevelCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseLevelCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseOfferedGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseOffering'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseOfferingCurriculumUsed'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseRepeatCodeType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseTranscript'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CourseTranscriptEarnedAdditionalCredits'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CredentialFieldDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CredentialType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CreditType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'CurriculumUsedType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DeliveryMethodType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Descriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DiagnosisDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DiagnosisType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DiplomaLevelType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DiplomaType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisabilityCategoryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisabilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisabilityDeterminationSourceType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisabilityType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisciplineAction'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisciplineActionDiscipline'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisciplineActionDisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisciplineActionLengthDifferenceReasonType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisciplineActionStaff'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisciplineDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisciplineIncidentBehavior'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisciplineIncidentWeapon'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'DisciplineType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationalEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationContent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationContentAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationContentAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationContentAuthor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationContentDerivativeSourceEducationContent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationContentDerivativeSourceLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationContentDerivativeSourceURI'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationContentLanguage'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganization'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationAddress'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationCategory'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationCategoryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationInstitutionTelephone'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationInterventionPrescriptionAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationNetwork'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationNetworkAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationOrganizationPeerAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationPlanType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EducationServiceCenter'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ElectronicMailType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EmploymentStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EmploymentStatusType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EntryGradeLevelReasonType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EntryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EntryTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'EventCircumstanceType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ExitWithdrawType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ExitWithdrawTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'FeederSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Grade'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GradebookEntryLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GradebookEntryLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GradebookEntryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GradeLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GradeLevelType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GradeType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GradingPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GradingPeriodType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GraduationPlan'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GraduationPlanCreditsByCourse'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GraduationPlanCreditsByCourseCourse'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GraduationPlanCreditsBySubject'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GraduationPlanRequiredAssessment'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GraduationPlanRequiredAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GraduationPlanType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GraduationPlanTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'GunFreeSchoolsActReportingStatusType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'IdentificationDocumentUseType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'IncidentLocationType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InstitutionTelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'IntegratedTechnologyStatusType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InteractivityStyleType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InternetAccessType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Intervention'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionClassType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionEffectivenessRatingType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionInterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionPrescriptionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionPrescriptionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionPrescriptionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionPrescriptionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionPrescriptionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionPrescriptionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionPrescriptionURI'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionStaff'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionStudy'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionStudyAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionStudyAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionStudyEducationContent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionStudyInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionStudyLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionStudyPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionStudyStateAbbreviation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionStudyURI'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'InterventionURI'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LanguageDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LanguageType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LanguageUseType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningObjective'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningObjectiveAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningObjectiveContentStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningObjectiveContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningObjectiveGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningObjectiveLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningStandardContentStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningStandardContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningStandardGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningStandardIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LearningStandardPrerequisiteLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LeaveEvent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LeaveEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LevelDescriptorGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LevelOfEducationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LevelOfEducationType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LimitedEnglishProficiencyDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LimitedEnglishProficiencyType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LocalEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LocalEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LocalEducationAgencyCategoryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'LocalEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Location'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'MagnetSpecialProgramEmphasisSchoolType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'MediumOfInstructionType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'MeetingDayType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'MethodCreditEarnedType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'NetworkPurposeType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ObjectiveAssessmentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ObjectiveAssessmentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ObjectiveAssessmentLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ObjectiveAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'OldEthnicityType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'OpenStaffPosition'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'OpenStaffPositionAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'OpenStaffPositionInstructionalGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'OperationalStatusType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'OtherNameType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Parent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ParentAddress'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ParentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ParentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ParentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ParentOtherName'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ParentTelephone'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Payroll'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PerformanceBaseConversionType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PerformanceLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PersonalInformationVerificationType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PopulationServedType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PostingResultType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PostSecondaryEvent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PostSecondaryEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PostSecondaryEventPostSecondaryInstitution'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PostSecondaryInstitutionLevelType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Program'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ProgramAssignmentDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ProgramAssignmentType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ProgramCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ProgramCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ProgramLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ProgramLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ProgramService'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ProgramSponsorType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ProgramType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'PublicationStatusType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'RaceType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ReasonExitedDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ReasonExitedType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ReasonNotTestedType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'RecognitionType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'RelationType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'RepeatIdentifierType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ReportCard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ReportCardGrade'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ReportCardStudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ReportCardStudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ReporterDescriptionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ReporterDescriptionType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ResidencyStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ResidencyStatusType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ResponseIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ResponsibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ResponsibilityType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'RestraintEvent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'RestraintEventProgram'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'RestraintEventReason'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'RestraintEventReasonType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ResultDatatypeType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'RetestIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'School'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SchoolCategory'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SchoolCategoryType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SchoolChoiceImplementStatusType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SchoolFoodServicesEligibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SchoolFoodServicesEligibilityType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SchoolGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SchoolType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SchoolYearType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Section'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SectionAttendanceTakenEvent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SectionCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SectionCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SectionCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SectionProgram'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SeparationReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SeparationReasonType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SeparationType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'ServiceDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Session'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SessionAcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SessionGradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SexType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SpecialEducationSettingDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'SpecialEducationSettingType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Staff'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffAddress'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffClassificationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffClassificationType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffCredential'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffEducationOrganizationAssignmentAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffEducationOrganizationEmploymentAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffLanguage'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffOtherName'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffRace'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffSchoolAssociationAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffSchoolAssociationGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffTelephone'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StaffVisa'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StateAbbreviationType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StateEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StateEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StateEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'Student'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAcademicRecord'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAcademicRecordAcademicHonor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAcademicRecordClassRanking'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAcademicRecordDiploma'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAcademicRecordRecognition'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAcademicRecordReportCard'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAddress'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAssessment'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAssessmentAccommodation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAssessmentStudentObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentCohortAssociationSection'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentCohortYear'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentCTEProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentCTEProgramAssociationCTEProgram'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentDisability'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentDisciplineIncidentAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentDisciplineIncidentAssociationBehavior'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentEducationOrganizationAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentGradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentIndicator'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentInterventionAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentInterventionAssociationInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentInterventionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentLanguage'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentLearningStyle'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentMigrantEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentOtherName'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentParentAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentParticipationCodeType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentProgramAssociationService'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentProgramAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentProgramParticipation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentProgramParticipationProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentRace'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentSchoolAssociationEducationPlan'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentSchoolAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentSectionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentSpecialEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentSpecialEducationProgramAssociationServiceProvider'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentTelephone'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentTitleIPartAProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'StudentVisa'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'TeachingCredentialBasisType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'TeachingCredentialDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'TeachingCredentialType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'TelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'TermDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'TermType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'TitleIPartAParticipantType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'TitleIPartASchoolDesignationType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'VisaType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'WeaponDescriptor'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi', 'WeaponType'
GO

EXEC [migration_tempdata].[sp_DropIndexes] 'edfi'
GO