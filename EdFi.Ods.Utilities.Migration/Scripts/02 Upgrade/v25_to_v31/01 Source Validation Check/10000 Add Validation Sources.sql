-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Computing verification codes for data source [edfi].[AcademicWeek]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AcademicWeek', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AcademicWeek', 'WeekIdentifier'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AcademicWeek'
GO

PRINT N'Computing verification codes for data source [edfi].[AccountabilityRating]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountabilityRating', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountabilityRating', 'RatingTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountabilityRating', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AccountabilityRating'
GO

PRINT N'Computing verification codes for data source [edfi].[Account]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Account', 'AccountNumber', 'edfi.Account', 'AccountIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Account', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Account', 'FiscalYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Account'
GO

PRINT N'Computing verification codes for data source [edfi].[AccountCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountCode', 'AccountNumber', 'edfi.AccountCode', 'AccountCodeNumber'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountCode', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AccountCode', 'FiscalYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AccountCode'
GO

PRINT N'Computing verification codes for data source [edfi].[Actual]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Actual', 'AccountNumber', 'edfi.Actual', 'AccountIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Actual', 'AsOfDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Actual', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Actual', 'FiscalYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Actual'
GO

PRINT N'Computing verification codes for data source [edfi].[Assessment]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Assessment', 'AssessmentTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Assessment', 'Version','edfi.Assessment', 'AssessmentVersion'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Assessment'
GO

EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Assessment', 'AssessmentPeriodDescriptorId', 'edfi.AssessmentPeriod'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentIdentificationCode', 'AssessmentIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentItem]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentItem', 'IdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentItem'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentItemLearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentItemLearningStandard', 'IdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentItemLearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentItemLearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentLanguage]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentLanguage', 'LanguageDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentLanguage'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentPerformanceLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentPerformanceLevel', 'PerformanceLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentPerformanceLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[AssessmentProgram]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentProgram', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentProgram', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentProgram'
GO


PRINT N'Computing verification codes for data source [edfi].[AssessmentSection]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentSection', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentSection', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.AssessmentSection', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.AssessmentSection'
GO

PRINT N'Computing verification codes for data source [edfi].[Budget]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Budget', 'AccountNumber', 'edfi.Budget', 'AccountIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Budget', 'AsOfDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Budget', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Budget', 'FiscalYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Budget'
GO

PRINT N'Computing verification codes for data source [edfi].[CalendarDate]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarDate', 'Date'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarDate', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CalendarDate'
GO

PRINT N'Computing verification codes for data source [edfi].[CalendarDateCalendarEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarDateCalendarEvent', 'CalendarEventDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarDateCalendarEvent', 'Date'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CalendarDateCalendarEvent', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CalendarDateCalendarEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[ClassPeriod]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ClassPeriod', 'ClassPeriodName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ClassPeriod', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ClassPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[Cohort]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Cohort', 'CohortIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Cohort', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Cohort'
GO

PRINT N'Computing verification codes for data source [edfi].[CohortProgram]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortProgram', 'CohortIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortProgram', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortProgram', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CohortProgram', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CohortProgram'
GO

PRINT N'Computing verification codes for data source [edfi].[CompetencyObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CompetencyObjective', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CompetencyObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[ContractedStaff]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContractedStaff', 'AccountNumber', 'edfi.ContractedStaff', 'AccountIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContractedStaff', 'AsOfDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContractedStaff', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContractedStaff', 'FiscalYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ContractedStaff', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ContractedStaff'
GO

