-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping all primary keys'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AcademicHonorCategoryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AcademicSubjectDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AcademicSubjectType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AccommodationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AccommodationType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Account'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AccountabilityRating'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AccountCode'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AccountCodeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AchievementCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AchievementCategoryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Actual'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AdditionalCreditType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AddressType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AdministrationEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AdministrativeFundingControlDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AdministrativeFundingControlType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Assessment'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentCategoryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentContentStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentFamily'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentFamilyAssessmentPeriod'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentFamilyContentStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentFamilyContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentFamilyIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentFamilyLanguage'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentItemCategoryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentItemLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentItemResultType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentLanguage'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentProgram'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentReportingMethodType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AssessmentSection'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AttendanceEventCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'AttendanceEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'BehaviorDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'BehaviorType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'BellSchedule'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'BellScheduleMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Budget'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CalendarDate'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CalendarDateCalendarEvent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CalendarEventDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CalendarEventType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CareerPathwayType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CharterApprovalAgencyType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CharterStatusType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CitizenshipStatusType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ClassPeriod'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ClassroomPositionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ClassroomPositionType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Cohort'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CohortProgram'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CohortScopeType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CohortType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CohortYearType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CompetencyLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ContentClassType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ContinuationOfServicesReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ContinuationOfServicesReasonType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ContractedStaff'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CostRateType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CountryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Course'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseAttemptResultType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseCompetencyLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseDefinedByType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseGPAApplicabilityType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseLevelCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseLevelCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseOfferedGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseOffering'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseOfferingCurriculumUsed'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseRepeatCodeType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseTranscript'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CourseTranscriptEarnedAdditionalCredits'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CredentialFieldDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CredentialType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CreditType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'CurriculumUsedType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DeliveryMethodType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Descriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DiagnosisDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DiagnosisType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DiplomaLevelType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DiplomaType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisabilityCategoryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisabilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisabilityDeterminationSourceType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisabilityType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisciplineAction'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisciplineActionDiscipline'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisciplineActionDisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisciplineActionLengthDifferenceReasonType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisciplineActionStaff'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisciplineDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisciplineIncidentBehavior'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisciplineIncidentWeapon'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'DisciplineType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EdFiException'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationalEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationContent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationContentAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationContentAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationContentAuthor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationContentDerivativeSourceEducationContent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationContentDerivativeSourceLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationContentDerivativeSourceURI'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationContentLanguage'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganization'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationAddress'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationCategory'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationCategoryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationInstitutionTelephone'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationInterventionPrescriptionAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationNetwork'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationNetworkAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationOrganizationPeerAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationPlanType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EducationServiceCenter'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ElectronicMailType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EmploymentStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EmploymentStatusType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EntryGradeLevelReasonType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EntryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EntryTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'EventCircumstanceType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ExitWithdrawType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ExitWithdrawTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'FeederSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Grade'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GradebookEntryLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GradebookEntryLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GradebookEntryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GradeLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GradeLevelType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GradeType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GradingPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GradingPeriodType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GraduationPlan'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GraduationPlanCreditsByCourse'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GraduationPlanCreditsByCourseCourse'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GraduationPlanCreditsBySubject'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GraduationPlanRequiredAssessment'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GraduationPlanRequiredAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GraduationPlanType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GraduationPlanTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'GunFreeSchoolsActReportingStatusType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'IdentificationDocumentUseType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'IncidentLocationType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InstitutionTelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'IntegratedTechnologyStatusType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InteractivityStyleType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InternetAccessType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Intervention'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionClassType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionEffectivenessRatingType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionInterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionPrescriptionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionPrescriptionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionPrescriptionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionPrescriptionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionPrescriptionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionPrescriptionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionPrescriptionURI'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionStaff'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionStudy'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionStudyAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionStudyAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionStudyEducationContent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionStudyInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionStudyLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionStudyPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionStudyStateAbbreviation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionStudyURI'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'InterventionURI'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LanguageDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LanguageType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LanguageUseType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LearningObjective'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LearningObjectiveContentStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LearningObjectiveContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LearningObjectiveLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LearningStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LearningStandardContentStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LearningStandardContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LearningStandardGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LearningStandardIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LearningStandardPrerequisiteLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LeaveEvent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LeaveEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LevelDescriptorGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LevelOfEducationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LevelOfEducationType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LimitedEnglishProficiencyDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LimitedEnglishProficiencyType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LocalEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LocalEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LocalEducationAgencyCategoryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'LocalEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Location'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'MagnetSpecialProgramEmphasisSchoolType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'MediumOfInstructionType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'MeetingDayType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'MethodCreditEarnedType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'NetworkPurposeType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ObjectiveAssessmentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ObjectiveAssessmentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ObjectiveAssessmentLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ObjectiveAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'OldEthnicityType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'OpenStaffPosition'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'OpenStaffPositionAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'OpenStaffPositionInstructionalGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'OperationalStatusType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'OtherNameType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Parent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ParentAddress'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ParentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ParentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ParentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ParentOtherName'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ParentTelephone'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Payroll'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PerformanceBaseConversionType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PerformanceLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PersonalInformationVerificationType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PopulationServedType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PostingResultType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PostSecondaryEvent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PostSecondaryEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PostSecondaryEventPostSecondaryInstitution'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PostSecondaryInstitutionLevelType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Program'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ProgramAssignmentDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ProgramAssignmentType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ProgramCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ProgramCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ProgramLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ProgramLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ProgramService'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ProgramSponsorType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ProgramType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'PublicationStatusType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'RaceType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ReasonExitedDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ReasonExitedType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ReasonNotTestedType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'RecognitionType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'RelationType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'RepeatIdentifierType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ReportCard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ReportCardGrade'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ReportCardStudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ReportCardStudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ReporterDescriptionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ReporterDescriptionType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ResidencyStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ResidencyStatusType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ResponseIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ResponsibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ResponsibilityType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'RestraintEvent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'RestraintEventProgram'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'RestraintEventReason'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'RestraintEventReasonType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ResultDatatypeType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'RetestIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'School'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SchoolCategory'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SchoolCategoryType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SchoolChoiceImplementStatusType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SchoolFoodServicesEligibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SchoolFoodServicesEligibilityType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SchoolGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SchoolType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SchoolYearType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Section'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SectionAttendanceTakenEvent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SectionCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SectionCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SectionCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SectionProgram'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SeparationReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SeparationReasonType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SeparationType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'ServiceDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Session'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SessionAcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SessionGradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SexType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SpecialEducationSettingDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'SpecialEducationSettingType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Staff'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffAddress'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffClassificationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffClassificationType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffCredential'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffEducationOrganizationAssignmentAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffEducationOrganizationEmploymentAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffLanguage'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffOtherName'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffRace'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffSchoolAssociationAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffSchoolAssociationGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffTelephone'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StaffVisa'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StateAbbreviationType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StateEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StateEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StateEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'Student'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAcademicRecord'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAcademicRecordAcademicHonor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAcademicRecordClassRanking'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAcademicRecordDiploma'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAcademicRecordRecognition'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAcademicRecordReportCard'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAddress'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAssessment'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAssessmentAccommodation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAssessmentStudentObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentCohortAssociationSection'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentCohortYear'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentCTEProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentCTEProgramAssociationCTEProgram'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentDisability'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentDisciplineIncidentAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentDisciplineIncidentAssociationBehavior'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentEducationOrganizationAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentGradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentIndicator'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentInterventionAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentInterventionAssociationInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentInterventionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentLanguage'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentLearningStyle'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentMigrantEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentOtherName'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentParentAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentParticipationCodeType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentProgramAssociationService'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentProgramAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentProgramParticipation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentProgramParticipationProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentRace'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentSchoolAssociationEducationPlan'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentSchoolAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentSectionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentSpecialEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentSpecialEducationProgramAssociationServiceProvider'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentTelephone'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentTitleIPartAProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'StudentVisa'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'TeachingCredentialBasisType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'TeachingCredentialDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'TeachingCredentialType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'TelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'TermDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'TermType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'TitleIPartAParticipantType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'TitleIPartASchoolDesignationType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'VisaType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'WeaponDescriptor'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi', 'WeaponType'
GO

EXEC [migration_tempdata].[sp_DropPrimaryKeys] 'edfi'
GO
