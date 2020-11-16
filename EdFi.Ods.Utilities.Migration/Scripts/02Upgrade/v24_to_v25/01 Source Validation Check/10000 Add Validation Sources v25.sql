-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Computing verification codes for data source [edfi].[AcademicHonorCategoryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AcademicHonorCategoryType', 'AcademicHonorCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AcademicHonorCategoryType'
GO

PRINT N'Computing verification codes for data source [edfi].[AcademicSubjectDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AcademicSubjectDescriptor', 'AcademicSubjectDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AcademicSubjectDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[AcademicSubjectType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AcademicSubjectType', 'AcademicSubjectTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AcademicSubjectType'
GO

PRINT N'Computing verification codes for data source [edfi].[AcademicWeek]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AcademicWeek', 'WeekIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AcademicWeek', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AcademicWeek'
GO

PRINT N'Computing verification codes for data source [edfi].[AccommodationDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccommodationDescriptor', 'AccommodationDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AccommodationDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[AccommodationType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccommodationType', 'AccommodationTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AccommodationType'
GO

PRINT N'Computing verification codes for data source [edfi].[Account]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Account', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Account', 'AccountNumber'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Account', 'FiscalYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Account'
GO

PRINT N'Computing verification codes for data source [edfi].[AccountabilityRating]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountabilityRating', 'RatingTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountabilityRating', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountabilityRating', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AccountabilityRating'
GO

PRINT N'Computing verification codes for data source [edfi].[AccountCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountCode', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountCode', 'AccountNumber'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountCode', 'FiscalYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountCode', 'AccountCodeDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AccountCode'
GO

PRINT N'Computing verification codes for data source [edfi].[AccountCodeDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountCodeDescriptor', 'AccountCodeDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AccountCodeDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[AchievementCategoryDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AchievementCategoryDescriptor', 'AchievementCategoryDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AchievementCategoryDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[AchievementCategoryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AchievementCategoryType', 'AchievementCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AchievementCategoryType'
GO

PRINT N'Computing verification codes for data source [edfi].[Actual]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Actual', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Actual', 'AccountNumber'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Actual', 'FiscalYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Actual', 'AsOfDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Actual'
GO

PRINT N'Computing verification codes for data source [edfi].[AdditionalCreditType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AdditionalCreditType', 'AdditionalCreditTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AdditionalCreditType'
GO

PRINT N'Computing verification codes for data source [edfi].[AddressType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AddressType', 'AddressTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AddressType'
GO

PRINT N'Computing verification codes for data source [edfi].[AdministrationEnvironmentType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AdministrationEnvironmentType', 'AdministrationEnvironmentTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AdministrationEnvironmentType'
GO

PRINT N'Computing verification codes for data source [edfi].[AdministrativeFundingControlDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AdministrativeFundingControlDescriptor', 'AdministrativeFundingControlDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AdministrativeFundingControlDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[AdministrativeFundingControlType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AdministrativeFundingControlType', 'AdministrativeFundingControlTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AdministrativeFundingControlType'
GO

PRINT N'Computing verification codes for data source [edfi].[Assessment]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Assessment', 'AssessmentTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Assessment', 'Version'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Assessment'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentCategoryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentCategoryType', 'AssessmentCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentCategoryType'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentContentStandardAuthor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentContentStandardAuthor', 'Author'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentContentStandardAuthor'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentFamily]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentFamily', 'AssessmentFamilyTitle'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentFamily'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentFamilyAssessmentPeriod]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentFamilyAssessmentPeriod', 'AssessmentFamilyTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentFamilyAssessmentPeriod', 'AssessmentPeriodDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentFamilyAssessmentPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentFamilyContentStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentFamilyContentStandard', 'AssessmentFamilyTitle'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentFamilyContentStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentFamilyContentStandardAuthor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentFamilyContentStandardAuthor', 'AssessmentFamilyTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentFamilyContentStandardAuthor', 'Author'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentFamilyContentStandardAuthor'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentFamilyIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentFamilyIdentificationCode', 'AssessmentFamilyTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentFamilyIdentificationCode', 'AssessmentIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentFamilyIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentFamilyLanguage]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentFamilyLanguage', 'AssessmentFamilyTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentFamilyLanguage', 'LanguageDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentFamilyLanguage'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentIdentificationCode', 'AssessmentIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentIdentificationSystemDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentIdentificationSystemDescriptor', 'AssessmentIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentIdentificationSystemDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentIdentificationSystemType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentIdentificationSystemType', 'AssessmentIdentificationSystemTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentIdentificationSystemType'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentItem]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentItem', 'IdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentItem'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentItemCategoryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentItemCategoryType', 'AssessmentItemCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentItemCategoryType'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentItemLearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentItemLearningStandard', 'IdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentItemLearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentItemLearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentItemResultType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentItemResultType', 'AssessmentItemResultTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentItemResultType'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentLanguage]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentLanguage', 'LanguageDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentLanguage'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentPerformanceLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentPerformanceLevel', 'AssessmentReportingMethodTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentPerformanceLevel', 'PerformanceLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentPerformanceLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentPeriodDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentPeriodDescriptor', 'AssessmentPeriodDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentPeriodDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentProgram]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentProgram', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentProgram', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentProgram', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentProgram'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentScore]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentScore', 'AssessmentReportingMethodTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentScore'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentSection]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentSection', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentSection', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentSection', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentSection', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentSection', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentSection', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentSection', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentSection', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentSection'
GO

PRINT N'Computing verification codes for data source [edfi].[AttendanceEventCategoryDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AttendanceEventCategoryDescriptor', 'AttendanceEventCategoryDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AttendanceEventCategoryDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[AttendanceEventCategoryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AttendanceEventCategoryType', 'AttendanceEventCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AttendanceEventCategoryType'
GO

PRINT N'Computing verification codes for data source [edfi].[BehaviorDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BehaviorDescriptor', 'BehaviorDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.BehaviorDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[BehaviorType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BehaviorType', 'BehaviorTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.BehaviorType'
GO

PRINT N'Computing verification codes for data source [edfi].[BellSchedule]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BellSchedule', 'BellScheduleName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BellSchedule', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BellSchedule', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BellSchedule', 'Date'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.BellSchedule'
GO

PRINT N'Computing verification codes for data source [edfi].[BellScheduleMeetingTime]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BellScheduleMeetingTime', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BellScheduleMeetingTime', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BellScheduleMeetingTime', 'Date'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BellScheduleMeetingTime', 'BellScheduleName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BellScheduleMeetingTime', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.BellScheduleMeetingTime', 'StartTime'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.BellScheduleMeetingTime'
GO

PRINT N'Computing verification codes for data source [edfi].[Budget]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Budget', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Budget', 'AccountNumber'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Budget', 'FiscalYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Budget', 'AsOfDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Budget'
GO

PRINT N'Computing verification codes for data source [edfi].[CalendarDate]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarDate', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarDate', 'Date'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CalendarDate'
GO

PRINT N'Computing verification codes for data source [edfi].[CalendarDateCalendarEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarDateCalendarEvent', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarDateCalendarEvent', 'Date'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarDateCalendarEvent', 'CalendarEventDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CalendarDateCalendarEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[CalendarEventDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarEventDescriptor', 'CalendarEventDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CalendarEventDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[CalendarEventType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarEventType', 'CalendarEventTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CalendarEventType'
GO

PRINT N'Computing verification codes for data source [edfi].[CareerPathwayType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CareerPathwayType', 'CareerPathwayTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CareerPathwayType'
GO