PRINT N'Computing verification codes for data source [edfi].[Course]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Course', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Course', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Course'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseCompetencyLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseCompetencyLevel', 'CompetencyLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseCompetencyLevel', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseCompetencyLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseCompetencyLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseIdentificationCode', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseIdentificationCode', 'CourseIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseIdentificationCode', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseLearningObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLearningObjective', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLearningObjective', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseLearningObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseLearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLearningStandard', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLearningStandard', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseLearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseLevelCharacteristic]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLevelCharacteristic', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseLevelCharacteristic', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseLevelCharacteristic'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseOfferedGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferedGradeLevel', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferedGradeLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferedGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseOfferedGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseOffering]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOffering', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOffering', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOffering', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseOffering'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseOfferingCurriculumUsed]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferingCurriculumUsed', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferingCurriculumUsed', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseOfferingCurriculumUsed', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseOfferingCurriculumUsed'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseTranscript]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'CourseEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscript', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseTranscript'
GO

PRINT N'Computing verification codes for data source [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'CourseEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.CourseTranscriptEarnedAdditionalCredits', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.CourseTranscriptEarnedAdditionalCredits'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineAction]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineAction', 'DisciplineActionIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineAction', 'DisciplineDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineAction', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineAction'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineActionDiscipline]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDiscipline', 'DisciplineActionIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDiscipline', 'DisciplineDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDiscipline', 'DisciplineDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDiscipline', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineActionDiscipline'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineActionDisciplineIncident]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDisciplineIncident', 'DisciplineActionIdentifier', 'edfi.DisciplineActionStudentDisciplineIncidentAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDisciplineIncident', 'DisciplineDate', 'edfi.DisciplineActionStudentDisciplineIncidentAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDisciplineIncident', 'IncidentIdentifier', 'edfi.DisciplineActionStudentDisciplineIncidentAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDisciplineIncident', 'SchoolId', 'edfi.DisciplineActionStudentDisciplineIncidentAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionDisciplineIncident', 'StudentUSI', 'edfi.DisciplineActionStudentDisciplineIncidentAssociation'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineActionStudentDisciplineIncidentAssociation'
GO
PRINT N'Computing verification codes for data source [edfi].[DisciplineActionStaff]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionStaff', 'DisciplineActionIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionStaff', 'DisciplineDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionStaff', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineActionStaff', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineActionStaff'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineIncident]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncident', 'IncidentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncident', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineIncident'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineIncidentBehavior]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentBehavior', 'BehaviorDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentBehavior', 'IncidentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentBehavior', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineIncidentBehavior'
GO

PRINT N'Computing verification codes for data source [edfi].[DisciplineIncidentWeapon]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentWeapon', 'IncidentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentWeapon', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.DisciplineIncidentWeapon', 'WeaponDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.DisciplineIncidentWeapon'
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
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationContentAppropriateSex'
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
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentDerivativeSourceLearningResourceMetadataURI', 'LearningResourceMetadataURI', 'edfi.EducationContentDerivativeSourceLearningResourceMetadataURI', 'DerivativeSourceLearningResourceMetadataURI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationContentDerivativeSourceLearningResourceMetadataURI'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationContentDerivativeSourceURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentDerivativeSourceURI', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationContentDerivativeSourceURI', 'URI', 'edfi.EducationContentDerivativeSourceURI', 'DerivativeSourceURI'
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
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationAddress'

EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationAddress', 'BeginDate','edfi.EducationOrganizationAddressPeriod'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationAddressPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationCategory]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationCategory', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationCategory'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationIdentificationCode', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationIdentificationCode', 'EducationOrganizationIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationInstitutionTelephone]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInstitutionTelephone', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationInstitutionTelephone'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationInternationalAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInternationalAddress', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationInternationalAddress'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationInterventionPrescriptionAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInterventionPrescriptionAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInterventionPrescriptionAssociation', 'InterventionPrescriptionEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationInterventionPrescriptionAssociation', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationInterventionPrescriptionAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationNetwork]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationNetwork', 'EducationOrganizationNetworkId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationNetwork'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationNetworkAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationNetworkAssociation', 'EducationOrganizationNetworkId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationNetworkAssociation', 'MemberEducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationNetworkAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationOrganizationPeerAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationPeerAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationOrganizationPeerAssociation', 'PeerEducationOrganizationId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationOrganizationPeerAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[EducationServiceCenter]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.EducationServiceCenter', 'EducationServiceCenterId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.EducationServiceCenter'
GO

