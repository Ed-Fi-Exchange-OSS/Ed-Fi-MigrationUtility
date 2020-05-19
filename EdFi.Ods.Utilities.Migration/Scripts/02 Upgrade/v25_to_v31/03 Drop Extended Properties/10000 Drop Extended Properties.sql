-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping edfi extended properties'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AcademicHonorCategoryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AcademicSubjectDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AcademicSubjectType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AccommodationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AccommodationType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Account'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AccountabilityRating'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AccountCode'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AccountCodeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AchievementCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AchievementCategoryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Actual'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AdditionalCreditType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AddressType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AdministrationEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AdministrativeFundingControlDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AdministrativeFundingControlType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Assessment'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentAssessedGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentCategoryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentContentStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentFamily'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentFamilyAssessmentPeriod'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentFamilyContentStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentFamilyContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentFamilyIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentFamilyLanguage'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentItemCategoryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentItemLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentItemResultType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentLanguage'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentProgram'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentReportingMethodType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AssessmentSection'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AttendanceEventCategoryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'AttendanceEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'BehaviorDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'BehaviorType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'BellSchedule'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'BellScheduleMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Budget'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CalendarDate'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CalendarDateCalendarEvent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CalendarEventDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CalendarEventType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CareerPathwayType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CharterApprovalAgencyType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CharterStatusType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CitizenshipStatusType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ClassPeriod'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ClassroomPositionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ClassroomPositionType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Cohort'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CohortProgram'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CohortScopeType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CohortType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CohortYearType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CompetencyLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ContentClassType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ContinuationOfServicesReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ContinuationOfServicesReasonType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ContractedStaff'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CostRateType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CountryDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Course'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseAttemptResultType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseCompetencyLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseDefinedByType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseGPAApplicabilityType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseLevelCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseLevelCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseOfferedGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseOffering'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseOfferingCurriculumUsed'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseRepeatCodeType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseTranscript'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CourseTranscriptEarnedAdditionalCredits'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CredentialFieldDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CredentialType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CreditType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'CurriculumUsedType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DeliveryMethodType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Descriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DiagnosisDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DiagnosisType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DiplomaLevelType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DiplomaType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisabilityCategoryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisabilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisabilityDeterminationSourceType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisabilityType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisciplineAction'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisciplineActionDiscipline'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisciplineActionDisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisciplineActionLengthDifferenceReasonType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisciplineActionStaff'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisciplineDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisciplineIncident'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisciplineIncidentBehavior'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisciplineIncidentWeapon'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'DisciplineType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationalEnvironmentType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationContent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationContentAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationContentAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationContentAuthor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationContentDerivativeSourceEducationContent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationContentDerivativeSourceLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationContentDerivativeSourceURI'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationContentLanguage'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganization'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationAddress'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationCategory'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationCategoryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationInstitutionTelephone'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationInterventionPrescriptionAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationNetwork'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationNetworkAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationOrganizationPeerAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationPlanType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EducationServiceCenter'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ElectronicMailType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EmploymentStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EmploymentStatusType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EntryGradeLevelReasonType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EntryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EntryTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'EventCircumstanceType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ExitWithdrawType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ExitWithdrawTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'FeederSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Grade'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GradebookEntryLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GradebookEntryLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GradebookEntryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GradeLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GradeLevelType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GradeType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GradingPeriodDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GradingPeriodType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GraduationPlan'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GraduationPlanCreditsByCourse'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GraduationPlanCreditsByCourseCourse'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GraduationPlanCreditsBySubject'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GraduationPlanRequiredAssessment'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GraduationPlanRequiredAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GraduationPlanType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GraduationPlanTypeDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'GunFreeSchoolsActReportingStatusType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'IdentificationDocumentUseType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'IncidentLocationType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InstitutionTelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'IntegratedTechnologyStatusType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InteractivityStyleType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InternetAccessType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Intervention'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionClassType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionEffectivenessRatingType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionInterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionMeetingTime'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionPrescription'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionPrescriptionAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionPrescriptionAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionPrescriptionDiagnosis'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionPrescriptionEducationContent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionPrescriptionLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionPrescriptionPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionPrescriptionURI'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionStaff'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionStudy'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionStudyAppropriateGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionStudyAppropriateSex'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionStudyEducationContent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionStudyInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionStudyLearningResourceMetadataURI'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionStudyPopulationServed'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionStudyStateAbbreviation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionStudyURI'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'InterventionURI'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LanguageDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LanguageType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LanguageUseType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningObjective'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningObjectiveAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningObjectiveContentStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningObjectiveContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningObjectiveGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningObjectiveLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningStandardContentStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningStandardContentStandardAuthor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningStandardGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningStandardIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LearningStandardPrerequisiteLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LeaveEvent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LeaveEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LevelDescriptorGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LevelOfEducationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LevelOfEducationType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LimitedEnglishProficiencyDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LimitedEnglishProficiencyType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LocalEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LocalEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LocalEducationAgencyCategoryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'LocalEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Location'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'MagnetSpecialProgramEmphasisSchoolType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'MediumOfInstructionType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'MeetingDayType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'MethodCreditEarnedType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'NetworkPurposeType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ObjectiveAssessmentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ObjectiveAssessmentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ObjectiveAssessmentLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ObjectiveAssessmentScore'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'OldEthnicityType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'OpenStaffPosition'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'OpenStaffPositionAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'OpenStaffPositionInstructionalGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'OperationalStatusType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'OtherNameType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Parent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ParentAddress'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ParentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ParentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ParentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ParentOtherName'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ParentTelephone'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Payroll'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PerformanceBaseConversionType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PerformanceLevelDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PersonalInformationVerificationType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PopulationServedType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PostingResultType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PostSecondaryEvent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PostSecondaryEventCategoryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PostSecondaryEventPostSecondaryInstitution'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PostSecondaryInstitutionLevelType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Program'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ProgramAssignmentDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ProgramAssignmentType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ProgramCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ProgramCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ProgramLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ProgramLearningStandard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ProgramService'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ProgramSponsorType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ProgramType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'PublicationStatusType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'RaceType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ReasonExitedDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ReasonExitedType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ReasonNotTestedType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'RecognitionType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'RelationType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'RepeatIdentifierType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ReportCard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ReportCardGrade'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ReportCardStudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ReportCardStudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ReporterDescriptionDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ReporterDescriptionType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ResidencyStatusDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ResidencyStatusType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ResponseIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ResponsibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ResponsibilityType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'RestraintEvent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'RestraintEventProgram'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'RestraintEventReason'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'RestraintEventReasonType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ResultDatatypeType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'RetestIndicatorType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'School'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SchoolCategory'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SchoolCategoryType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SchoolChoiceImplementStatusType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SchoolFoodServicesEligibilityDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SchoolFoodServicesEligibilityType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SchoolGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SchoolType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SchoolYearType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Section'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SectionAttendanceTakenEvent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SectionCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SectionCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SectionCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SectionProgram'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SeparationReasonDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SeparationReasonType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SeparationType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'ServiceDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Session'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SessionAcademicWeek'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SessionGradingPeriod'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SexType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SpecialEducationSettingDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'SpecialEducationSettingType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Staff'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffAddress'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffClassificationDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffClassificationType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffCredential'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffEducationOrganizationAssignmentAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffEducationOrganizationEmploymentAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffLanguage'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffOtherName'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffRace'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffSchoolAssociationAcademicSubject'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffSchoolAssociationGradeLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffTelephone'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StaffVisa'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StateAbbreviationType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StateEducationAgency'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StateEducationAgencyAccountability'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StateEducationAgencyFederalFunds'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'Student'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAcademicRecord'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAcademicRecordAcademicHonor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAcademicRecordClassRanking'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAcademicRecordDiploma'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAcademicRecordRecognition'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAcademicRecordReportCard'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAddress'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAssessment'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAssessmentAccommodation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAssessmentItem'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAssessmentStudentObjectiveAssessment'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentAssessmentStudentObjectiveAssessmentScoreResult'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentCharacteristicDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentCharacteristicType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentCohortAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentCohortAssociationSection'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentCohortYear'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentCompetencyObjective'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentCTEProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentCTEProgramAssociationCTEProgram'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentDisability'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentDisciplineIncidentAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentDisciplineIncidentAssociationBehavior'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentEducationOrganizationAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentElectronicMail'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentGradebookEntry'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentIdentificationCode'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentIdentificationDocument'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentIdentificationSystemDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentIdentificationSystemType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentIndicator'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentInternationalAddress'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentInterventionAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentInterventionAssociationInterventionEffectiveness'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentInterventionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentLanguage'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentLanguageUse'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentLearningObjective'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentLearningStyle'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentMigrantEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentOtherName'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentParentAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentParticipationCodeType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentProgramAssociationService'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentProgramAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentProgramParticipation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentProgramParticipationProgramCharacteristic'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentRace'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentSchoolAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentSchoolAssociationEducationPlan'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentSchoolAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentSectionAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentSectionAttendanceEvent'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentSpecialEducationProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentSpecialEducationProgramAssociationServiceProvider'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentTelephone'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentTitleIPartAProgramAssociation'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'StudentVisa'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'TeachingCredentialBasisType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'TeachingCredentialDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'TeachingCredentialType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'TelephoneNumberType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'TermDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'TermType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'TitleIPartAParticipantType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'TitleIPartASchoolDesignationType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'VisaType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'WeaponDescriptor'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi', 'WeaponType'
GO

EXEC [migration_tempdata].[sp_DropExtendedProperties] 'edfi'
GO