PRINT N'Computing verification codes for data source [edfi].[CharterApprovalAgencyType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CharterApprovalAgencyType', 'CharterApprovalAgencyTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CharterApprovalAgencyType'
GO

PRINT N'Computing verification codes for data source [edfi].[CharterStatusType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CharterStatusType', 'CharterStatusTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CharterStatusType'
GO

PRINT N'Computing verification codes for data source [edfi].[CitizenshipStatusType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CitizenshipStatusType', 'CitizenshipStatusTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CitizenshipStatusType'
GO

PRINT N'Computing verification codes for data source [edfi].[ClassPeriod]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ClassPeriod', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ClassPeriod', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ClassPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[ClassroomPositionDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ClassroomPositionDescriptor', 'ClassroomPositionDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ClassroomPositionDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[ClassroomPositionType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ClassroomPositionType', 'ClassroomPositionTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ClassroomPositionType'
GO

PRINT N'Computing verification codes for data source [edfi].[Cohort]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Cohort', 'CohortIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Cohort', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Cohort'
GO

PRINT N'Computing verification codes for data source [edfi].[CohortProgram]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortProgram', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortProgram', 'CohortIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortProgram', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortProgram', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortProgram', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CohortProgram'
GO

PRINT N'Computing verification codes for data source [edfi].[CohortScopeType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortScopeType', 'CohortScopeTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CohortScopeType'
GO

PRINT N'Computing verification codes for data source [edfi].[CohortType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortType', 'CohortTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CohortType'
GO

PRINT N'Computing verification codes for data source [edfi].[CohortYearType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortYearType', 'CohortYearTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CohortYearType'
GO

PRINT N'Computing verification codes for data source [edfi].[CompetencyLevelDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CompetencyLevelDescriptor', 'CompetencyLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CompetencyLevelDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[CompetencyObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CompetencyObjective', 'Objective'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CompetencyObjective', 'ObjectiveGradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CompetencyObjective', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CompetencyObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[ContentClassType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContentClassType', 'ContentClassTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ContentClassType'
GO

PRINT N'Computing verification codes for data source [edfi].[ContinuationOfServicesReasonDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContinuationOfServicesReasonDescriptor', 'ContinuationOfServicesReasonDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ContinuationOfServicesReasonDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[ContinuationOfServicesReasonType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContinuationOfServicesReasonType', 'ContinuationOfServicesReasonTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ContinuationOfServicesReasonType'
GO

PRINT N'Computing verification codes for data source [edfi].[ContractedStaff]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContractedStaff', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContractedStaff', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContractedStaff', 'AccountNumber'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContractedStaff', 'FiscalYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContractedStaff', 'AsOfDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ContractedStaff'
GO

PRINT N'Computing verification codes for data source [edfi].[CostRateType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CostRateType', 'CostRateTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CostRateType'
GO

PRINT N'Computing verification codes for data source [edfi].[CountryDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CountryDescriptor', 'CountryDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CountryDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[Course]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Course', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Course', 'CourseCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Course'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseAttemptResultType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseAttemptResultType', 'CourseAttemptResultTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseAttemptResultType'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseCompetencyLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseCompetencyLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseCompetencyLevel', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseCompetencyLevel', 'CompetencyLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseCompetencyLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseDefinedByType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseDefinedByType', 'CourseDefinedByTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseDefinedByType'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseGPAApplicabilityType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseGPAApplicabilityType', 'CourseGPAApplicabilityTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseGPAApplicabilityType'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseIdentificationCode', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseIdentificationCode', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseIdentificationCode', 'CourseIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseIdentificationSystemDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseIdentificationSystemDescriptor', 'CourseIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseIdentificationSystemDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseIdentificationSystemType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseIdentificationSystemType', 'CourseIdentificationSystemTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseIdentificationSystemType'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseLearningObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLearningObjective', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLearningObjective', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseLearningObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseLearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLearningStandard', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLearningStandard', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseLearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseLevelCharacteristic]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLevelCharacteristic', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLevelCharacteristic', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLevelCharacteristic', 'CourseLevelCharacteristicTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseLevelCharacteristic'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseLevelCharacteristicType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLevelCharacteristicType', 'CourseLevelCharacteristicTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseLevelCharacteristicType'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseOfferedGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferedGradeLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferedGradeLevel', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferedGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseOfferedGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseOffering]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOffering', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOffering', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOffering', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOffering', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseOffering'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseOfferingCurriculumUsed]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferingCurriculumUsed', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferingCurriculumUsed', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferingCurriculumUsed', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferingCurriculumUsed', 'CurriculumUsedTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferingCurriculumUsed', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseOfferingCurriculumUsed'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseRepeatCodeType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseRepeatCodeType', 'CourseRepeatCodeTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseRepeatCodeType'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseTranscript]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'CourseAttemptResultTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'CourseEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'CourseCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseTranscript'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'AdditionalCreditTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'CourseAttemptResultTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'CourseEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'CourseCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseTranscriptEarnedAdditionalCredits'
GO

PRINT N'Computing verification codes for data source [edfi].[CredentialFieldDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CredentialFieldDescriptor', 'CredentialFieldDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CredentialFieldDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[CredentialType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CredentialType', 'CredentialTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CredentialType'
GO

PRINT N'Computing verification codes for data source [edfi].[CreditType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CreditType', 'CreditTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CreditType'
GO

PRINT N'Computing verification codes for data source [edfi].[CurriculumUsedType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CurriculumUsedType', 'CurriculumUsedTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CurriculumUsedType'
GO

PRINT N'Computing verification codes for data source [edfi].[DeliveryMethodType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DeliveryMethodType', 'DeliveryMethodTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DeliveryMethodType'
GO

PRINT N'Computing verification codes for data source [edfi].[Descriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Descriptor', 'DescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Descriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[DiagnosisDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DiagnosisDescriptor', 'DiagnosisDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DiagnosisDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[DiagnosisType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DiagnosisType', 'DiagnosisTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DiagnosisType'
GO

PRINT N'Computing verification codes for data source [edfi].[DiplomaLevelType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DiplomaLevelType', 'DiplomaLevelTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DiplomaLevelType'
GO

PRINT N'Computing verification codes for data source [edfi].[DiplomaType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DiplomaType', 'DiplomaTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DiplomaType'
GO

PRINT N'Computing verification codes for data source [edfi].[DisabilityCategoryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisabilityCategoryType', 'DisabilityCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisabilityCategoryType'
GO

PRINT N'Computing verification codes for data source [edfi].[DisabilityDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisabilityDescriptor', 'DisabilityDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisabilityDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[DisabilityDeterminationSourceType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisabilityDeterminationSourceType', 'DisabilityDeterminationSourceTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisabilityDeterminationSourceType'
GO