PRINT N'Computing verification codes for data source [edfi].[FeederSchoolAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.FeederSchoolAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.FeederSchoolAssociation', 'FeederSchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.FeederSchoolAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.FeederSchoolAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[Grade]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Grade', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Grade'
GO

PRINT N'Computing verification codes for data source [edfi].[GradebookEntry]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'DateAssigned'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'GradebookEntryTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntry', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradebookEntry'
GO

PRINT N'Computing verification codes for data source [edfi].[GradebookEntryLearningObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'DateAssigned'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'GradebookEntryTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningObjective', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradebookEntryLearningObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[GradebookEntryLearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'DateAssigned'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'GradebookEntryTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradebookEntryLearningStandard', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradebookEntryLearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[GradingPeriod]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradingPeriod', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradingPeriod', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GradingPeriod', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GradingPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlan]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlan', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlan', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlan', 'GraduationSchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlan'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanCreditsByCourse]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourse', 'CourseSetName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourse', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourse', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourse', 'GraduationSchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanCreditsByCourse'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanCreditsByCourseCourse]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'CourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'CourseEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'CourseSetName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsByCourseCourse', 'GraduationSchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanCreditsByCourseCourse'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanCreditsBySubject]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsBySubject', 'AcademicSubjectDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanCreditsBySubject', 'EducationOrganizationId'
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
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'EducationOrganizationId', 'edfi.GraduationPlanRequiredAssessmentPerformanceLevel'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'GraduationPlanTypeDescriptorId', 'edfi.GraduationPlanRequiredAssessmentPerformanceLevel'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'GraduationSchoolYear', 'edfi.GraduationPlanRequiredAssessmentPerformanceLevel'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanRequiredAssessmentPerformanceLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[GraduationPlanRequiredAssessmentScore]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentScore', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentScore', 'GraduationPlanTypeDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.GraduationPlanRequiredAssessmentScore', 'GraduationSchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.GraduationPlanRequiredAssessmentScore'
GO

PRINT N'Computing verification codes for data source [edfi].[Intervention]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Intervention', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Intervention', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Intervention'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionAppropriateGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionAppropriateGradeLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionAppropriateGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionAppropriateGradeLevel', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionAppropriateGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionAppropriateSex]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionAppropriateSex', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionAppropriateSex', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionAppropriateSex'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionDiagnosis]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionDiagnosis', 'DiagnosisDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionDiagnosis', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionDiagnosis', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionDiagnosis'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionEducationContent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionEducationContent', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionEducationContent', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionEducationContent', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionEducationContent'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionInterventionPrescription]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionInterventionPrescription', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionInterventionPrescription', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionInterventionPrescription', 'InterventionPrescriptionEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionInterventionPrescription', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionInterventionPrescription'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionLearningResourceMetadataURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionLearningResourceMetadataURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionLearningResourceMetadataURI', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionLearningResourceMetadataURI', 'LearningResourceMetadataURI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionLearningResourceMetadataURI'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionMeetingTime]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionMeetingTime', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionMeetingTime', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionMeetingTime'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPopulationServed]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPopulationServed', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPopulationServed', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPopulationServed'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescription]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescription', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescription', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescription'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionAppropriateGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionAppropriateGradeLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionAppropriateGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionAppropriateGradeLevel', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionAppropriateGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionAppropriateSex]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionAppropriateSex', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionAppropriateSex', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionAppropriateSex'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionDiagnosis]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionDiagnosis', 'DiagnosisDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionDiagnosis', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionDiagnosis', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionDiagnosis'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionEducationContent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionEducationContent', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionEducationContent', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionEducationContent', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionEducationContent'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionLearningResourceMetadataURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionLearningResourceMetadataURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionLearningResourceMetadataURI', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionLearningResourceMetadataURI', 'LearningResourceMetadataURI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionLearningResourceMetadataURI'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionPopulationServed]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionPopulationServed', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionPopulationServed', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionPopulationServed'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionPrescriptionURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionURI', 'InterventionPrescriptionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionPrescriptionURI', 'URI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionPrescriptionURI'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStaff]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStaff', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStaff', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStaff', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStaff'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudy]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudy', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudy', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudy'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyAppropriateGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyAppropriateGradeLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyAppropriateGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyAppropriateGradeLevel', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyAppropriateGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyAppropriateSex]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyAppropriateSex', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyAppropriateSex', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyAppropriateSex'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyEducationContent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyEducationContent', 'ContentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyEducationContent', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyEducationContent', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyEducationContent'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyInterventionEffectiveness]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyInterventionEffectiveness', 'DiagnosisDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyInterventionEffectiveness', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyInterventionEffectiveness', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyInterventionEffectiveness', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyInterventionEffectiveness'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyLearningResourceMetadataURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyLearningResourceMetadataURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyLearningResourceMetadataURI', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyLearningResourceMetadataURI', 'LearningResourceMetadataURI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyLearningResourceMetadataURI'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyPopulationServed]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyPopulationServed', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyPopulationServed', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyPopulationServed'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyStateAbbreviation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyStateAbbreviation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyStateAbbreviation', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyStateAbbreviation'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionStudyURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyURI', 'InterventionStudyIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionStudyURI', 'URI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionStudyURI'
GO

