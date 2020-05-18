-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping all default constraints'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AcademicHonorCategoryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AcademicSubjectDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AcademicSubjectType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AccommodationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AccommodationType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Account'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AccountabilityRating'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AccountCode'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AccountCodeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AchievementCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AchievementCategoryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Actual'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AdditionalCreditType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AddressType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AdministrationEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AdministrativeFundingControlDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AdministrativeFundingControlType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Assessment'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentCategoryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentContentStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentFamily'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentFamilyAssessmentPeriod'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentFamilyContentStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentFamilyContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentFamilyIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentFamilyLanguage'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentItemCategoryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentItemLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentItemResultType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentLanguage'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentProgram'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentReportingMethodType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AssessmentSection'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AttendanceEventCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'AttendanceEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'BehaviorDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'BehaviorType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'BellSchedule'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'BellScheduleMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Budget'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CalendarDate'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CalendarDateCalendarEvent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CalendarEventDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CalendarEventType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CareerPathwayType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CharterApprovalAgencyType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CharterStatusType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CitizenshipStatusType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ClassPeriod'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ClassroomPositionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ClassroomPositionType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Cohort'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CohortProgram'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CohortScopeType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CohortType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CohortYearType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CompetencyLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ContentClassType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ContinuationOfServicesReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ContinuationOfServicesReasonType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ContractedStaff'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CostRateType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CountryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Course'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseAttemptResultType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseCompetencyLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseDefinedByType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseGPAApplicabilityType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseLevelCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseLevelCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseOfferedGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseOffering'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseOfferingCurriculumUsed'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseRepeatCodeType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseTranscript'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CourseTranscriptEarnedAdditionalCredits'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CredentialFieldDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CredentialType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CreditType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'CurriculumUsedType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DeliveryMethodType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Descriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DiagnosisDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DiagnosisType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DiplomaLevelType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DiplomaType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisabilityCategoryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisabilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisabilityDeterminationSourceType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisabilityType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisciplineAction'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisciplineActionDiscipline'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisciplineActionDisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisciplineActionLengthDifferenceReasonType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisciplineActionStaff'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisciplineDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisciplineIncidentBehavior'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisciplineIncidentWeapon'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'DisciplineType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EdFiException'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationalEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationContent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationContentAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationContentAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationContentAuthor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationContentDerivativeSourceEducationContent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationContentDerivativeSourceLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationContentDerivativeSourceURI'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationContentLanguage'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganization'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationAddress'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationCategory'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationCategoryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationInstitutionTelephone'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationInterventionPrescriptionAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationNetwork'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationNetworkAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationOrganizationPeerAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationPlanType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EducationServiceCenter'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ElectronicMailType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EmploymentStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EmploymentStatusType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EntryGradeLevelReasonType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EntryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EntryTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'EventCircumstanceType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ExitWithdrawType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ExitWithdrawTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'FeederSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Grade'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GradebookEntryLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GradebookEntryLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GradebookEntryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GradeLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GradeLevelType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GradeType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GradingPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GradingPeriodType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GraduationPlan'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GraduationPlanCreditsByCourse'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GraduationPlanCreditsByCourseCourse'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GraduationPlanCreditsBySubject'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GraduationPlanRequiredAssessment'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GraduationPlanRequiredAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GraduationPlanType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GraduationPlanTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'GunFreeSchoolsActReportingStatusType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'IdentificationDocumentUseType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'IncidentLocationType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InstitutionTelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'IntegratedTechnologyStatusType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InteractivityStyleType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InternetAccessType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Intervention'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionClassType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionEffectivenessRatingType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionInterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionPrescriptionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionPrescriptionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionPrescriptionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionPrescriptionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionPrescriptionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionPrescriptionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionPrescriptionURI'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionStaff'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionStudy'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionStudyAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionStudyAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionStudyEducationContent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionStudyInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionStudyLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionStudyPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionStudyStateAbbreviation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionStudyURI'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'InterventionURI'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LanguageDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LanguageType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LanguageUseType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LearningObjective'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LearningObjectiveContentStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LearningObjectiveContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LearningObjectiveLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LearningStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LearningStandardContentStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LearningStandardContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LearningStandardGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LearningStandardIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LearningStandardPrerequisiteLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LeaveEvent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LeaveEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LevelDescriptorGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LevelOfEducationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LevelOfEducationType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LimitedEnglishProficiencyDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LimitedEnglishProficiencyType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LocalEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LocalEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LocalEducationAgencyCategoryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'LocalEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Location'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'MagnetSpecialProgramEmphasisSchoolType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'MediumOfInstructionType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'MeetingDayType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'MethodCreditEarnedType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'NetworkPurposeType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ObjectiveAssessmentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ObjectiveAssessmentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ObjectiveAssessmentLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ObjectiveAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'OldEthnicityType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'OpenStaffPosition'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'OpenStaffPositionAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'OpenStaffPositionInstructionalGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'OperationalStatusType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'OtherNameType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Parent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ParentAddress'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ParentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ParentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ParentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ParentOtherName'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ParentTelephone'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Payroll'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PerformanceBaseConversionType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PerformanceLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PersonalInformationVerificationType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PopulationServedType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PostingResultType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PostSecondaryEvent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PostSecondaryEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PostSecondaryEventPostSecondaryInstitution'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PostSecondaryInstitutionLevelType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Program'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ProgramAssignmentDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ProgramAssignmentType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ProgramCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ProgramCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ProgramLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ProgramLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ProgramService'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ProgramSponsorType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ProgramType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'PublicationStatusType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'RaceType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ReasonExitedDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ReasonExitedType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ReasonNotTestedType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'RecognitionType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'RelationType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'RepeatIdentifierType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ReportCard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ReportCardGrade'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ReportCardStudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ReportCardStudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ReporterDescriptionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ReporterDescriptionType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ResidencyStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ResidencyStatusType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ResponseIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ResponsibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ResponsibilityType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'RestraintEvent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'RestraintEventProgram'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'RestraintEventReason'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'RestraintEventReasonType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ResultDatatypeType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'RetestIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'School'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SchoolCategory'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SchoolCategoryType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SchoolChoiceImplementStatusType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SchoolFoodServicesEligibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SchoolFoodServicesEligibilityType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SchoolGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SchoolType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SchoolYearType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Section'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SectionAttendanceTakenEvent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SectionCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SectionCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SectionCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SectionProgram'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SeparationReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SeparationReasonType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SeparationType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'ServiceDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Session'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SessionAcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SessionGradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SexType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SpecialEducationSettingDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'SpecialEducationSettingType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Staff'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffAddress'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffClassificationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffClassificationType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffCredential'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffEducationOrganizationAssignmentAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffEducationOrganizationEmploymentAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffLanguage'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffOtherName'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffRace'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffSchoolAssociationAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffSchoolAssociationGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffTelephone'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StaffVisa'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StateAbbreviationType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StateEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StateEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StateEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'Student'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAcademicRecord'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAcademicRecordAcademicHonor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAcademicRecordClassRanking'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAcademicRecordDiploma'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAcademicRecordRecognition'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAcademicRecordReportCard'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAddress'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAssessment'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAssessmentAccommodation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAssessmentStudentObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentCohortAssociationSection'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentCohortYear'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentCTEProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentCTEProgramAssociationCTEProgram'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentDisability'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentDisciplineIncidentAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentDisciplineIncidentAssociationBehavior'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentEducationOrganizationAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentGradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentIndicator'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentInterventionAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentInterventionAssociationInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentInterventionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentLanguage'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentLearningStyle'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentMigrantEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentOtherName'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentParentAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentParticipationCodeType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentProgramAssociationService'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentProgramAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentProgramParticipation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentProgramParticipationProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentRace'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentSchoolAssociationEducationPlan'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentSchoolAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentSectionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentSpecialEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentSpecialEducationProgramAssociationServiceProvider'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentTelephone'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentTitleIPartAProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'StudentVisa'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'TeachingCredentialBasisType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'TeachingCredentialDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'TeachingCredentialType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'TelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'TermDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'TermType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'TitleIPartAParticipantType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'TitleIPartASchoolDesignationType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'VisaType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'WeaponDescriptor'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi', 'WeaponType'
GO

EXEC [migration_tempdata].[sp_DropDefaultConstraints] 'edfi'
GO