PRINT N'Computing verification codes for data source [edfi].[DisabilityType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisabilityType', 'DisabilityTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisabilityType'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineAction]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineAction', 'DisciplineActionIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineAction', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineAction', 'DisciplineDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineAction'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineActionDiscipline]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDiscipline', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDiscipline', 'DisciplineActionIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDiscipline', 'DisciplineDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDiscipline', 'DisciplineDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineActionDiscipline'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineActionDisciplineIncident]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDisciplineIncident', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDisciplineIncident', 'DisciplineActionIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDisciplineIncident', 'DisciplineDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDisciplineIncident', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDisciplineIncident', 'IncidentIdentifier'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineActionDisciplineIncident'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineActionLengthDifferenceReasonType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionLengthDifferenceReasonType', 'DisciplineActionLengthDifferenceReasonTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineActionLengthDifferenceReasonType'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineActionStaff]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionStaff', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionStaff', 'DisciplineActionIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionStaff', 'DisciplineDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionStaff', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineActionStaff'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineDescriptor', 'DisciplineDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineIncident]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncident', 'IncidentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncident', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineIncident'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineIncidentBehavior]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentBehavior', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentBehavior', 'IncidentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentBehavior', 'BehaviorDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineIncidentBehavior'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineIncidentWeapon]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentWeapon', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentWeapon', 'IncidentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentWeapon', 'WeaponDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineIncidentWeapon'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineType', 'DisciplineTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineType'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationalEnvironmentType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationalEnvironmentType', 'EducationalEnvironmentTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationalEnvironmentType'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationContent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContent', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationContent'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationContentAppropriateGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentAppropriateGradeLevel', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentAppropriateGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationContentAppropriateGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationContentAppropriateSex]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentAppropriateSex', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentAppropriateSex', 'SexTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationContentAppropriateSex'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationContentAuthor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentAuthor', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentAuthor', 'Author'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationContentAuthor'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationContentDerivativeSourceEducationContent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentDerivativeSourceEducationContent', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentDerivativeSourceEducationContent', 'DerivativeSourceContentIdentifier'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationContentDerivativeSourceEducationContent'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentDerivativeSourceLearningResourceMetadataURI', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentDerivativeSourceLearningResourceMetadataURI', 'LearningResourceMetadataURI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationContentDerivativeSourceLearningResourceMetadataURI'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationContentDerivativeSourceURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentDerivativeSourceURI', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentDerivativeSourceURI', 'URI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationContentDerivativeSourceURI'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationContentLanguage]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentLanguage', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentLanguage', 'LanguageDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationContentLanguage'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganization]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganization', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganization'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationAddress', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationAddress', 'AddressTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationAddress'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationCategory]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationCategory', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationCategory', 'EducationOrganizationCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationCategory'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationCategoryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationCategoryType', 'EducationOrganizationCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationCategoryType'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationIdentificationCode', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationIdentificationCode', 'EducationOrganizationIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationIdentificationSystemDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationIdentificationSystemDescriptor', 'EducationOrganizationIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationIdentificationSystemDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationIdentificationSystemType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationIdentificationSystemType', 'EducationOrganizationIdentificationSystemTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationIdentificationSystemType'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationInstitutionTelephone]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInstitutionTelephone', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInstitutionTelephone', 'InstitutionTelephoneNumberTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationInstitutionTelephone'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationInternationalAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInternationalAddress', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInternationalAddress', 'AddressTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationInternationalAddress'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationInterventionPrescriptionAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInterventionPrescriptionAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInterventionPrescriptionAssociation', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInterventionPrescriptionAssociation', 'InterventionPrescriptionEducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationInterventionPrescriptionAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationNetwork]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationNetwork', 'EducationOrganizationNetworkId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationNetwork'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationNetworkAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationNetworkAssociation', 'MemberEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationNetworkAssociation', 'EducationOrganizationNetworkId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationNetworkAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationPeerAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationPeerAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationPeerAssociation', 'PeerEducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationPeerAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationPlanType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationPlanType', 'EducationPlanTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationPlanType'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationServiceCenter]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationServiceCenter', 'EducationServiceCenterId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationServiceCenter'
GO

PRINT N'Computing verification codes for data source [edfi].[ElectronicMailType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ElectronicMailType', 'ElectronicMailTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ElectronicMailType'
GO

PRINT N'Computing verification codes for data source [edfi].[EmploymentStatusDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EmploymentStatusDescriptor', 'EmploymentStatusDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EmploymentStatusDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[EmploymentStatusType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EmploymentStatusType', 'EmploymentStatusTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EmploymentStatusType'
GO

PRINT N'Computing verification codes for data source [edfi].[EntryGradeLevelReasonType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EntryGradeLevelReasonType', 'EntryGradeLevelReasonTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EntryGradeLevelReasonType'
GO

PRINT N'Computing verification codes for data source [edfi].[EntryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EntryType', 'EntryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EntryType'
GO

PRINT N'Computing verification codes for data source [edfi].[EntryTypeDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EntryTypeDescriptor', 'EntryTypeDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EntryTypeDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[EventCircumstanceType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EventCircumstanceType', 'EventCircumstanceTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EventCircumstanceType'
GO

PRINT N'Computing verification codes for data source [edfi].[ExitWithdrawType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ExitWithdrawType', 'ExitWithdrawTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ExitWithdrawType'
GO

PRINT N'Computing verification codes for data source [edfi].[ExitWithdrawTypeDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ExitWithdrawTypeDescriptor', 'ExitWithdrawTypeDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ExitWithdrawTypeDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[FeederSchoolAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.FeederSchoolAssociation', 'FeederSchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.FeederSchoolAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.FeederSchoolAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.FeederSchoolAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[Grade]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'GradingPeriodBeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'GradeTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Grade'
GO

PRINT N'Computing verification codes for data source [edfi].[GradebookEntry]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'GradebookEntryTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'DateAssigned'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradebookEntry'
GO

PRINT N'Computing verification codes for data source [edfi].[GradebookEntryLearningObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'DateAssigned'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'GradebookEntryTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradebookEntryLearningObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[GradebookEntryLearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'GradebookEntryTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'DateAssigned'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradebookEntryLearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[GradebookEntryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryType', 'GradebookEntryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradebookEntryType'
GO

PRINT N'Computing verification codes for data source [edfi].[GradeLevelDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradeLevelDescriptor', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradeLevelDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[GradeLevelType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradeLevelType', 'GradeLevelTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradeLevelType'
GO

PRINT N'Computing verification codes for data source [edfi].[GradeType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradeType', 'GradeTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradeType'
GO

PRINT N'Computing verification codes for data source [edfi].[GradingPeriod]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradingPeriod', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradingPeriod', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradingPeriod', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradingPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[GradingPeriodDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradingPeriodDescriptor', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradingPeriodDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[GradingPeriodType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradingPeriodType', 'GradingPeriodTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradingPeriodType'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlan]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlan', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlan', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlan', 'GraduationSchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlan'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanCreditsByCourse]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourse', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourse', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourse', 'GraduationSchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourse', 'CourseSetName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanCreditsByCourse'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanCreditsByCourseCourse]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'GraduationSchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'CourseSetName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'CourseEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'CourseCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanCreditsByCourseCourse'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanCreditsBySubject]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsBySubject', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsBySubject', 'AcademicSubjectDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsBySubject', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsBySubject', 'GraduationSchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanCreditsBySubject'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanRequiredAssessment]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessment', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessment', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessment', 'GraduationSchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanRequiredAssessment'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'GraduationSchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanRequiredAssessmentAssessmentPerformanceLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanRequiredAssessmentScore]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentScore', 'AssessmentReportingMethodTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentScore', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentScore', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentScore', 'GraduationSchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanRequiredAssessmentScore'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanType', 'GraduationPlanTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanType'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanTypeDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanTypeDescriptor', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanTypeDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[GunFreeSchoolsActReportingStatusType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GunFreeSchoolsActReportingStatusType', 'GunFreeSchoolsActReportingStatusTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GunFreeSchoolsActReportingStatusType'
GO