PRINT N'Computing verification codes for data source [edfi].[InterventionURI]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionURI', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionURI', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.InterventionURI', 'URI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.InterventionURI'
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

PRINT N'Computing verification codes for data source [edfi].[LearningStandardGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardGradeLevel', 'LearningStandardId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LearningStandardGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[LearningStandardIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardIdentificationCode', 'ContentStandardName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardIdentificationCode', 'IdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LearningStandardIdentificationCode', 'LearningStandardId'
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
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LeaveEvent', 'EventDate', 'edfi.StaffAbsenceEvent'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LeaveEvent', 'StaffUSI', 'edfi.StaffAbsenceEvent'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffAbsenceEvent'
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

PRINT N'Computing verification codes for data source [edfi].[LocalEducationAgencyFederalFunds]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LocalEducationAgencyFederalFunds', 'FiscalYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.LocalEducationAgencyFederalFunds', 'LocalEducationAgencyId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.LocalEducationAgencyFederalFunds'
GO

PRINT N'Computing verification codes for data source [edfi].[Location]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Location', 'ClassroomIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Location', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Location'
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
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ObjectiveAssessmentPerformanceLevel', 'IdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ObjectiveAssessmentPerformanceLevel', 'PerformanceLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ObjectiveAssessmentPerformanceLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[OpenStaffPosition]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPosition', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPosition', 'RequisitionNumber'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.OpenStaffPosition'
GO

PRINT N'Computing verification codes for data source [edfi].[OpenStaffPositionAcademicSubject]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionAcademicSubject', 'AcademicSubjectDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionAcademicSubject', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionAcademicSubject', 'RequisitionNumber'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.OpenStaffPositionAcademicSubject'
GO

PRINT N'Computing verification codes for data source [edfi].[OpenStaffPositionInstructionalGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionInstructionalGradeLevel', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionInstructionalGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.OpenStaffPositionInstructionalGradeLevel', 'RequisitionNumber'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.OpenStaffPositionInstructionalGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[Parent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Parent', 'ParentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Parent'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentAddress', 'ParentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentAddress'

EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentAddress', 'BeginDate', 'edfi.ParentAddressPeriod'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentAddressPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentElectronicMail]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentElectronicMail', 'ParentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentElectronicMail'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentIdentificationDocument]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentIdentificationDocument', 'ParentUSI', 'edfi.ParentPersonalIdentificationDocument'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentPersonalIdentificationDocument'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentInternationalAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentInternationalAddress', 'ParentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentInternationalAddress'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentOtherName]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentOtherName', 'ParentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentOtherName'
GO

PRINT N'Computing verification codes for data source [edfi].[ParentTelephone]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ParentTelephone', 'ParentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ParentTelephone'
GO

PRINT N'Computing verification codes for data source [edfi].[Payroll]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Payroll', 'AccountNumber', 'edfi.Payroll', 'AccountIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Payroll', 'AsOfDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Payroll', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Payroll', 'FiscalYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Payroll', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Payroll'
GO

PRINT N'Computing verification codes for data source [edfi].[PostSecondaryEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEvent', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.PostSecondaryEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.PostSecondaryEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[Program]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Program', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Program', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Program'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramCharacteristic]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramCharacteristic', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramCharacteristic', 'ProgramCharacteristicDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramCharacteristic', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramCharacteristic'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramLearningObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningObjective', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningObjective', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramLearningObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramLearningStandard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningStandard', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningStandard', 'LearningStandardId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramLearningStandard', 'ProgramName'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramLearningStandard'
GO

PRINT N'Computing verification codes for data source [edfi].[ProgramService]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramService', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramService', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ProgramService', 'ServiceDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ProgramService'
GO

PRINT N'Computing verification codes for data source [edfi].[ReportCard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCard', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCard', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCard', 'SchoolId', 'edfi.ReportCard', 'GradingPeriodSchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCard', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReportCard'
GO

PRINT N'Computing verification codes for data source [edfi].[ReportCardGrade]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardGrade', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReportCardGrade'
GO

PRINT N'Computing verification codes for data source [edfi].[ReportCardStudentCompetencyObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'ObjectiveEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'ReportCardEducationOrganizationId', 'edfi.ReportCardStudentCompetencyObjective', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'SchoolId', 'edfi.ReportCardStudentCompetencyObjective', 'GradingPeriodSchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentCompetencyObjective', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReportCardStudentCompetencyObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[ReportCardStudentLearningObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentLearningObjective', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentLearningObjective', 'ReportCardEducationOrganizationId', 'edfi.ReportCardStudentLearningObjective', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentLearningObjective', 'SchoolId', 'edfi.ReportCardStudentLearningObjective', 'GradingPeriodSchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.ReportCardStudentLearningObjective', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.ReportCardStudentLearningObjective'
GO

PRINT N'Computing verification codes for data source [edfi].[RestraintEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEvent', 'RestraintEventIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEvent', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RestraintEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[RestraintEventProgram]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'RestraintEventIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventProgram', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RestraintEventProgram'
GO

PRINT N'Computing verification codes for data source [edfi].[RestraintEventReason]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventReason', 'RestraintEventIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventReason', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.RestraintEventReason', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.RestraintEventReason'
GO


PRINT N'Computing verification codes for data source [edfi].[School]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.School', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.School'
GO

PRINT N'Computing verification codes for data source [edfi].[SchoolCategory]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolCategory', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SchoolCategory'
GO

PRINT N'Computing verification codes for data source [edfi].[SchoolGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SchoolGradeLevel', 'SchoolId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SchoolGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[Section]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Section'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'ClassPeriodName', 'edfi.SectionClassPeriod' 
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'LocalCourseCode', 'edfi.SectionClassPeriod' 
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'SchoolId', 'edfi.SectionClassPeriod' 
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Section', 'SchoolYear', 'edfi.SectionClassPeriod'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SectionClassPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[SectionAttendanceTakenEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'Date'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionAttendanceTakenEvent', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SectionAttendanceTakenEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[SectionCharacteristic]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionCharacteristic', 'SectionCharacteristicDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SectionCharacteristic'
GO

PRINT N'Computing verification codes for data source [edfi].[SectionProgram]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SectionProgram', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SectionProgram'
GO

PRINT N'Computing verification codes for data source [edfi].[Session]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Session', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Session', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Session'
GO

PRINT N'Computing verification codes for data source [edfi].[SessionAcademicWeek]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionAcademicWeek', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionAcademicWeek', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionAcademicWeek', 'WeekIdentifier'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SessionAcademicWeek'
GO

PRINT N'Computing verification codes for data source [edfi].[SessionGradingPeriod]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionGradingPeriod', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionGradingPeriod', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.SessionGradingPeriod', 'SchoolYear'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.SessionGradingPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[Staff]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Staff', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Staff'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffAddress', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffAddress'

EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffAddress', 'BeginDate', 'edfi.StaffAddressPeriod'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffAddressPeriod'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffCohortAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCohortAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCohortAssociation', 'CohortIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCohortAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCohortAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffCohortAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffCredential]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCredential', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffCredential'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCredential', 'CredentialFieldDescriptorId', 'edfi.Credential'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffCredential', 'TeachingCredentialDescriptorId', 'edfi.Credential'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Credential'