PRINT N'Computing verification codes for data source [edfi].[IdentificationDocumentUseType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.IdentificationDocumentUseType', 'IdentificationDocumentUseTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.IdentificationDocumentUseType'
GO

PRINT N'Computing verification codes for data source [edfi].[IncidentLocationType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.IncidentLocationType', 'IncidentLocationTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.IncidentLocationType'
GO

PRINT N'Computing verification codes for data source [edfi].[InstitutionTelephoneNumberType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InstitutionTelephoneNumberType', 'InstitutionTelephoneNumberTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InstitutionTelephoneNumberType'
GO

PRINT N'Computing verification codes for data source [edfi].[IntegratedTechnologyStatusType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.IntegratedTechnologyStatusType', 'IntegratedTechnologyStatusTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.IntegratedTechnologyStatusType'
GO

PRINT N'Computing verification codes for data source [edfi].[InteractivityStyleType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InteractivityStyleType', 'InteractivityStyleTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InteractivityStyleType'
GO

PRINT N'Computing verification codes for data source [edfi].[InternetAccessType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InternetAccessType', 'InternetAccessTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InternetAccessType'
GO

PRINT N'Computing verification codes for data source [edfi].[Intervention]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Intervention', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Intervention', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Intervention'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionAppropriateGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionAppropriateGradeLevel', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionAppropriateGradeLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionAppropriateGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionAppropriateGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionAppropriateSex]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionAppropriateSex', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionAppropriateSex', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionAppropriateSex', 'SexTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionAppropriateSex'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionClassType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionClassType', 'InterventionClassTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionClassType'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionDiagnosis]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionDiagnosis', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionDiagnosis', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionDiagnosis', 'DiagnosisDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionDiagnosis'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionEducationContent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionEducationContent', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionEducationContent', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionEducationContent', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionEducationContent'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionEffectivenessRatingType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionEffectivenessRatingType', 'InterventionEffectivenessRatingTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionEffectivenessRatingType'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionInterventionPrescription]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionInterventionPrescription', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionInterventionPrescription', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionInterventionPrescription', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionInterventionPrescription', 'InterventionPrescriptionEducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionInterventionPrescription'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionLearningResourceMetadataURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionLearningResourceMetadataURI', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionLearningResourceMetadataURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionLearningResourceMetadataURI', 'LearningResourceMetadataURI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionLearningResourceMetadataURI'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionMeetingTime]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionMeetingTime', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionMeetingTime', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionMeetingTime', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionMeetingTime', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionMeetingTime'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPopulationServed]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPopulationServed', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPopulationServed', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPopulationServed', 'PopulationServedTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPopulationServed'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescription]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescription', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescription', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescription'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionAppropriateGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionAppropriateGradeLevel', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionAppropriateGradeLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionAppropriateGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionAppropriateGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionAppropriateSex]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionAppropriateSex', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionAppropriateSex', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionAppropriateSex', 'SexTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionAppropriateSex'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionDiagnosis]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionDiagnosis', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionDiagnosis', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionDiagnosis', 'DiagnosisDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionDiagnosis'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionEducationContent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionEducationContent', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionEducationContent', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionEducationContent', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionEducationContent'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionLearningResourceMetadataURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionLearningResourceMetadataURI', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionLearningResourceMetadataURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionLearningResourceMetadataURI', 'LearningResourceMetadataURI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionLearningResourceMetadataURI'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionPopulationServed]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionPopulationServed', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionPopulationServed', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionPopulationServed', 'PopulationServedTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionPopulationServed'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionURI', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionURI', 'URI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionURI'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStaff]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStaff', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStaff', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStaff', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStaff'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudy]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudy', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudy', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudy'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyAppropriateGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyAppropriateGradeLevel', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyAppropriateGradeLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyAppropriateGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyAppropriateGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyAppropriateSex]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyAppropriateSex', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyAppropriateSex', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyAppropriateSex', 'SexTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyAppropriateSex'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyEducationContent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyEducationContent', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyEducationContent', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyEducationContent', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyEducationContent'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyInterventionEffectiveness]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyInterventionEffectiveness', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyInterventionEffectiveness', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyInterventionEffectiveness', 'DiagnosisDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyInterventionEffectiveness', 'PopulationServedTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyInterventionEffectiveness', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyInterventionEffectiveness'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyLearningResourceMetadataURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyLearningResourceMetadataURI', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyLearningResourceMetadataURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyLearningResourceMetadataURI', 'LearningResourceMetadataURI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyLearningResourceMetadataURI'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyPopulationServed]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyPopulationServed', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyPopulationServed', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyPopulationServed', 'PopulationServedTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyPopulationServed'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyStateAbbreviation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyStateAbbreviation', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyStateAbbreviation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyStateAbbreviation', 'StateAbbreviationTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyStateAbbreviation'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyURI', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyURI', 'URI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyURI'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionURI', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionURI', 'URI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionURI'
GO

PRINT N'Computing verification codes for data source [edfi].[LanguageDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LanguageDescriptor', 'LanguageDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LanguageDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[LanguageType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LanguageType', 'LanguageTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LanguageType'
GO

PRINT N'Computing verification codes for data source [edfi].[LanguageUseType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LanguageUseType', 'LanguageUseTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LanguageUseType'
GO

PRINT N'Computing verification codes for data source [edfi].[LearningObjectiveContentStandardAuthor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningObjectiveContentStandardAuthor', 'Author'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LearningObjectiveContentStandardAuthor'
GO

PRINT N'Computing verification codes for data source [edfi].[LearningObjectiveLearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningObjectiveLearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LearningObjectiveLearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[LearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[LearningStandardContentStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardContentStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LearningStandardContentStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[LearningStandardContentStandardAuthor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardContentStandardAuthor', 'LearningStandardId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardContentStandardAuthor', 'Author'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LearningStandardContentStandardAuthor'
GO

PRINT N'Computing verification codes for data source [edfi].[LearningStandardGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardGradeLevel', 'LearningStandardId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LearningStandardGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[LearningStandardIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardIdentificationCode', 'LearningStandardId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardIdentificationCode', 'IdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardIdentificationCode', 'ContentStandardName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LearningStandardIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[LearningStandardPrerequisiteLearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardPrerequisiteLearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardPrerequisiteLearningStandard', 'PrerequisiteLearningStandardId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LearningStandardPrerequisiteLearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[LeaveEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LeaveEvent', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LeaveEvent', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LeaveEvent', 'LeaveEventCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LeaveEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[LeaveEventCategoryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LeaveEventCategoryType', 'LeaveEventCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LeaveEventCategoryType'
GO

PRINT N'Computing verification codes for data source [edfi].[LevelDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LevelDescriptor', 'LevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LevelDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[LevelDescriptorGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LevelDescriptorGradeLevel', 'LevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LevelDescriptorGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LevelDescriptorGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[LevelOfEducationDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LevelOfEducationDescriptor', 'LevelOfEducationDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LevelOfEducationDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[LevelOfEducationType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LevelOfEducationType', 'LevelOfEducationTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LevelOfEducationType'
GO