PRINT N'Computing verification codes for data source [edfi].[StaffEducationOrganizationAssignmentAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationAssignmentAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationAssignmentAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationAssignmentAssociation', 'StaffClassificationDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationAssignmentAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffEducationOrganizationAssignmentAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationEmploymentAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationEmploymentAssociation', 'EmploymentStatusDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationEmploymentAssociation', 'HireDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffEducationOrganizationEmploymentAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffEducationOrganizationEmploymentAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffElectronicMail]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffElectronicMail', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffElectronicMail'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffIdentificationCode]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffIdentificationCode', 'StaffIdentificationSystemDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffIdentificationCode', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffIdentificationCode'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffInternationalAddress]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffInternationalAddress', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffInternationalAddress'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffLanguage]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffLanguage', 'LanguageDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffLanguage', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffLanguage'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffLanguageUse]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffLanguageUse', 'LanguageDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffLanguageUse', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffLanguageUse'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffOtherName]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffOtherName', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffOtherName'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffProgramAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffRace]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffRace', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffRace'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffSchoolAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociation', 'ProgramAssignmentDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffSchoolAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffSchoolAssociationAcademicSubject]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationAcademicSubject', 'AcademicSubjectDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationAcademicSubject', 'ProgramAssignmentDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationAcademicSubject', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationAcademicSubject', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffSchoolAssociationAcademicSubject'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffSchoolAssociationGradeLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationGradeLevel', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationGradeLevel', 'ProgramAssignmentDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationGradeLevel', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSchoolAssociationGradeLevel', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffSchoolAssociationGradeLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffSectionAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffSectionAssociation', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffSectionAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffTelephone]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffTelephone', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffTelephone'
GO

PRINT N'Computing verification codes for data source [edfi].[StaffVisa]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StaffVisa', 'StaffUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StaffVisa'
GO

PRINT N'Computing verification codes for data source [edfi].[StateEducationAgency]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StateEducationAgency', 'StateEducationAgencyId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StateEducationAgency'
GO

PRINT N'Computing verification codes for data source [edfi].[StateEducationAgencyAccountability]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StateEducationAgencyAccountability', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StateEducationAgencyAccountability', 'StateEducationAgencyId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StateEducationAgencyAccountability'
GO

PRINT N'Computing verification codes for data source [edfi].[StateEducationAgencyFederalFunds]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StateEducationAgencyFederalFunds', 'FiscalYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StateEducationAgencyFederalFunds', 'StateEducationAgencyId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StateEducationAgencyFederalFunds'
GO

PRINT N'Computing verification codes for data source [edfi].[Student]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.Student', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.Student'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecord]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecord', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecord', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecord', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecord', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecord'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecordAcademicHonor]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordAcademicHonor', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordAcademicHonor', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordAcademicHonor', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordAcademicHonor', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecordAcademicHonor'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecordClassRanking]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordClassRanking', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordClassRanking', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordClassRanking', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordClassRanking', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecordClassRanking'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecordDiploma]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordDiploma', 'DiplomaAwardDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordDiploma', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordDiploma', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordDiploma', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordDiploma', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecordDiploma'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecordRecognition]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordRecognition', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordRecognition', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordRecognition', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordRecognition', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecordRecognition'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAcademicRecordReportCard]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'SchoolId', 'edfi.StudentAcademicRecordReportCard', 'GradingPeriodSchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAcademicRecordReportCard', 'TermDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAcademicRecordReportCard'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessment]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessment', 'AdministrationDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessment', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessment'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentAccommodation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentAccommodation', 'AccommodationDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentAccommodation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentItem]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentItem', 'IdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentItem'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentPerformanceLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentPerformanceLevel', 'PerformanceLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentPerformanceLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentStudentObjectiveAssessment]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentStudentObjectiveAssessment', 'IdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentStudentObjectiveAssessment'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'IdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'PerformanceLevelDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentStudentObjectiveAssessmentPerformanceLevel'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentAssessmentStudentObjectiveAssessmentScoreResult', 'IdentificationCode'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentAssessmentStudentObjectiveAssessmentScoreResult'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCohortAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociation', 'CohortIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCohortAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCohortAssociationSection]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'CohortIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCohortAssociationSection', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCohortAssociationSection'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCompetencyObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'ObjectiveEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'SchoolId','edfi.StudentCompetencyObjective', 'GradingPeriodSchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCompetencyObjective'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'ProgramName', 'edfi.StudentCompetencyObjectiveGeneralStudentProgramAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'EducationOrganizationId', 'edfi.StudentCompetencyObjectiveGeneralStudentProgramAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'ProgramEducationOrganizationId', 'edfi.StudentCompetencyObjectiveGeneralStudentProgramAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'StudentUSI', 'edfi.StudentCompetencyObjectiveGeneralStudentProgramAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'BeginDate', 'edfi.StudentCompetencyObjectiveGeneralStudentProgramAssociation'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCompetencyObjectiveGeneralStudentProgramAssociation'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'SchoolId', 'edfi.StudentCompetencyObjectiveStudentSectionAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'LocalCourseCode', 'edfi.StudentCompetencyObjectiveStudentSectionAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'SchoolYear', 'edfi.StudentCompetencyObjectiveStudentSectionAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'StudentUSI', 'edfi.StudentCompetencyObjectiveStudentSectionAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCompetencyObjective', 'GradingPeriodDescriptorId', 'edfi.StudentCompetencyObjectiveStudentSectionAssociation'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCompetencyObjectiveStudentSectionAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCTEProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCTEProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentCTEProgramAssociationCTEProgram]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentCTEProgramAssociationCTEProgram', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentCTEProgramAssociationCTEProgram'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentDisciplineIncidentAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociation', 'IncidentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentDisciplineIncidentAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentDisciplineIncidentAssociationBehavior]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociationBehavior', 'BehaviorDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociationBehavior', 'IncidentIdentifier'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociationBehavior', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentDisciplineIncidentAssociationBehavior', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentDisciplineIncidentAssociationBehavior'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentEducationOrganizationAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentEducationOrganizationAssociation', 'StudentUSI', 'edfi.StudentEducationOrganizationResponsibilityAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentEducationOrganizationAssociation', 'EducationOrganizationId', 'edfi.StudentEducationOrganizationResponsibilityAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentEducationOrganizationAssociation', 'ResponsibilityDescriptorId', 'edfi.StudentEducationOrganizationResponsibilityAssociation', 'ResponsibilityDescriptorId'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentEducationOrganizationResponsibilityAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentGradebookEntry]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'DateAssigned'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'GradebookEntryTitle'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentGradebookEntry', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentGradebookEntry'
GO