PRINT N'Computing verification codes for data source [edfi].[LimitedEnglishProficiencyDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LimitedEnglishProficiencyDescriptor', 'LimitedEnglishProficiencyDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LimitedEnglishProficiencyDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[LimitedEnglishProficiencyType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LimitedEnglishProficiencyType', 'LimitedEnglishProficiencyTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LimitedEnglishProficiencyType'
GO

PRINT N'Computing verification codes for data source [edfi].[LocalEducationAgency]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LocalEducationAgency', 'LocalEducationAgencyId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LocalEducationAgency'
GO

PRINT N'Computing verification codes for data source [edfi].[LocalEducationAgencyAccountability]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LocalEducationAgencyAccountability', 'LocalEducationAgencyId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LocalEducationAgencyAccountability', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LocalEducationAgencyAccountability'
GO

PRINT N'Computing verification codes for data source [edfi].[LocalEducationAgencyCategoryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LocalEducationAgencyCategoryType', 'LocalEducationAgencyCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LocalEducationAgencyCategoryType'
GO

PRINT N'Computing verification codes for data source [edfi].[LocalEducationAgencyFederalFunds]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LocalEducationAgencyFederalFunds', 'LocalEducationAgencyId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LocalEducationAgencyFederalFunds', 'FiscalYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LocalEducationAgencyFederalFunds'
GO

PRINT N'Computing verification codes for data source [edfi].[Location]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Location', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Location', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Location'
GO

PRINT N'Computing verification codes for data source [edfi].[MagnetSpecialProgramEmphasisSchoolType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.MagnetSpecialProgramEmphasisSchoolType', 'MagnetSpecialProgramEmphasisSchoolTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.MagnetSpecialProgramEmphasisSchoolType'
GO

PRINT N'Computing verification codes for data source [edfi].[MediumOfInstructionType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.MediumOfInstructionType', 'MediumOfInstructionTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.MediumOfInstructionType'
GO

PRINT N'Computing verification codes for data source [edfi].[MeetingDayType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.MeetingDayType', 'MeetingDayTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.MeetingDayType'
GO

PRINT N'Computing verification codes for data source [edfi].[MethodCreditEarnedType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.MethodCreditEarnedType', 'MethodCreditEarnedTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.MethodCreditEarnedType'
GO

PRINT N'Computing verification codes for data source [edfi].[NetworkPurposeType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.NetworkPurposeType', 'NetworkPurposeTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.NetworkPurposeType'
GO

PRINT N'Computing verification codes for data source [edfi].[ObjectiveAssessment]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ObjectiveAssessment', 'IdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ObjectiveAssessment'
GO

PRINT N'Computing verification codes for data source [edfi].[ObjectiveAssessmentAssessmentItem]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ObjectiveAssessmentAssessmentItem', 'AssessmentItemIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ObjectiveAssessmentAssessmentItem', 'IdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ObjectiveAssessmentAssessmentItem'
GO

PRINT N'Computing verification codes for data source [edfi].[ObjectiveAssessmentLearningObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ObjectiveAssessmentLearningObjective', 'IdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ObjectiveAssessmentLearningObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[ObjectiveAssessmentLearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ObjectiveAssessmentLearningStandard', 'IdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ObjectiveAssessmentLearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ObjectiveAssessmentLearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ObjectiveAssessmentPerformanceLevel', 'AssessmentReportingMethodTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ObjectiveAssessmentPerformanceLevel', 'IdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ObjectiveAssessmentPerformanceLevel', 'PerformanceLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ObjectiveAssessmentPerformanceLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[OldEthnicityType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OldEthnicityType', 'OldEthnicityTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.OldEthnicityType'
GO

PRINT N'Computing verification codes for data source [edfi].[OpenStaffPosition]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPosition', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPosition', 'EmploymentStatusDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPosition', 'StaffClassificationDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPosition', 'RequisitionNumber'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPosition', 'DatePosted'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.OpenStaffPosition'
GO

PRINT N'Computing verification codes for data source [edfi].[OpenStaffPositionAcademicSubject]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionAcademicSubject', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionAcademicSubject', 'StaffClassificationDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionAcademicSubject', 'RequisitionNumber'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionAcademicSubject', 'DatePosted'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionAcademicSubject', 'AcademicSubjectDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionAcademicSubject', 'EmploymentStatusDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.OpenStaffPositionAcademicSubject'
GO

PRINT N'Computing verification codes for data source [edfi].[OpenStaffPositionInstructionalGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionInstructionalGradeLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionInstructionalGradeLevel', 'StaffClassificationDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionInstructionalGradeLevel', 'RequisitionNumber'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionInstructionalGradeLevel', 'DatePosted'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionInstructionalGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionInstructionalGradeLevel', 'EmploymentStatusDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.OpenStaffPositionInstructionalGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[OperationalStatusType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OperationalStatusType', 'OperationalStatusTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.OperationalStatusType'
GO

PRINT N'Computing verification codes for data source [edfi].[OtherNameType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OtherNameType', 'OtherNameTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.OtherNameType'
GO

PRINT N'Computing verification codes for data source [edfi].[Parent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Parent', 'ParentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Parent'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentAddress', 'ParentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentAddress', 'AddressTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentAddress'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentElectronicMail]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentElectronicMail', 'ParentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentElectronicMail', 'ElectronicMailTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentElectronicMail'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentIdentificationDocument]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentIdentificationDocument', 'PersonalInformationVerificationTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentIdentificationDocument', 'IdentificationDocumentUseTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentIdentificationDocument', 'ParentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentIdentificationDocument'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentInternationalAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentInternationalAddress', 'ParentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentInternationalAddress', 'AddressTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentInternationalAddress'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentOtherName]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentOtherName', 'ParentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentOtherName', 'OtherNameTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentOtherName'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentTelephone]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentTelephone', 'ParentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentTelephone', 'TelephoneNumberTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentTelephone'
GO

PRINT N'Computing verification codes for data source [edfi].[Payroll]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Payroll', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Payroll', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Payroll', 'AccountNumber'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Payroll', 'FiscalYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Payroll', 'AsOfDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Payroll'
GO

PRINT N'Computing verification codes for data source [edfi].[PerformanceBaseConversionType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PerformanceBaseConversionType', 'PerformanceBaseConversionTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PerformanceBaseConversionType'
GO

PRINT N'Computing verification codes for data source [edfi].[PerformanceLevelDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PerformanceLevelDescriptor', 'PerformanceLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PerformanceLevelDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[PersonalInformationVerificationType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PersonalInformationVerificationType', 'PersonalInformationVerificationTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PersonalInformationVerificationType'
GO

PRINT N'Computing verification codes for data source [edfi].[PopulationServedType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PopulationServedType', 'PopulationServedTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PopulationServedType'
GO

PRINT N'Computing verification codes for data source [edfi].[PostingResultType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostingResultType', 'PostingResultTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PostingResultType'
GO

PRINT N'Computing verification codes for data source [edfi].[PostSecondaryEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEvent', 'PostSecondaryEventCategoryTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEvent', 'EventDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PostSecondaryEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[PostSecondaryEventCategoryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventCategoryType', 'PostSecondaryEventCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PostSecondaryEventCategoryType'
GO

PRINT N'Computing verification codes for data source [edfi].[PostSecondaryEventPostSecondaryInstitution]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventPostSecondaryInstitution', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventPostSecondaryInstitution', 'PostSecondaryEventCategoryTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventPostSecondaryInstitution', 'EventDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PostSecondaryEventPostSecondaryInstitution'
GO