GO

PRINT N'Computing verification codes for data source [edfi].[StudentInterventionAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociation', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentInterventionAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentInterventionAssociationInterventionEffectiveness]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociationInterventionEffectiveness', 'DiagnosisDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociationInterventionEffectiveness', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociationInterventionEffectiveness', 'GradeLevelDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociationInterventionEffectiveness', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAssociationInterventionEffectiveness', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentInterventionAssociationInterventionEffectiveness'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentInterventionAttendanceEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAttendanceEvent', 'AttendanceEventCategoryDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAttendanceEvent', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAttendanceEvent', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAttendanceEvent', 'InterventionIdentificationCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentInterventionAttendanceEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentInterventionAttendanceEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentLearningObjective]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'GradingPeriodDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'SchoolId', 'edfi.StudentLearningObjective', 'GradingPeriodSchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentLearningObjective'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'SchoolId', 'edfi.StudentLearningObjectiveStudentSectionAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'LocalCourseCode', 'edfi.StudentLearningObjectiveStudentSectionAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'SchoolYear', 'edfi.StudentLearningObjectiveStudentSectionAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'StudentUSI', 'edfi.StudentLearningObjectiveStudentSectionAssociation'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentLearningObjectiveStudentSectionAssociation'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'ProgramName', 'edfi.StudentLearningObjectiveGeneralStudentProgramAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'EducationOrganizationId', 'edfi.StudentLearningObjectiveGeneralStudentProgramAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'ProgramEducationOrganizationId', 'edfi.StudentLearningObjectiveGeneralStudentProgramAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'StudentUSI', 'edfi.StudentLearningObjectiveGeneralStudentProgramAssociation'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentLearningObjective', 'BeginDate', 'edfi.StudentLearningObjectiveGeneralStudentProgramAssociation'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentLearningObjectiveGeneralStudentProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentMigrantEducationProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentMigrantEducationProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentMigrantEducationProgramAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentMigrantEducationProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentMigrantEducationProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentMigrantEducationProgramAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentMigrantEducationProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentOtherName]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentOtherName', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentOtherName'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentParentAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentParentAssociation', 'ParentUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentParentAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentParentAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentProgramAssociationService]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'ServiceDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAssociationService', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentProgramAssociationService'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentProgramAttendanceEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'AttendanceEventCategoryDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentProgramAttendanceEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentProgramAttendanceEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSchoolAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociation', 'EntryDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSchoolAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSchoolAssociationEducationPlan]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociationEducationPlan', 'EntryDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociationEducationPlan', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAssociationEducationPlan', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSchoolAssociationEducationPlan'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSchoolAttendanceEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAttendanceEvent', 'AttendanceEventCategoryDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAttendanceEvent', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAttendanceEvent', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAttendanceEvent', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSchoolAttendanceEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSchoolAttendanceEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSectionAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSectionAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSectionAttendanceEvent]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'AttendanceEventCategoryDescriptorId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'EventDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'LocalCourseCode'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'SchoolId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'SchoolYear'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSectionAttendanceEvent', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSectionAttendanceEvent'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSpecialEducationProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSpecialEducationProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'StaffUSI'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentSpecialEducationProgramAssociationServiceProvider'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentTitleIPartAProgramAssociation]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTitleIPartAProgramAssociation', 'BeginDate'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTitleIPartAProgramAssociation', 'EducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTitleIPartAProgramAssociation', 'ProgramEducationOrganizationId'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTitleIPartAProgramAssociation', 'ProgramName'
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentTitleIPartAProgramAssociation', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentTitleIPartAProgramAssociation'
GO

PRINT N'Computing verification codes for data source [edfi].[StudentVisa]'
GO
EXEC [migration_tempdata].[sp_AddValidationCheck] 'edfi.StudentVisa', 'StudentUSI'
EXEC [migration_tempdata].[sp_StoreExpectedValue] 'edfi.StudentVisa'
GO