PRINT N'Computing verification codes for data source [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventPostSecondaryInstitutionIdentificationCode', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventPostSecondaryInstitutionIdentificationCode', 'PostSecondaryEventCategoryTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventPostSecondaryInstitutionIdentificationCode', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventPostSecondaryInstitutionIdentificationCode', 'EducationOrganizationIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PostSecondaryEventPostSecondaryInstitutionIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction', 'PostSecondaryEventCategoryTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction', 'MediumOfInstructionTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction'
GO

PRINT N'Computing verification codes for data source [edfi].[PostSecondaryInstitutionLevelType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryInstitutionLevelType', 'PostSecondaryInstitutionLevelTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PostSecondaryInstitutionLevelType'
GO

PRINT N'Computing verification codes for data source [edfi].[Program]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Program', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Program', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Program', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Program'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramAssignmentDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramAssignmentDescriptor', 'ProgramAssignmentDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramAssignmentDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramAssignmentType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramAssignmentType', 'ProgramAssignmentTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramAssignmentType'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramCharacteristic]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramCharacteristic', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramCharacteristic', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramCharacteristic', 'ProgramCharacteristicDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramCharacteristic', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramCharacteristic'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramCharacteristicDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramCharacteristicDescriptor', 'ProgramCharacteristicDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramCharacteristicDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramCharacteristicType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramCharacteristicType', 'ProgramCharacteristicTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramCharacteristicType'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramLearningObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningObjective', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningObjective', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningObjective', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramLearningObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramLearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningStandard', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningStandard', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningStandard', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramLearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramService]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramService', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramService', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramService', 'ServiceDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramService', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramService'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramSponsorType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramSponsorType', 'ProgramSponsorTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramSponsorType'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramType', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramType'
GO

PRINT N'Computing verification codes for data source [edfi].[PublicationStatusType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PublicationStatusType', 'PublicationStatusTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PublicationStatusType'
GO

PRINT N'Computing verification codes for data source [edfi].[RaceType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RaceType', 'RaceTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RaceType'
GO

PRINT N'Computing verification codes for data source [edfi].[ReasonExitedDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReasonExitedDescriptor', 'ReasonExitedDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReasonExitedDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[ReasonExitedType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReasonExitedType', 'ReasonExitedTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReasonExitedType'
GO

PRINT N'Computing verification codes for data source [edfi].[ReasonNotTestedType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReasonNotTestedType', 'ReasonNotTestedTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReasonNotTestedType'
GO

PRINT N'Computing verification codes for data source [edfi].[RecognitionType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RecognitionType', 'RecognitionTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RecognitionType'
GO

PRINT N'Computing verification codes for data source [edfi].[RelationType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RelationType', 'RelationTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RelationType'
GO

PRINT N'Computing verification codes for data source [edfi].[RepeatIdentifierType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RepeatIdentifierType', 'RepeatIdentifierTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RepeatIdentifierType'
GO

PRINT N'Computing verification codes for data source [edfi].[ReportCard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCard', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCard', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCard', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCard', 'GradingPeriodBeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCard', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReportCard'
GO

PRINT N'Computing verification codes for data source [edfi].[ReportCardGrade]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'GradingPeriodBeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'GradeTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReportCardGrade'
GO

PRINT N'Computing verification codes for data source [edfi].[ReportCardStudentCompetencyObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'Objective'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'ObjectiveGradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'ObjectiveEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'GradingPeriodBeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'ReportCardEducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReportCardStudentCompetencyObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[ReportCardStudentLearningObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentLearningObjective', 'GradingPeriodBeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentLearningObjective', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentLearningObjective', 'ReportCardEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentLearningObjective', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentLearningObjective', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReportCardStudentLearningObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[ReporterDescriptionDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReporterDescriptionDescriptor', 'ReporterDescriptionDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReporterDescriptionDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[ReporterDescriptionType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReporterDescriptionType', 'ReporterDescriptionTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReporterDescriptionType'
GO

PRINT N'Computing verification codes for data source [edfi].[ResidencyStatusDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ResidencyStatusDescriptor', 'ResidencyStatusDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ResidencyStatusDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[ResidencyStatusType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ResidencyStatusType', 'ResidencyStatusTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ResidencyStatusType'
GO

PRINT N'Computing verification codes for data source [edfi].[ResponseIndicatorType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ResponseIndicatorType', 'ResponseIndicatorTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ResponseIndicatorType'
GO

PRINT N'Computing verification codes for data source [edfi].[ResponsibilityDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ResponsibilityDescriptor', 'ResponsibilityDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ResponsibilityDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[ResponsibilityType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ResponsibilityType', 'ResponsibilityTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ResponsibilityType'
GO

PRINT N'Computing verification codes for data source [edfi].[RestraintEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEvent', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEvent', 'RestraintEventIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEvent', 'EventDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RestraintEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[RestraintEventProgram]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'RestraintEventIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RestraintEventProgram'
GO

PRINT N'Computing verification codes for data source [edfi].[RestraintEventReason]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventReason', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventReason', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventReason', 'RestraintEventIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventReason', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventReason', 'RestraintEventReasonTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RestraintEventReason'
GO

PRINT N'Computing verification codes for data source [edfi].[RestraintEventReasonType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventReasonType', 'RestraintEventReasonTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RestraintEventReasonType'
GO

PRINT N'Computing verification codes for data source [edfi].[ResultDatatypeType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ResultDatatypeType', 'ResultDatatypeTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ResultDatatypeType'
GO

PRINT N'Computing verification codes for data source [edfi].[RetestIndicatorType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RetestIndicatorType', 'RetestIndicatorTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RetestIndicatorType'
GO

PRINT N'Computing verification codes for data source [edfi].[School]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.School', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.School'
GO

PRINT N'Computing verification codes for data source [edfi].[SchoolCategory]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolCategory', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolCategory', 'SchoolCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SchoolCategory'
GO

PRINT N'Computing verification codes for data source [edfi].[SchoolCategoryType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolCategoryType', 'SchoolCategoryTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SchoolCategoryType'
GO

PRINT N'Computing verification codes for data source [edfi].[SchoolChoiceImplementStatusType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolChoiceImplementStatusType', 'SchoolChoiceImplementStatusTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SchoolChoiceImplementStatusType'
GO

PRINT N'Computing verification codes for data source [edfi].[SchoolFoodServicesEligibilityDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolFoodServicesEligibilityDescriptor', 'SchoolFoodServicesEligibilityDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SchoolFoodServicesEligibilityDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[SchoolFoodServicesEligibilityType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolFoodServicesEligibilityType', 'SchoolFoodServicesEligibilityTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SchoolFoodServicesEligibilityType'
GO

PRINT N'Computing verification codes for data source [edfi].[SchoolGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolGradeLevel', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SchoolGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[SchoolType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolType', 'SchoolTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SchoolType'
GO

PRINT N'Computing verification codes for data source [edfi].[Section]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Section'
GO

PRINT N'Computing verification codes for data source [edfi].[SectionAttendanceTakenEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'Date'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SectionAttendanceTakenEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[SectionCharacteristic]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'SectionCharacteristicDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SectionCharacteristic'
GO

PRINT N'Computing verification codes for data source [edfi].[SectionCharacteristicDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristicDescriptor', 'SectionCharacteristicDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SectionCharacteristicDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[SectionCharacteristicType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristicType', 'SectionCharacteristicTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SectionCharacteristicType'
GO

PRINT N'Computing verification codes for data source [edfi].[SectionProgram]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SectionProgram'
GO

PRINT N'Computing verification codes for data source [edfi].[SeparationReasonDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SeparationReasonDescriptor', 'SeparationReasonDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SeparationReasonDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[SeparationReasonType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SeparationReasonType', 'SeparationReasonTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SeparationReasonType'
GO

PRINT N'Computing verification codes for data source [edfi].[SeparationType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SeparationType', 'SeparationTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SeparationType'
GO

PRINT N'Computing verification codes for data source [edfi].[ServiceDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ServiceDescriptor', 'ServiceDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ServiceDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[Session]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Session', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Session', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Session', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Session'
GO

PRINT N'Computing verification codes for data source [edfi].[SessionAcademicWeek]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionAcademicWeek', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionAcademicWeek', 'WeekIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionAcademicWeek', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionAcademicWeek', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SessionAcademicWeek'
GO

PRINT N'Computing verification codes for data source [edfi].[SessionGradingPeriod]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionGradingPeriod', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionGradingPeriod', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionGradingPeriod', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionGradingPeriod', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionGradingPeriod', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SessionGradingPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[SexType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SexType', 'SexTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SexType'
GO

PRINT N'Computing verification codes for data source [edfi].[SpecialEducationSettingDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SpecialEducationSettingDescriptor', 'SpecialEducationSettingDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SpecialEducationSettingDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[SpecialEducationSettingType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SpecialEducationSettingType', 'SpecialEducationSettingTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SpecialEducationSettingType'
GO

PRINT N'Computing verification codes for data source [edfi].[Staff]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Staff', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Staff'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffAddress', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffAddress', 'AddressTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffAddress'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffClassificationDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffClassificationDescriptor', 'StaffClassificationDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffClassificationDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffClassificationType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffClassificationType', 'StaffClassificationTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffClassificationType'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffCohortAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCohortAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCohortAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCohortAssociation', 'CohortIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCohortAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffCohortAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffCredential]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCredential', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCredential', 'CredentialFieldDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCredential', 'CredentialTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCredential', 'LevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCredential', 'TeachingCredentialDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCredential', 'CredentialIssuanceDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffCredential'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffEducationOrganizationAssignmentAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationAssignmentAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationAssignmentAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationAssignmentAssociation', 'StaffClassificationDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationAssignmentAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffEducationOrganizationAssignmentAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationEmploymentAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationEmploymentAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationEmploymentAssociation', 'EmploymentStatusDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationEmploymentAssociation', 'HireDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffEducationOrganizationEmploymentAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffElectronicMail]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffElectronicMail', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffElectronicMail', 'ElectronicMailTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffElectronicMail'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffIdentificationCode', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffIdentificationCode', 'StaffIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffIdentificationDocument]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffIdentificationDocument', 'PersonalInformationVerificationTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffIdentificationDocument', 'IdentificationDocumentUseTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffIdentificationDocument', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffIdentificationDocument'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffIdentificationSystemDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffIdentificationSystemDescriptor', 'StaffIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffIdentificationSystemDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffIdentificationSystemType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffIdentificationSystemType', 'StaffIdentificationSystemTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffIdentificationSystemType'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffInternationalAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffInternationalAddress', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffInternationalAddress', 'AddressTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffInternationalAddress'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffLanguage]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffLanguage', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffLanguage', 'LanguageDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffLanguage'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffLanguageUse]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffLanguageUse', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffLanguageUse', 'LanguageDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffLanguageUse', 'LanguageUseTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffLanguageUse'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffOtherName]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffOtherName', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffOtherName', 'OtherNameTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffOtherName'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffProgramAssociation', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffProgramAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffRace]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffRace', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffRace', 'RaceTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffRace'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffSchoolAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociation', 'ProgramAssignmentDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffSchoolAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffSchoolAssociationAcademicSubject]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationAcademicSubject', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationAcademicSubject', 'ProgramAssignmentDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationAcademicSubject', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationAcademicSubject', 'AcademicSubjectDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffSchoolAssociationAcademicSubject'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffSchoolAssociationGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationGradeLevel', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationGradeLevel', 'ProgramAssignmentDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationGradeLevel', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffSchoolAssociationGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffSectionAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffSectionAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffTelephone]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffTelephone', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffTelephone', 'TelephoneNumberTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffTelephone'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffVisa]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffVisa', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffVisa', 'VisaTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffVisa'
GO

PRINT N'Computing verification codes for data source [edfi].[StateAbbreviationType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StateAbbreviationType', 'StateAbbreviationTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StateAbbreviationType'
GO

PRINT N'Computing verification codes for data source [edfi].[StateEducationAgency]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StateEducationAgency', 'StateEducationAgencyId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StateEducationAgency'
GO

PRINT N'Computing verification codes for data source [edfi].[StateEducationAgencyAccountability]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StateEducationAgencyAccountability', 'StateEducationAgencyId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StateEducationAgencyAccountability', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StateEducationAgencyAccountability'
GO

PRINT N'Computing verification codes for data source [edfi].[StateEducationAgencyFederalFunds]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StateEducationAgencyFederalFunds', 'StateEducationAgencyId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StateEducationAgencyFederalFunds', 'FiscalYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StateEducationAgencyFederalFunds'
GO

PRINT N'Computing verification codes for data source [edfi].[Student]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Student', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Student'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecord]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecord', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecord', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecord', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecord', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecord'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecordAcademicHonor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordAcademicHonor', 'AcademicHonorCategoryTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordAcademicHonor', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordAcademicHonor', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordAcademicHonor', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordAcademicHonor', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecordAcademicHonor'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecordClassRanking]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordClassRanking', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordClassRanking', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordClassRanking', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordClassRanking', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecordClassRanking'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecordDiploma]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordDiploma', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordDiploma', 'DiplomaTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordDiploma', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordDiploma', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordDiploma', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordDiploma', 'DiplomaAwardDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecordDiploma'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecordRecognition]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordRecognition', 'RecognitionTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordRecognition', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordRecognition', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordRecognition', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordRecognition', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecordRecognition'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecordReportCard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'GradingPeriodBeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecordReportCard'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAddress', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAddress', 'AddressTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAddress'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessment]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessment', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessment'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentAccommodation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentAccommodation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentAccommodation', 'AccommodationDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentAccommodation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentItem]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentItem', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentItem', 'IdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentItem'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentPerformanceLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentPerformanceLevel', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentPerformanceLevel', 'PerformanceLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentPerformanceLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentScoreResult]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentScoreResult', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentScoreResult', 'AssessmentReportingMethodTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentScoreResult'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentStudentObjectiveAssessment]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentStudentObjectiveAssessment', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentStudentObjectiveAssessment', 'IdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentStudentObjectiveAssessment'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'IdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'PerformanceLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentStudentObjectiveAssessmentPerformanceLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentStudentObjectiveAssessmentScoreResult', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentStudentObjectiveAssessmentScoreResult', 'IdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentStudentObjectiveAssessmentScoreResult'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCharacteristic]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCharacteristic', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCharacteristic', 'StudentCharacteristicDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCharacteristic'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCharacteristicDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCharacteristicDescriptor', 'StudentCharacteristicDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCharacteristicDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCharacteristicType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCharacteristicType', 'StudentCharacteristicTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCharacteristicType'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCohortAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociation', 'CohortIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCohortAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCohortAssociationSection]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'CohortIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCohortAssociationSection'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCohortYear]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortYear', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortYear', 'CohortYearTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortYear', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCohortYear'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCompetencyObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'Objective'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'ObjectiveGradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'ObjectiveEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'GradingPeriodBeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCompetencyObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCTEProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociation', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCTEProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCTEProgramAssociationCTEProgram]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'CareerPathwayTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCTEProgramAssociationCTEProgram'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentDisability]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisability', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisability', 'DisabilityDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentDisability'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentDisciplineIncidentAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociation', 'IncidentIdentifier'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentDisciplineIncidentAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentDisciplineIncidentAssociationBehavior]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociationBehavior', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociationBehavior', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociationBehavior', 'IncidentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociationBehavior', 'BehaviorDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentDisciplineIncidentAssociationBehavior'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentEducationOrganizationAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentEducationOrganizationAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentEducationOrganizationAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentEducationOrganizationAssociation', 'ResponsibilityDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentEducationOrganizationAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentElectronicMail]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentElectronicMail', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentElectronicMail', 'ElectronicMailTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentElectronicMail'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentGradebookEntry]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'GradebookEntryTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'DateAssigned'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentGradebookEntry'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentIdentificationCode', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentIdentificationCode', 'AssigningOrganizationIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentIdentificationCode', 'StudentIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentIdentificationDocument]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentIdentificationDocument', 'PersonalInformationVerificationTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentIdentificationDocument', 'IdentificationDocumentUseTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentIdentificationDocument', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentIdentificationDocument'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentIdentificationSystemDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentIdentificationSystemDescriptor', 'StudentIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentIdentificationSystemDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentIdentificationSystemType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentIdentificationSystemType', 'StudentIdentificationSystemTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentIdentificationSystemType'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentIndicator]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentIndicator', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentIndicator', 'IndicatorName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentIndicator'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentInternationalAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInternationalAddress', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInternationalAddress', 'AddressTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentInternationalAddress'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentInterventionAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociation', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentInterventionAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentInterventionAssociationInterventionEffectiveness]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociationInterventionEffectiveness', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociationInterventionEffectiveness', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociationInterventionEffectiveness', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociationInterventionEffectiveness', 'DiagnosisDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociationInterventionEffectiveness', 'PopulationServedTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociationInterventionEffectiveness', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentInterventionAssociationInterventionEffectiveness'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentInterventionAttendanceEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAttendanceEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAttendanceEvent', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAttendanceEvent', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAttendanceEvent', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAttendanceEvent', 'AttendanceEventCategoryDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentInterventionAttendanceEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentLanguage]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLanguage', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLanguage', 'LanguageDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentLanguage'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentLanguageUse]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLanguageUse', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLanguageUse', 'LanguageDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLanguageUse', 'LanguageUseTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentLanguageUse'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentLearningObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'GradingPeriodBeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentLearningObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentLearningStyle]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningStyle', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentLearningStyle'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentMigrantEducationProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentMigrantEducationProgramAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentMigrantEducationProgramAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentMigrantEducationProgramAssociation', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentMigrantEducationProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentMigrantEducationProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentMigrantEducationProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentMigrantEducationProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentOtherName]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentOtherName', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentOtherName', 'OtherNameTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentOtherName'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentParentAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentParentAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentParentAssociation', 'ParentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentParentAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentParticipationCodeType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentParticipationCodeType', 'StudentParticipationCodeTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentParticipationCodeType'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociation', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentProgramAssociationService]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'ServiceDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentProgramAssociationService'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentProgramAttendanceEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'AttendanceEventCategoryDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentProgramAttendanceEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentProgramParticipation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramParticipation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramParticipation', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentProgramParticipation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentProgramParticipationProgramCharacteristic]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramParticipationProgramCharacteristic', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramParticipationProgramCharacteristic', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramParticipationProgramCharacteristic', 'ProgramCharacteristicDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentProgramParticipationProgramCharacteristic'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentRace]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentRace', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentRace', 'RaceTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentRace'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSchoolAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociation', 'EntryDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSchoolAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSchoolAssociationEducationPlan]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociationEducationPlan', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociationEducationPlan', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociationEducationPlan', 'EntryDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociationEducationPlan', 'EducationPlanTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSchoolAssociationEducationPlan'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSchoolAttendanceEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAttendanceEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAttendanceEvent', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAttendanceEvent', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAttendanceEvent', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAttendanceEvent', 'AttendanceEventCategoryDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAttendanceEvent', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSchoolAttendanceEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSectionAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSectionAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSectionAttendanceEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'UniqueSectionCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'SequenceOfCourse'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'AttendanceEventCategoryDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSectionAttendanceEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSpecialEducationProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociation', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSpecialEducationProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentTelephone]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTelephone', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTelephone', 'TelephoneNumberTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentTelephone'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentTitleIPartAProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTitleIPartAProgramAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTitleIPartAProgramAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTitleIPartAProgramAssociation', 'ProgramTypeId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTitleIPartAProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTitleIPartAProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTitleIPartAProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentTitleIPartAProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentVisa]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentVisa', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentVisa', 'VisaTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentVisa'
GO

PRINT N'Computing verification codes for data source [edfi].[TeachingCredentialBasisType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.TeachingCredentialBasisType', 'TeachingCredentialBasisTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.TeachingCredentialBasisType'
GO

PRINT N'Computing verification codes for data source [edfi].[TeachingCredentialDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.TeachingCredentialDescriptor', 'TeachingCredentialDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.TeachingCredentialDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[TeachingCredentialType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.TeachingCredentialType', 'TeachingCredentialTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.TeachingCredentialType'
GO

PRINT N'Computing verification codes for data source [edfi].[TelephoneNumberType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.TelephoneNumberType', 'TelephoneNumberTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.TelephoneNumberType'
GO

PRINT N'Computing verification codes for data source [edfi].[TermDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.TermDescriptor', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.TermDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[TermType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.TermType', 'TermTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.TermType'
GO

PRINT N'Computing verification codes for data source [edfi].[TitleIPartAParticipantType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.TitleIPartAParticipantType', 'TitleIPartAParticipantTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.TitleIPartAParticipantType'
GO

PRINT N'Computing verification codes for data source [edfi].[TitleIPartASchoolDesignationType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.TitleIPartASchoolDesignationType', 'TitleIPartASchoolDesignationTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.TitleIPartASchoolDesignationType'
GO

PRINT N'Computing verification codes for data source [edfi].[VisaType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.VisaType', 'VisaTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.VisaType'
GO

PRINT N'Computing verification codes for data source [edfi].[WeaponDescriptor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.WeaponDescriptor', 'WeaponDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.WeaponDescriptor'
GO

PRINT N'Computing verification codes for data source [edfi].[WeaponType]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.WeaponType', 'WeaponTypeId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.WeaponType'
GO
