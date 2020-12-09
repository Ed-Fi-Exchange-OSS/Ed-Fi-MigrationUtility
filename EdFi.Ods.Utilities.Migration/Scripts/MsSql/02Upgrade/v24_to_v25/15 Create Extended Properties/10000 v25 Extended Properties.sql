-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating extended properties'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A designation of the type of academic distinctions earned by or awarded to the student.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicHonorCategoryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AcademicHonorCategory', 'SCHEMA', N'edfi', 'TABLE', N'AcademicHonorCategoryType', 'COLUMN', N'AcademicHonorCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicHonorCategoryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AcademicHonorCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicHonorCategoryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AcademicHonorCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicHonorCategoryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language).', 'SCHEMA', N'edfi', 'TABLE', N'AcademicSubjectDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicSubjectDescriptor', 'COLUMN', N'AcademicSubjectDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicSubjectDescriptor', 'COLUMN', N'AcademicSubjectTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicSubjectType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AcademicSubject', 'SCHEMA', N'edfi', 'TABLE', N'AcademicSubjectType', 'COLUMN', N'AcademicSubjectTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicSubjectType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AcademicSubject type.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicSubjectType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AcademicSubject type.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicSubjectType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents the academic weeks for a school year, optionally captured to support analyses.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicWeek', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The start date for the academic week.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicWeek', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The end date for the academic week.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicWeek', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'AcademicWeek', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The total instructional days during the academic week.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicWeek', 'COLUMN', N'TotalInstructionalDays'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school label for the week.', 'SCHEMA', N'edfi', 'TABLE', N'AcademicWeek', 'COLUMN', N'WeekIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines variations used in how an assessment is presented or taken.', 'SCHEMA', N'edfi', 'TABLE', N'AccommodationDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AccommodationDescriptor', 'COLUMN', N'AccommodationDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AccommodationDescriptor', 'COLUMN', N'AccommodationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The variations used in how an assessment is presented or taken.', 'SCHEMA', N'edfi', 'TABLE', N'AccommodationType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Accommodation', 'SCHEMA', N'edfi', 'TABLE', N'AccommodationType', 'COLUMN', N'AccommodationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AccommodationType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Accommodation type.', 'SCHEMA', N'edfi', 'TABLE', N'AccommodationType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Accommodation type.', 'SCHEMA', N'edfi', 'TABLE', N'AccommodationType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor holds the set of account codes defined for the education accounting system organized by account code type (e.g., fund, function, object).', 'SCHEMA', N'edfi', 'TABLE', N'AccountCodeDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of the account code (e.g., fund, function, object).', 'SCHEMA', N'edfi', 'TABLE', N'AccountCodeDescriptor', 'COLUMN', N'AccountCodeCategory'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AccountCodeDescriptor', 'COLUMN', N'AccountCodeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first date the account code is valid.', 'SCHEMA', N'edfi', 'TABLE', N'AccountCodeDescriptor', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The last date the account code is valid.', 'SCHEMA', N'edfi', 'TABLE', N'AccountCodeDescriptor', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of account codes defined for the education accounting system organized by account code type (e.g., fund, function, object) that map to the account.', 'SCHEMA', N'edfi', 'TABLE', N'AccountCode', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of account codes defined for the education accounting system organized by account code type (e.g., fund, function, object) that map to the account.', 'SCHEMA', N'edfi', 'TABLE', N'AccountCode', 'COLUMN', N'AccountCodeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The alphanumeric string that identifies the account.', 'SCHEMA', N'edfi', 'TABLE', N'AccountCode', 'COLUMN', N'AccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'AccountCode', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The financial accounting year.', 'SCHEMA', N'edfi', 'TABLE', N'AccountCode', 'COLUMN', N'FiscalYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This financial entity represents a funding source combined with its purpose and type of transaction. It provides a formal record of the debits and credits relating to the specific account.', 'SCHEMA', N'edfi', 'TABLE', N'Account', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The alphanumeric string that identifies the account.', 'SCHEMA', N'edfi', 'TABLE', N'Account', 'COLUMN', N'AccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'Account', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The financial accounting year.', 'SCHEMA', N'edfi', 'TABLE', N'Account', 'COLUMN', N'FiscalYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An accountability rating for a school or district.', 'SCHEMA', N'edfi', 'TABLE', N'AccountabilityRating', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'AccountabilityRating', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An accountability rating level, designation, or assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AccountabilityRating', 'COLUMN', N'Rating'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the rating was awarded.', 'SCHEMA', N'edfi', 'TABLE', N'AccountabilityRating', 'COLUMN', N'RatingDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The organization that assessed the rating.', 'SCHEMA', N'edfi', 'TABLE', N'AccountabilityRating', 'COLUMN', N'RatingOrganization'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The program associated with the AccountabilityRating (e.g., NCLB, AEIS).', 'SCHEMA', N'edfi', 'TABLE', N'AccountabilityRating', 'COLUMN', N'RatingProgram'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title of the rating (e.g., School Rating, Safety Score).', 'SCHEMA', N'edfi', 'TABLE', N'AccountabilityRating', 'COLUMN', N'RatingTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year for which the AccountabilityRating is assessed.', 'SCHEMA', N'edfi', 'TABLE', N'AccountabilityRating', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the category of achievement attributed to the learner.', 'SCHEMA', N'edfi', 'TABLE', N'AchievementCategoryDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AchievementCategoryDescriptor', 'COLUMN', N'AchievementCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AchievementCategoryDescriptor', 'COLUMN', N'AchievementCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of achievement attributed to the learner.', 'SCHEMA', N'edfi', 'TABLE', N'AchievementCategoryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AchievementCategory', 'SCHEMA', N'edfi', 'TABLE', N'AchievementCategoryType', 'COLUMN', N'AchievementCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AchievementCategoryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AchievementCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'AchievementCategoryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AchievementCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'AchievementCategoryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This financial entity represents the sum of the financial transactions to date relating to a specific account.', 'SCHEMA', N'edfi', 'TABLE', N'Actual', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The alphanumeric string that identifies the account.', 'SCHEMA', N'edfi', 'TABLE', N'Actual', 'COLUMN', N'AccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current balance for the account.', 'SCHEMA', N'edfi', 'TABLE', N'Actual', 'COLUMN', N'AmountToDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date of the reported actual element.', 'SCHEMA', N'edfi', 'TABLE', N'Actual', 'COLUMN', N'AsOfDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'Actual', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The financial accounting year.', 'SCHEMA', N'edfi', 'TABLE', N'Actual', 'COLUMN', N'FiscalYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of additional credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'AdditionalCreditType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AdditionalCredit', 'SCHEMA', N'edfi', 'TABLE', N'AdditionalCreditType', 'COLUMN', N'AdditionalCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AdditionalCreditType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AdditionalCredit type.', 'SCHEMA', N'edfi', 'TABLE', N'AdditionalCreditType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AdditionalCredit type.', 'SCHEMA', N'edfi', 'TABLE', N'AdditionalCreditType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of address listed for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'AddressType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Address', 'SCHEMA', N'edfi', 'TABLE', N'AddressType', 'COLUMN', N'AddressTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AddressType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Address type.', 'SCHEMA', N'edfi', 'TABLE', N'AddressType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Address type.', 'SCHEMA', N'edfi', 'TABLE', N'AddressType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The environment in which the test was administered. For example:
    Electronic
    Classroom
    Testing Center
    ...', 'SCHEMA', N'edfi', 'TABLE', N'AdministrationEnvironmentType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AdministrationEnvironment', 'SCHEMA', N'edfi', 'TABLE', N'AdministrationEnvironmentType', 'COLUMN', N'AdministrationEnvironmentTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AdministrationEnvironmentType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AdministrationEnvironment type.', 'SCHEMA', N'edfi', 'TABLE', N'AdministrationEnvironmentType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AdministrationEnvironment type.', 'SCHEMA', N'edfi', 'TABLE', N'AdministrationEnvironmentType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor holds the type of education institution as classified by its funding source (e.g., public or private).', 'SCHEMA', N'edfi', 'TABLE', N'AdministrativeFundingControlDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AdministrativeFundingControlDescriptor', 'COLUMN', N'AdministrativeFundingControlDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AdministrativeFundingControlDescriptor', 'COLUMN', N'AdministrativeFundingControlTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of education institution as classified by its funding source.', 'SCHEMA', N'edfi', 'TABLE', N'AdministrativeFundingControlType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AdministrativeFundingControl', 'SCHEMA', N'edfi', 'TABLE', N'AdministrativeFundingControlType', 'COLUMN', N'AdministrativeFundingControlTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AdministrativeFundingControlType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AdministrativeFundingControl type.', 'SCHEMA', N'edfi', 'TABLE', N'AdministrativeFundingControlType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AdministrativeFundingControl type.', 'SCHEMA', N'edfi', 'TABLE', N'AdministrativeFundingControlType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentAcademicSubject', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentAcademicSubject', 'COLUMN', N'AcademicSubjectDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentAcademicSubject', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentAcademicSubject', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade level(s) for which an assessment is designed. The semantics of null is assumed to mean that the assessment is not associated with any grade level.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentAssessedGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentAssessedGradeLevel', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade level(s) for which an assessment is designed. The semantics of null is assumed to mean that the assessment is not associated with any grade level.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentAssessedGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentAssessedGradeLevel', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor holds the category of an assessment based on format and content.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentCategoryDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentCategoryDescriptor', 'COLUMN', N'AssessmentCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentCategoryDescriptor', 'COLUMN', N'AssessmentCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of an assessment based on format and content. For example:
        Achievement test
        Advanced placement test
        Alternate assessment/grade-level standards
        Attitudinal test
        Cognitive and perceptual skills test
        ...', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentCategoryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AssessmentCategory', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentCategoryType', 'COLUMN', N'AssessmentCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentCategoryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AssessmentCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentCategoryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AssessmentCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentCategoryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person or organization chiefly responsible for the intellectual content of the standard.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandardAuthor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandardAuthor', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person or organization chiefly responsible for the intellectual content of the standard.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandardAuthor', 'COLUMN', N'Author'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandardAuthor', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication as to whether an assessment conforms to a standard (e.g., local standard, statewide standard, regional standard, association standard).', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The beginning of the period during which this learning standard document is intended for use.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The end of the period during which this learning standard document is intended for use.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', 'COLUMN', N'MandatingEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date on which this content was first published.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', 'COLUMN', N'PublicationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown).', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', 'COLUMN', N'PublicationStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The year at which this content was first published.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', 'COLUMN', N'PublicationYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the content standard, for example Common Core.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', 'COLUMN', N'Title'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An unambiguous reference to the standards using a network-resolvable URI.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', 'COLUMN', N'URI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The version identifier for the content.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentContentStandard', 'COLUMN', N'Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The periods or windows defined in which an assessment is supposed to be administered.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyAssessmentPeriod', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title or name of the AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyAssessmentPeriod', 'COLUMN', N'AssessmentFamilyTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The periods or windows defined in which an assessment is supposed to be administered.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyAssessmentPeriod', 'COLUMN', N'AssessmentPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person or organization chiefly responsible for the intellectual content of the standard.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandardAuthor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title or name of the AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandardAuthor', 'COLUMN', N'AssessmentFamilyTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person or organization chiefly responsible for the intellectual content of the standard.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandardAuthor', 'COLUMN', N'Author'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication as to whether an assessment conforms to a standard (e.g., local standard, statewide standard, regional standard, association standard).', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title or name of the AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandard', 'COLUMN', N'AssessmentFamilyTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The beginning of the period during which this learning standard document is intended for use.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandard', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The end of the period during which this learning standard document is intended for use.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandard', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandard', 'COLUMN', N'MandatingEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date on which this content was first published.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandard', 'COLUMN', N'PublicationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown).', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandard', 'COLUMN', N'PublicationStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The year at which this content was first published.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandard', 'COLUMN', N'PublicationYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the content standard, for example Common Core.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandard', 'COLUMN', N'Title'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An unambiguous reference to the standards using a network-resolvable URI.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandard', 'COLUMN', N'URI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The version identifier for the content.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyContentStandard', 'COLUMN', N'Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment family by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyIdentificationCode', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title or name of the AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyIdentificationCode', 'COLUMN', N'AssessmentFamilyTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyIdentificationCode', 'COLUMN', N'AssessmentIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The organization code or name assigning the assessment identification code.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyIdentificationCode', 'COLUMN', N'AssigningOrganizationIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyIdentificationCode', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the languages in which the AssessmentFamily is designed.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyLanguage', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title or name of the AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyLanguage', 'COLUMN', N'AssessmentFamilyTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the languages in which the AssessmentFamily is designed.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamilyLanguage', 'COLUMN', N'LanguageDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents a logical grouping or association of assessments that share a common purpose, heritage or content standard. There may be hierarchiesof assessment families, characteristics (e.g., Academic Subject) specified for assessment families, by convention, are inherited by the Assessments associated with the AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamily', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment family.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamily', 'COLUMN', N'AcademicSubjectDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The typical grade level for which an assessment family is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example: Adult, Prekindergarten, First grade, Second grade, etc.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamily', 'COLUMN', N'AssessedGradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of an assessment based on format and content. For example: Achievement test, Advanced placement test, Alternate assessment/grade-level standards, Attitudinal test, Cognitive, and perceptual skills test, etc.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamily', 'COLUMN', N'AssessmentCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title or name of the AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamily', 'COLUMN', N'AssessmentFamilyTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'If the assessment spans a range of grades, then this attribute holds the lowest grade assessed. If only one grade level is assessed, then this attribute is omitted.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamily', 'COLUMN', N'LowestAssessedGradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessments in this AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamily', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects the specific nomenclature used for this level of AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamily', 'COLUMN', N'Nomenclature'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title or name of the AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamily', 'COLUMN', N'ParentAssessmentFamilyTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year that the conceptual design for the AssessmentFamily was most recently revised substantially.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamily', 'COLUMN', N'RevisionDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The version identifier for the AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentFamily', 'COLUMN', N'Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationCode', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationCode', 'COLUMN', N'AssessmentIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationCode', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The organization code or name assigning the assessment identification code.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationCode', 'COLUMN', N'AssigningOrganizationIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationCode', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationCode', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor holds a coding scheme that is used for identification and record-keeping purposes by schools, social services or other agencies to refer to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationSystemDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationSystemDescriptor', 'COLUMN', N'AssessmentIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationSystemDescriptor', 'COLUMN', N'AssessmentIdentificationSystemTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A coding scheme that is used for identification and record-keeping purposes by schools, social services or other agencies to refer to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationSystemType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AssessmentIdentificationSystem', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationSystemType', 'COLUMN', N'AssessmentIdentificationSystemTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationSystemType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AssessmentIdentificationSystem type.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationSystemType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AssessmentIdentificationSystem type.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentIdentificationSystemType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Category or type of the assessment item (e.g., Multiple Choice, Analytic, Prose).', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemCategoryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AssessmentItemCategory', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemCategoryType', 'COLUMN', N'AssessmentItemCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemCategoryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AssessmentItemCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemCategoryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AssessmentItemCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemCategoryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'LearningStandard tested by this item.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemLearningStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemLearningStandard', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemLearningStandard', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemLearningStandard', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemLearningStandard', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The analyzed result of a student''s response to an assessment item.. For example:
    Correct
    Incorrect
    Met standard
    ...', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemResultType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AssessmentItemResult', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemResultType', 'COLUMN', N'AssessmentItemResultTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemResultType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AssessmentItemResult type.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemResultType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AssessmentItemResult type.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItemResultType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents one of many single measures that make up an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItem', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItem', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Category or type of the AssessmentItem. For example:
        Multiple choice
        Analytic
        Prose
        ...', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItem', 'COLUMN', N'AssessmentItemCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The correct response for the AssessmentItem.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItem', 'COLUMN', N'CorrectResponse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The duration of time allotted for the AssessmentItem.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItem', 'COLUMN', N'ExpectedTimeAssessed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItem', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The maximum raw score achievable across all assessment items that are correct and scored at the maximum.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItem', 'COLUMN', N'MaxRawScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItem', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects the specific nomenclature used for AssessmentItem.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentItem', 'COLUMN', N'Nomenclature'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the languages in which the assessment is designed.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentLanguage', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentLanguage', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the languages in which the assessment is designed.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentLanguage', 'COLUMN', N'LanguageDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentLanguage', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Definition of the performance levels and the associated cut scores. Three styles are supported:
        1. Specification of performance level by minimum and maximum score
        2. Specification of performance level by cut score, using only minimum score
        3. Specification of performance level without any mapping to scores.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPerformanceLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPerformanceLevel', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPerformanceLevel', 'COLUMN', N'AssessmentReportingMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The maximum score to make the indicated level of performance.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPerformanceLevel', 'COLUMN', N'MaximumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The minimum score required to make the indicated level of performance.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPerformanceLevel', 'COLUMN', N'MinimumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPerformanceLevel', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The performance level(s) defined for the assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPerformanceLevel', 'COLUMN', N'PerformanceLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The datatype of the result. The results can be expressed as a number, percentile,range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPerformanceLevel', 'COLUMN', N'ResultDatatypeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor holds the period of time window in which an assessment is supposed to be administered (e.g., Beginning of Year, Middle of Year, End of Year).', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPeriodDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPeriodDescriptor', 'COLUMN', N'AssessmentPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first date the assessment is to be administered.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPeriodDescriptor', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The last date the assessment is to be administered.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentPeriodDescriptor', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The programs associated with the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentProgram', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentProgram', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentProgram', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentProgram', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentProgram', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentProgram', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentReportingMethodType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AssessmentReportingMethod', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentReportingMethodType', 'COLUMN', N'AssessmentReportingMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentReportingMethodType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AssessmentReportingMethod type.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentReportingMethodType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AssessmentReportingMethod type.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentReportingMethodType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Definition of the scores to be expected from this assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentScore', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentScore', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentScore', 'COLUMN', N'AssessmentReportingMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The maximum score possible on the assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentScore', 'COLUMN', N'MaximumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The minimum score possible on the assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentScore', 'COLUMN', N'MinimumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentScore', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentScore', 'COLUMN', N'ResultDatatypeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Section(s) to which the Assessment is associated.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentSection', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentSection', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentSection', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentSection', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentSection', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentSection', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentSection', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentSection', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentSection', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentSection', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'AssessmentSection', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents a tool, instrument, process, or exhibition composed of a systematic sampling of behavior for measuring a student''s competence, knowledge,skills, or behavior. An assessment can be used to measure differences inindividuals or groups and changes in performance from one occasion to the next.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that the assessment is adaptive.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'AdaptiveAssessment'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of an assessment based on format and content. For example:
        Achievement test
        Advanced placement test
        Alternate assessment/grade-level standards
        Attitudinal test
        Cognitive and perceptual skills test
        ...', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'AssessmentCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title or name of the AssessmentFamily.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'AssessmentFamilyTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'AssessmentForm'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The period or window in which an assessment is supposed to be administered.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'AssessmentPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title or name of the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'AssessmentTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The maximum raw score achievable across all assessment items that are correct and scored at the maximum.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'MaxRawScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects the specific nomenclature used for Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'Nomenclature'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year that the conceptual design for the assessment was most recently revised substantially.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'RevisionDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The version identifier for the assessment.', 'SCHEMA', N'edfi', 'TABLE', N'Assessment', 'COLUMN', N'Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor holds the category of the attendance event (e.g., tardy). The map to known enumeration values is required.', 'SCHEMA', N'edfi', 'TABLE', N'AttendanceEventCategoryDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AttendanceEventCategoryDescriptor', 'COLUMN', N'AttendanceEventCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'AttendanceEventCategoryDescriptor', 'COLUMN', N'AttendanceEventCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A code categorizing the attendance event (e.g., excused absence, unexcused absence).', 'SCHEMA', N'edfi', 'TABLE', N'AttendanceEventCategoryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for AttendanceEventCategory', 'SCHEMA', N'edfi', 'TABLE', N'AttendanceEventCategoryType', 'COLUMN', N'AttendanceEventCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'AttendanceEventCategoryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the AttendanceEventCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'AttendanceEventCategoryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the AttendanceEventCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'AttendanceEventCategoryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor holds the categories of behavior describing a discipline incident.', 'SCHEMA', N'edfi', 'TABLE', N'BehaviorDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'BehaviorDescriptor', 'COLUMN', N'BehaviorDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'BehaviorDescriptor', 'COLUMN', N'BehaviorTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Enumeration items defining the categories of behavior coded for use in describing an incident.', 'SCHEMA', N'edfi', 'TABLE', N'BehaviorType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Behavior', 'SCHEMA', N'edfi', 'TABLE', N'BehaviorType', 'COLUMN', N'BehaviorTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'BehaviorType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Behavior type.', 'SCHEMA', N'edfi', 'TABLE', N'BehaviorType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Behavior type.', 'SCHEMA', N'edfi', 'TABLE', N'BehaviorType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The times at which this BellSchedule is intended to meet.', 'SCHEMA', N'edfi', 'TABLE', N'BellScheduleMeetingTime', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'An alternate name for the day (e.g., Red, Blue).', 'SCHEMA', N'edfi', 'TABLE', N'BellScheduleMeetingTime', 'COLUMN', N'AlternateDayName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name or title of the BellSchedule.', 'SCHEMA', N'edfi', 'TABLE', N'BellScheduleMeetingTime', 'COLUMN', N'BellScheduleName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'BellScheduleMeetingTime', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year of the CalendarDate.', 'SCHEMA', N'edfi', 'TABLE', N'BellScheduleMeetingTime', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the time of day the class ends.', 'SCHEMA', N'edfi', 'TABLE', N'BellScheduleMeetingTime', 'COLUMN', N'EndTime'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade levels the particular BellSchedule applies to.', 'SCHEMA', N'edfi', 'TABLE', N'BellScheduleMeetingTime', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of whether this meeting time is used for official daily attendance.', 'SCHEMA', N'edfi', 'TABLE', N'BellScheduleMeetingTime', 'COLUMN', N'OfficialAttendancePeriod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'BellScheduleMeetingTime', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the time of day the class begins.', 'SCHEMA', N'edfi', 'TABLE', N'BellScheduleMeetingTime', 'COLUMN', N'StartTime'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents the schedule of class period meeting times.', 'SCHEMA', N'edfi', 'TABLE', N'BellSchedule', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name or title of the BellSchedule.', 'SCHEMA', N'edfi', 'TABLE', N'BellSchedule', 'COLUMN', N'BellScheduleName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year of the CalendarDate.', 'SCHEMA', N'edfi', 'TABLE', N'BellSchedule', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade levels the particular BellSchedule applies to.', 'SCHEMA', N'edfi', 'TABLE', N'BellSchedule', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'BellSchedule', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This financial entity represents the amount of monies allocated to be spent or received by an education organization as related to a specific account.', 'SCHEMA', N'edfi', 'TABLE', N'Budget', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The alphanumeric string that identifies the account.', 'SCHEMA', N'edfi', 'TABLE', N'Budget', 'COLUMN', N'AccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Amount budgeted for the account for this fiscal year.', 'SCHEMA', N'edfi', 'TABLE', N'Budget', 'COLUMN', N'Amount'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date of the reported budget element.', 'SCHEMA', N'edfi', 'TABLE', N'Budget', 'COLUMN', N'AsOfDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'Budget', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The financial accounting year.', 'SCHEMA', N'edfi', 'TABLE', N'Budget', 'COLUMN', N'FiscalYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Additional description of the date such as date classification and duration of the event.', 'SCHEMA', N'edfi', 'TABLE', N'CalendarDateCalendarEvent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of scheduled or unscheduled event for the day. For example:
        Instructional day
        Teacher only day
        Holiday
        Make-up day
        Weather day
        Student late arrival/early dismissal.', 'SCHEMA', N'edfi', 'TABLE', N'CalendarDateCalendarEvent', 'COLUMN', N'CalendarEventDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year of the CalendarDate.', 'SCHEMA', N'edfi', 'TABLE', N'CalendarDateCalendarEvent', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The amount of time for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.', 'SCHEMA', N'edfi', 'TABLE', N'CalendarDateCalendarEvent', 'COLUMN', N'EventDuration'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'CalendarDateCalendarEvent', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents a day in the school calendar.', 'SCHEMA', N'edfi', 'TABLE', N'CalendarDate', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year of the CalendarDate.', 'SCHEMA', N'edfi', 'TABLE', N'CalendarDate', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'CalendarDate', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor holds the types of scheduled or unscheduled event for the day (e.g., Instructional day, Teacher only day, Holiday, Make-up day, Weather day, Student late arrival/early dismissal day).', 'SCHEMA', N'edfi', 'TABLE', N'CalendarEventDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'CalendarEventDescriptor', 'COLUMN', N'CalendarEventDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'CalendarEventDescriptor', 'COLUMN', N'CalendarEventTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of scheduled or unscheduled event for the day. For example:
        Instructional day
        Teacher only day
        Holiday
        Make-up day
        Weather day
        Student late arrival/early dismissal
        ...', 'SCHEMA', N'edfi', 'TABLE', N'CalendarEventType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CalendarEvent', 'SCHEMA', N'edfi', 'TABLE', N'CalendarEventType', 'COLUMN', N'CalendarEventTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CalendarEventType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CalendarEvent type.', 'SCHEMA', N'edfi', 'TABLE', N'CalendarEventType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CalendarEvent type.', 'SCHEMA', N'edfi', 'TABLE', N'CalendarEventType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The career cluster or pathway representing the career path of the Vocational/Career Tech concentrator.', 'SCHEMA', N'edfi', 'TABLE', N'CareerPathwayType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CareerPathway', 'SCHEMA', N'edfi', 'TABLE', N'CareerPathwayType', 'COLUMN', N'CareerPathwayTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CareerPathwayType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CareerPathway type.', 'SCHEMA', N'edfi', 'TABLE', N'CareerPathwayType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CareerPathway type.', 'SCHEMA', N'edfi', 'TABLE', N'CareerPathwayType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of agency that approved the establishment or continuation of a charter school.', 'SCHEMA', N'edfi', 'TABLE', N'CharterApprovalAgencyType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CharterApprovalAgency', 'SCHEMA', N'edfi', 'TABLE', N'CharterApprovalAgencyType', 'COLUMN', N'CharterApprovalAgencyTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CharterApprovalAgencyType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CharterApprovalAgency type.', 'SCHEMA', N'edfi', 'TABLE', N'CharterApprovalAgencyType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CharterApprovalAgency type.', 'SCHEMA', N'edfi', 'TABLE', N'CharterApprovalAgencyType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of charter school. For example: School Charter, Open Enrollment Charter.', 'SCHEMA', N'edfi', 'TABLE', N'CharterStatusType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CharterStatus', 'SCHEMA', N'edfi', 'TABLE', N'CharterStatusType', 'COLUMN', N'CharterStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CharterStatusType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CharterStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'CharterStatusType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CharterStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'CharterStatusType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of whether or not the person is a U.S. citizen.', 'SCHEMA', N'edfi', 'TABLE', N'CitizenshipStatusType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CitizenshipStatus', 'SCHEMA', N'edfi', 'TABLE', N'CitizenshipStatusType', 'COLUMN', N'CitizenshipStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CitizenshipStatusType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CitizenshipStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'CitizenshipStatusType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CitizenshipStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'CitizenshipStatusType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents the designation of a regularly scheduled series of class meetings at designated times and days of the week.', 'SCHEMA', N'edfi', 'TABLE', N'ClassPeriod', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'ClassPeriod', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'ClassPeriod', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the type of position the staff member holds in a specific class/section.', 'SCHEMA', N'edfi', 'TABLE', N'ClassroomPositionDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ClassroomPositionDescriptor', 'COLUMN', N'ClassroomPositionDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ClassroomPositionDescriptor', 'COLUMN', N'ClassroomPositionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of position the staff member holds in the specific class/section.', 'SCHEMA', N'edfi', 'TABLE', N'ClassroomPositionType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ClassroomPosition', 'SCHEMA', N'edfi', 'TABLE', N'ClassroomPositionType', 'COLUMN', N'ClassroomPositionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ClassroomPositionType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ClassroomPosition type.', 'SCHEMA', N'edfi', 'TABLE', N'ClassroomPositionType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ClassroomPosition type.', 'SCHEMA', N'edfi', 'TABLE', N'ClassroomPositionType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The (optional) program associated with this Cohort (e.g., special education).', 'SCHEMA', N'edfi', 'TABLE', N'CohortProgram', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name or ID for the Cohort.', 'SCHEMA', N'edfi', 'TABLE', N'CohortProgram', 'COLUMN', N'CohortIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CohortProgram', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CohortProgram', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'CohortProgram', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'CohortProgram', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The scope of cohort (e.g., school, district, classroom).', 'SCHEMA', N'edfi', 'TABLE', N'CohortScopeType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CohortScopeType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CohortScope', 'SCHEMA', N'edfi', 'TABLE', N'CohortScopeType', 'COLUMN', N'CohortScopeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CohortScope type.', 'SCHEMA', N'edfi', 'TABLE', N'CohortScopeType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CohortScope type.', 'SCHEMA', N'edfi', 'TABLE', N'CohortScopeType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of the cohort (e.g., academic intervention, classroom breakout).', 'SCHEMA', N'edfi', 'TABLE', N'CohortType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CohortType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Cohort', 'SCHEMA', N'edfi', 'TABLE', N'CohortType', 'COLUMN', N'CohortTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Cohort type.', 'SCHEMA', N'edfi', 'TABLE', N'CohortType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Cohort type.', 'SCHEMA', N'edfi', 'TABLE', N'CohortType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The enumeration items for the set of cohort years.', 'SCHEMA', N'edfi', 'TABLE', N'CohortYearType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CohortYearType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CohortYear', 'SCHEMA', N'edfi', 'TABLE', N'CohortYearType', 'COLUMN', N'CohortYearTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CohortYear type.', 'SCHEMA', N'edfi', 'TABLE', N'CohortYearType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CohortYear type.', 'SCHEMA', N'edfi', 'TABLE', N'CohortYearType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents any type of list of designated students for tracking, analysis, or intervention.', 'SCHEMA', N'edfi', 'TABLE', N'Cohort', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The academic subject associated with an academic intervention.', 'SCHEMA', N'edfi', 'TABLE', N'Cohort', 'COLUMN', N'AcademicSubjectDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of the Cohort and its purpose.', 'SCHEMA', N'edfi', 'TABLE', N'Cohort', 'COLUMN', N'CohortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name or ID for the Cohort.', 'SCHEMA', N'edfi', 'TABLE', N'Cohort', 'COLUMN', N'CohortIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The scope of cohort (e.g., school, district, classroom).', 'SCHEMA', N'edfi', 'TABLE', N'Cohort', 'COLUMN', N'CohortScopeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of cohort (e.g., academic intervention, classroom breakout).', 'SCHEMA', N'edfi', 'TABLE', N'Cohort', 'COLUMN', N'CohortTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'Cohort', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines various levels for assessed competencies.', 'SCHEMA', N'edfi', 'TABLE', N'CompetencyLevelDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'CompetencyLevelDescriptor', 'COLUMN', N'CompetencyLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A conversion of the level to a standard set of competency levels.', 'SCHEMA', N'edfi', 'TABLE', N'CompetencyLevelDescriptor', 'COLUMN', N'PerformanceBaseConversionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity holds additional competencies for student achievement that are not associated with specific learning objectives (e.g., paying attention in class).', 'SCHEMA', N'edfi', 'TABLE', N'CompetencyObjective', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Identifier for the CompetencyObjective.', 'SCHEMA', N'edfi', 'TABLE', N'CompetencyObjective', 'COLUMN', N'CompetencyObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of the student competency objective.', 'SCHEMA', N'edfi', 'TABLE', N'CompetencyObjective', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CompetencyObjective', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The designated title of the CompetencyObjective.', 'SCHEMA', N'edfi', 'TABLE', N'CompetencyObjective', 'COLUMN', N'Objective'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade level for which the CompetencyObjective is targeted.', 'SCHEMA', N'edfi', 'TABLE', N'CompetencyObjective', 'COLUMN', N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'One or more statements that describes the criteria used by teachers and students to check for attainment of a competency objective. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the CompetencyObjective.', 'SCHEMA', N'edfi', 'TABLE', N'CompetencyObjective', 'COLUMN', N'SuccessCriteria'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The predominate type or kind characterizing the learning resource.', 'SCHEMA', N'edfi', 'TABLE', N'ContentClassType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ContentClassType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ContentClass', 'SCHEMA', N'edfi', 'TABLE', N'ContentClassType', 'COLUMN', N'ContentClassTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ContentClass type.', 'SCHEMA', N'edfi', 'TABLE', N'ContentClassType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ContentClass type.', 'SCHEMA', N'edfi', 'TABLE', N'ContentClassType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'In the Migrant Education program, a provision allows continuation of services after a child is no longer considered migratory for certain reasons. This descriptor holds the reasons prescribed in the statute. The mapping of descriptor values to known Ed-Fi enumeration values is required.', 'SCHEMA', N'edfi', 'TABLE', N'ContinuationOfServicesReasonDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ContinuationOfServicesReasonDescriptor', 'COLUMN', N'ContinuationOfServicesReasonDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ContinuationOfServicesReasonDescriptor', 'COLUMN', N'ContinuationOfServicesReasonTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'In the Migrant Education program, a provision allows continuation of services after a child is no longer considered migratory for certain reasons. This type holds the reasons prescribed in the statute.', 'SCHEMA', N'edfi', 'TABLE', N'ContinuationOfServicesReasonType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ContinuationOfServicesReasonType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ContinuationOfServicesReason', 'SCHEMA', N'edfi', 'TABLE', N'ContinuationOfServicesReasonType', 'COLUMN', N'ContinuationOfServicesReasonTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ContinuationOfServicesReason type.', 'SCHEMA', N'edfi', 'TABLE', N'ContinuationOfServicesReasonType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ContinuationOfServicesReason type.', 'SCHEMA', N'edfi', 'TABLE', N'ContinuationOfServicesReasonType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This financial entity represents the sum of the financial transactions to date for contracted staff. ContractedStaff includes "contractors" or "consultants" who perform services for an agreed upon fee, or an employee of a management service contracted to work on site.', 'SCHEMA', N'edfi', 'TABLE', N'ContractedStaff', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The alphanumeric string that identifies the account.', 'SCHEMA', N'edfi', 'TABLE', N'ContractedStaff', 'COLUMN', N'AccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current balance (amount paid to contractor) for account for the fiscal year.', 'SCHEMA', N'edfi', 'TABLE', N'ContractedStaff', 'COLUMN', N'AmountToDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date of the reported contracted staff element.', 'SCHEMA', N'edfi', 'TABLE', N'ContractedStaff', 'COLUMN', N'AsOfDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'ContractedStaff', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The financial accounting year.', 'SCHEMA', N'edfi', 'TABLE', N'ContractedStaff', 'COLUMN', N'FiscalYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'ContractedStaff', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The rate by which a cost applies (e.g. $1 per student).', 'SCHEMA', N'edfi', 'TABLE', N'CostRateType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CostRateType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CostRate', 'SCHEMA', N'edfi', 'TABLE', N'CostRateType', 'COLUMN', N'CostRateTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CostRate type.', 'SCHEMA', N'edfi', 'TABLE', N'CostRateType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CostRate type.', 'SCHEMA', N'edfi', 'TABLE', N'CostRateType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the name and code of the country.', 'SCHEMA', N'edfi', 'TABLE', N'CountryDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'CountryDescriptor', 'COLUMN', N'CountryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The result from the student''s attempt to take the course, for example:
    Pass
    Fail
    Incomplete
    Withdrawn', 'SCHEMA', N'edfi', 'TABLE', N'CourseAttemptResultType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CourseAttemptResultType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CourseAttemptResult', 'SCHEMA', N'edfi', 'TABLE', N'CourseAttemptResultType', 'COLUMN', N'CourseAttemptResultTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CourseAttemptResult type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseAttemptResultType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CourseAttemptResult type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseAttemptResultType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The competency levels defined to rate the student for the course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseCompetencyLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The competency levels defined to rate the student for the course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseCompetencyLevel', 'COLUMN', N'CompetencyLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseCompetencyLevel', 'COLUMN', N'CourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CourseCompetencyLevel', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Specifies whether the course was defined by the state education agency, local education agency, school, or national organization.', 'SCHEMA', N'edfi', 'TABLE', N'CourseDefinedByType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CourseDefinedByType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CourseDefinedBy', 'SCHEMA', N'edfi', 'TABLE', N'CourseDefinedByType', 'COLUMN', N'CourseDefinedByTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CourseDefinedBy type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseDefinedByType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CourseDefinedBy type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseDefinedByType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of whether or not this course being described is included in the computation of the student''s Grade Point Average, and if so, if it is weighted differently than regular courses.', 'SCHEMA', N'edfi', 'TABLE', N'CourseGPAApplicabilityType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CourseGPAApplicabilityType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CourseGPAApplicability', 'SCHEMA', N'edfi', 'TABLE', N'CourseGPAApplicabilityType', 'COLUMN', N'CourseGPAApplicabilityTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CourseGPAApplicability type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseGPAApplicabilityType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CourseGPAApplicability type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseGPAApplicabilityType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The code that identifies the organization of subject matter and related learning experiences provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationCode', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The organization code or name assigning the staff Identification Code.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationCode', 'COLUMN', N'AssigningOrganizationIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationCode', 'COLUMN', N'CourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationCode', 'COLUMN', N'CourseIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationCode', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a "/". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationCode', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines a standard code that identifies the organization of subject matter and related learning experiences provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationSystemDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationSystemDescriptor', 'COLUMN', N'CourseIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationSystemDescriptor', 'COLUMN', N'CourseIdentificationSystemTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students. In addition to identifying courses using the appropriate state codes, cross referencing courses with one of the national course codes is encouraged.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationSystemType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationSystemType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CourseIdentificationSystem', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationSystemType', 'COLUMN', N'CourseIdentificationSystemTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CourseIdentificationSystem type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationSystemType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CourseIdentificationSystem type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseIdentificationSystemType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Learning Objectives to be mastered in the course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLearningObjective', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLearningObjective', 'COLUMN', N'CourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLearningObjective', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'CourseLearningObjective', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLearningObjective', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Learning Standard(s) to be taught by the course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLearningStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLearningStandard', 'COLUMN', N'CourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLearningStandard', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'CourseLearningStandard', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The item for indication of the nature and difficulty of instruction: Remedial, Basic, Honors, Ap, IB, Dual Credit, CTE. etc.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLevelCharacteristicType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLevelCharacteristicType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CourseLevelCharacteristic', 'SCHEMA', N'edfi', 'TABLE', N'CourseLevelCharacteristicType', 'COLUMN', N'CourseLevelCharacteristicTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CourseLevelCharacteristic type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLevelCharacteristicType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CourseLevelCharacteristic type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLevelCharacteristicType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of specific program or designation with which the course is associated (e.g., AP, IB, Dual Credit, CTE).', 'SCHEMA', N'edfi', 'TABLE', N'CourseLevelCharacteristic', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLevelCharacteristic', 'COLUMN', N'CourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of specific program or designation with which the course is associated (e.g., AP, IB, Dual Credit, CTE).', 'SCHEMA', N'edfi', 'TABLE', N'CourseLevelCharacteristic', 'COLUMN', N'CourseLevelCharacteristicTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CourseLevelCharacteristic', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade levels in which the course is offered.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOfferedGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOfferedGradeLevel', 'COLUMN', N'CourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOfferedGradeLevel', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade levels in which the course is offered.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOfferedGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of curriculum used in an early learning classroom or group.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOfferingCurriculumUsed', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of curriculum used in an early learning classroom or group.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOfferingCurriculumUsed', 'COLUMN', N'CurriculumUsedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOfferingCurriculumUsed', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'CourseOfferingCurriculumUsed', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOfferingCurriculumUsed', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOfferingCurriculumUsed', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents an entry in the course catalog of available courses offered by the school during a session.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOffering', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOffering', 'COLUMN', N'CourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOffering', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The planned total number of clock minutes of instruction for this course offering. Generally, this should be at least as many minutes as is required for completion by the related state- or district-defined course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOffering', 'COLUMN', N'InstructionalTimePlanned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOffering', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The descriptive name given to a course of study offered in the school, if different from the CourseTitle.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOffering', 'COLUMN', N'LocalCourseTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'CourseOffering', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOffering', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'CourseOffering', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average.', 'SCHEMA', N'edfi', 'TABLE', N'CourseRepeatCodeType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CourseRepeatCodeType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CourseRepeatCode', 'SCHEMA', N'edfi', 'TABLE', N'CourseRepeatCodeType', 'COLUMN', N'CourseRepeatCodeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CourseRepeatCode type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseRepeatCodeType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CourseRepeatCode type.', 'SCHEMA', N'edfi', 'TABLE', N'CourseRepeatCodeType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of additional credits a student attempted and could earn for successfully completing a given course (e.g., dual credit, AP, IB).', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscriptEarnedAdditionalCredits', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscriptEarnedAdditionalCredits', 'COLUMN', N'AdditionalCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscriptEarnedAdditionalCredits', 'COLUMN', N'CourseAttemptResultTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscriptEarnedAdditionalCredits', 'COLUMN', N'CourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscriptEarnedAdditionalCredits', 'COLUMN', N'CourseEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscriptEarnedAdditionalCredits', 'COLUMN', N'Credits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscriptEarnedAdditionalCredits', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscriptEarnedAdditionalCredits', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscriptEarnedAdditionalCredits', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscriptEarnedAdditionalCredits', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity is the final record of a student''s performance in their courses at the end of a semester or school year.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the school that identifies the course offering, the code from an external educational organization, or other alternate course code.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'AlternativeCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The descriptive name given to a course of study offered in the school, if different from the CourseTitle.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'AlternativeCourseTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'AttemptedCreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'AttemptedCredits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'AttemptedCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'CourseAttemptResultTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'CourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'CourseEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'CourseRepeatCodeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'CourseTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'EarnedCreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'EarnedCredits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'EarnedCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The final indicator of student performance in a class as submitted by the instructor.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'FinalLetterGradeEarned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The final indicator of student performance in a class as submitted by the instructor.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'FinalNumericGradeEarned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method the credits were earned (e.g., Classroom, Examination, Transfer).', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'MethodCreditEarnedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Student''s grade level at time of course.', 'SCHEMA', N'edfi', 'TABLE', N'CourseTranscript', 'COLUMN', N'WhenTakenGradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This educational entity represents the organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis.', 'SCHEMA', N'edfi', 'TABLE', N'Course', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The intended major subject area of the course.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'AcademicSubjectDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates the career cluster or pathway the course is associated with as part of a CTE curriculum.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'CareerPathwayTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a course.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'CourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Specifies whether the course was defined by the SEA, LEA, School, or national organization.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'CourseDefinedByTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A description of the content standards and goals covered in the course. Reference may be made to state or national content standards.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'CourseDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of whether or not the course being described is included in the computation of the student''s Grade Point Average, and if so, if it is weighted differently from regular courses.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'CourseGPAApplicabilityTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, and language arts).', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'CourseTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the course was adopted by the education agency.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'DateCourseAdopted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication that this course may satisfy high school graduation requirements in the course''s subject area.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'HighSchoolCourseRequirement'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'MaximumAvailableCreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'MaximumAvailableCredits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'MaximumAvailableCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'MinimumAvailableCreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'MinimumAvailableCredits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'MinimumAvailableCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of parts identified for a course.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'NumberOfParts'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The actual or estimated number of clock minutes required for class completion.  This number is especially important for career and technical education classes and may represent (in minutes) the clock hour requirement of the class.', 'SCHEMA', N'edfi', 'TABLE', N'Course', 'COLUMN', N'TimeRequiredForCompletion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the fields of certification that the state education agency offers to teachers.', 'SCHEMA', N'edfi', 'TABLE', N'CredentialFieldDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A classification of the certification fields to academic subjects.', 'SCHEMA', N'edfi', 'TABLE', N'CredentialFieldDescriptor', 'COLUMN', N'AcademicSubjectDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'CredentialFieldDescriptor', 'COLUMN', N'CredentialFieldDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the category of credential an individual holds.', 'SCHEMA', N'edfi', 'TABLE', N'CredentialType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CredentialType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Credential', 'SCHEMA', N'edfi', 'TABLE', N'CredentialType', 'COLUMN', N'CredentialTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Credential type.', 'SCHEMA', N'edfi', 'TABLE', N'CredentialType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Credential type.', 'SCHEMA', N'edfi', 'TABLE', N'CredentialType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'CreditType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CreditType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Credit', 'SCHEMA', N'edfi', 'TABLE', N'CreditType', 'COLUMN', N'CreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Credit type.', 'SCHEMA', N'edfi', 'TABLE', N'CreditType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Credit type.', 'SCHEMA', N'edfi', 'TABLE', N'CreditType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of curriculum used in an early learning classroom or group.', 'SCHEMA', N'edfi', 'TABLE', N'CurriculumUsedType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'CurriculumUsedType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for CurriculumUsed', 'SCHEMA', N'edfi', 'TABLE', N'CurriculumUsedType', 'COLUMN', N'CurriculumUsedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the CurriculumUsed type.', 'SCHEMA', N'edfi', 'TABLE', N'CurriculumUsedType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the CurriculumUsed type.', 'SCHEMA', N'edfi', 'TABLE', N'CurriculumUsedType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The way in which an intervention was implemented: individual, small group, whole class, or whole school.', 'SCHEMA', N'edfi', 'TABLE', N'DeliveryMethodType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'DeliveryMethodType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for DeliveryMethod', 'SCHEMA', N'edfi', 'TABLE', N'DeliveryMethodType', 'COLUMN', N'DeliveryMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the DeliveryMethod type.', 'SCHEMA', N'edfi', 'TABLE', N'DeliveryMethodType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the DeliveryMethod type.', 'SCHEMA', N'edfi', 'TABLE', N'DeliveryMethodType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This is the base entity for the descriptor pattern.', 'SCHEMA', N'edfi', 'TABLE', N'Descriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A code or abbreviation that is used to refer to the descriptor.', 'SCHEMA', N'edfi', 'TABLE', N'Descriptor', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of the descriptor.', 'SCHEMA', N'edfi', 'TABLE', N'Descriptor', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'Descriptor', 'COLUMN', N'DescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The beginning date of the period when the descriptor is in effect. If omitted, the default is immediate effectiveness.', 'SCHEMA', N'edfi', 'TABLE', N'Descriptor', 'COLUMN', N'EffectiveBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The end date of the period when the descriptor is in effect.', 'SCHEMA', N'edfi', 'TABLE', N'Descriptor', 'COLUMN', N'EffectiveEndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A globally unique namespace that identifies this descriptor set. Author is strongly encouraged to use the Universal Resource Identifier (http, ftp, file, etc.) for the source of the descriptor definition. Best practice is for this source to be the descriptor file itself, so that it can be machine-readable and be fetched in real-time, if necessary.', 'SCHEMA', N'edfi', 'TABLE', N'Descriptor', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'Descriptor', 'COLUMN', N'PriorDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A shortened description for the descriptor.', 'SCHEMA', N'edfi', 'TABLE', N'Descriptor', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines diagnoses that interventions are intended to target.', 'SCHEMA', N'edfi', 'TABLE', N'DiagnosisDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'DiagnosisDescriptor', 'COLUMN', N'DiagnosisDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'DiagnosisDescriptor', 'COLUMN', N'DiagnosisTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Targeted purpose of the intervention (e.g., attendance issue, dropout risk).', 'SCHEMA', N'edfi', 'TABLE', N'DiagnosisType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'DiagnosisType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Diagnosis type.', 'SCHEMA', N'edfi', 'TABLE', N'DiagnosisType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Diagnosis', 'SCHEMA', N'edfi', 'TABLE', N'DiagnosisType', 'COLUMN', N'DiagnosisTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Diagnosis type.', 'SCHEMA', N'edfi', 'TABLE', N'DiagnosisType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The level of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.', 'SCHEMA', N'edfi', 'TABLE', N'DiplomaLevelType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'DiplomaLevelType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the DiplomaLevel type.', 'SCHEMA', N'edfi', 'TABLE', N'DiplomaLevelType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for DiplomaLevel', 'SCHEMA', N'edfi', 'TABLE', N'DiplomaLevelType', 'COLUMN', N'DiplomaLevelTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the DiplomaLevel type.', 'SCHEMA', N'edfi', 'TABLE', N'DiplomaLevelType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.', 'SCHEMA', N'edfi', 'TABLE', N'DiplomaType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'DiplomaType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Diploma type.', 'SCHEMA', N'edfi', 'TABLE', N'DiplomaType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Diploma', 'SCHEMA', N'edfi', 'TABLE', N'DiplomaType', 'COLUMN', N'DiplomaTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Diploma type.', 'SCHEMA', N'edfi', 'TABLE', N'DiplomaType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of disability designation (e.g., IDEA, Section 504).', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityCategoryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityCategoryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the DisabilityCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityCategoryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for DisabilityCategory', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityCategoryType', 'COLUMN', N'DisabilityCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the DisabilityCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityCategoryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines a student''s impairment.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Whether the disability code is IDEA, Section 504, or other disability designation.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityDescriptor', 'COLUMN', N'DisabilityCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityDescriptor', 'COLUMN', N'DisabilityDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityDescriptor', 'COLUMN', N'DisabilityTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The source that provided the disability determination.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityDeterminationSourceType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityDeterminationSourceType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the DisabilityDeterminationSource type.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityDeterminationSourceType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for DisabilityDeterminationSource', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityDeterminationSourceType', 'COLUMN', N'DisabilityDeterminationSourceTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the DisabilityDeterminationSource type.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityDeterminationSourceType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A disability condition that describes a child''s impairment.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Disability type.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Disability', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityType', 'COLUMN', N'DisabilityTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Disability type.', 'SCHEMA', N'edfi', 'TABLE', N'DisabilityType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reference to the DisciplineIncident associated with the DisciplineAction.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionDisciplineIncident', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifier assigned by the education organization to the DisciplineAction.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionDisciplineIncident', 'COLUMN', N'DisciplineActionIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date of the DisciplineAction.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionDisciplineIncident', 'COLUMN', N'DisciplineDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionDisciplineIncident', 'COLUMN', N'IncidentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionDisciplineIncident', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionDisciplineIncident', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Type of action, such as removal from the classroom, used to discipline the student involved as a perpetrator in a discipline incident.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionDiscipline', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifier assigned by the education organization to the DisciplineAction.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionDiscipline', 'COLUMN', N'DisciplineActionIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date of the DisciplineAction.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionDiscipline', 'COLUMN', N'DisciplineDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Type of action, such as removal from the classroom, used to discipline the student involved as a perpetrator in a discipline incident.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionDiscipline', 'COLUMN', N'DisciplineDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionDiscipline', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates the reason for the difference, if any, between the official and actual lengths of a student''s disciplinary assignment.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionLengthDifferenceReasonType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionLengthDifferenceReasonType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the DisciplineActionLengthDifferenceReason type.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionLengthDifferenceReasonType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for DisciplineActionLengthDifferenceReason', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionLengthDifferenceReasonType', 'COLUMN', N'DisciplineActionLengthDifferenceReasonTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the DisciplineActionLengthDifferenceReason type.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionLengthDifferenceReasonType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The staff responsible for enforcing the DisciplineAction.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionStaff', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifier assigned by the education organization to the DisciplineAction.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionStaff', 'COLUMN', N'DisciplineActionIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date of the DisciplineAction.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionStaff', 'COLUMN', N'DisciplineDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionStaff', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineActionStaff', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This event entity represents actions taken by an education organization after a disruptive event that is recorded as a discipline incident.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineAction', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates the actual length in school days of a student''s disciplinary assignment.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineAction', 'COLUMN', N'ActualDisciplineActionLength'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineAction', 'COLUMN', N'AssignmentSchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifier assigned by the education organization to the DisciplineAction.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineAction', 'COLUMN', N'DisciplineActionIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The length of time in school days for the DisciplineAction (e.g. removal, detention), if applicable.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineAction', 'COLUMN', N'DisciplineActionLength'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates the reason for the difference, if any, between the official and actual lengths of a student''s disciplinary assignment.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineAction', 'COLUMN', N'DisciplineActionLengthDifferenceReasonTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date of the DisciplineAction.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineAction', 'COLUMN', N'DisciplineDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether or not this disciplinary action taken against a student was imposed as a consequence of state or local zero tolerance policies.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineAction', 'COLUMN', N'RelatedToZeroTolerancePolicy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineAction', 'COLUMN', N'ResponsibilitySchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineAction', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the type of action or removal from the classroom used to discipline the student involved as a perpetrator in a discipline incident.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineDescriptor', 'COLUMN', N'DisciplineDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineDescriptor', 'COLUMN', N'DisciplineTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Describes behavior by category and provides a detailed description.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncidentBehavior', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Describes behavior by category and provides a detailed description.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncidentBehavior', 'COLUMN', N'BehaviorDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Specifies a more granular level of detail of a behavior involved in the incident.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncidentBehavior', 'COLUMN', N'BehaviorDetailedDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncidentBehavior', 'COLUMN', N'IncidentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncidentBehavior', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifies the type of weapon used during an incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncidentWeapon', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncidentWeapon', 'COLUMN', N'IncidentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncidentWeapon', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifies the type of weapon used during an incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncidentWeapon', 'COLUMN', N'WeaponDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This event entity represents an occurrence of an infraction ranging from a minor heavioral problem that disrupts the orderly functioning of a school or classroom (such as tardiness) to a criminal act that results in the involvement of a law enforcement official (such as robbery). A single event (e.g., a fight) is one incident regardless of how many perpetrators or victims are involved. Discipline incidents are events classified as warranting discipline action.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The case number assigned to the DisciplineIncident by law enforcement or other organization.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'CaseNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of any quantifiable monetary loss directly resulting from the DisciplineIncident. Examples include the value of repairs necessitated by vandalism of a school facility, or the value of personnel resources used for repairs or consumed by the incident.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'IncidentCost'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the DisciplineIncident occurred.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'IncidentDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for an incident.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'IncidentDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'IncidentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifies where the DisciplineIncident occurred and whether or not it occurred on school, for example:
        On school
        Administrative offices area
        Cafeteria area
        Classroom
        Hallway or stairs
        ...', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'IncidentLocationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the time of day the incident took place.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'IncidentTime'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of whether the incident was reported to law enforcement.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'ReportedToLawEnforcement'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Information on the type of individual who reported the DisciplineIncident. When known and/or if useful, use a more specific option code (e.g., "Counselor" rather than "Professional Staff"); for example:
        Student
        Parent/guardian
        Law enforcement officer
        Nonschool personnel
        Representative of visiting school
        ...', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'ReporterDescriptionDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifies the reporter of the DisciplineIncident by name.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'ReporterName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineIncident', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of discipline action.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Discipline type.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Discipline', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineType', 'COLUMN', N'DisciplineTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Discipline type.', 'SCHEMA', N'edfi', 'TABLE', N'DisciplineType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grade levels for which this education content is applicable-if omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentAppropriateGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentAppropriateGradeLevel', 'COLUMN', N'ContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grade levels for which this education content is applicable-if omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentAppropriateGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sexes for which this education content is applicable. If omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentAppropriateSex', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentAppropriateSex', 'COLUMN', N'ContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sexes for which this education content is applicable. If omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentAppropriateSex', 'COLUMN', N'SexTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The individual credited with the creation of the resource.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentAuthor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The individual credited with the creation of the resource.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentAuthor', 'COLUMN', N'Author'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentAuthor', 'COLUMN', N'ContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Relates the education content source to the education content.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentDerivativeSourceEducationContent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentDerivativeSourceEducationContent', 'COLUMN', N'ContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentDerivativeSourceEducationContent', 'COLUMN', N'DerivativeSourceContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentDerivativeSourceLearningResourceMetadataURI', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentDerivativeSourceLearningResourceMetadataURI', 'COLUMN', N'ContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentDerivativeSourceLearningResourceMetadataURI', 'COLUMN', N'LearningResourceMetadataURI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to an education content item.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentDerivativeSourceURI', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentDerivativeSourceURI', 'COLUMN', N'ContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to an education content item.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentDerivativeSourceURI', 'COLUMN', N'URI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the languages in which the Education Content is designed.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentLanguage', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentLanguage', 'COLUMN', N'ContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the languages in which the Education Content is designed.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContentLanguage', 'COLUMN', N'LanguageDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents materials for students or teachers that can be used for teaching, learning, research, and more. Education content includes full courses, course materials, modules, intervention descriptions, textbooks, streaming videos, tests, software, and any other tools, materials, or techniques used to support access to knowledge.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates whether there are additional un-named authors. In a research report, this is often marked by the abbreviation "et al".', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'AdditionalAuthorsIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The predominate type or kind characterizing the learning resource.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'ContentClassTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'ContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An amount that has to be paid or spent to buy or obtain the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'Cost'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The rate by which the cost applies.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'CostRateTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An extended written representation of the education content.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'InteractivityStyleTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'LearningResourceMetadataURI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date on which this content was first published.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'PublicationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The year at which this content was first published.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'PublicationYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The organization credited with publishing the resource.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'Publisher'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A short description or name of the entity.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Approximate or typical time it takes to work with or through this learning resource for the typical intended target audience.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'TimeRequired'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URL where the owner specifies permissions for using the resource.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'UseRightsURL'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The version identifier for the content.', 'SCHEMA', N'edfi', 'TABLE', N'EducationContent', 'COLUMN', N'Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of elements that describes the physical location of the education entity, including the street address, city, state, ZIP code, and ZIP code + 4.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'AddressTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The apartment, room, or suite number of an address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'ApartmentRoomSuiteNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first date the address is valid. For physical addresses, the date the person moved to that address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of the building on the site, if more than one building shares the same address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'BuildingSiteNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the city in which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'City'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'CountyFIPSCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic latitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'Latitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic longitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'Longitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the county, parish, borough, or comparable unit (within a state) in 
                      ''which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'NameOfCounty'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The five or nine digit zip code or overseas postal code portion of an address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'PostalCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'StateAbbreviationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The street number and street name or post office box number of an address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationAddress', 'COLUMN', N'StreetNumberName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationCategoryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationCategoryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the EducationOrganizationCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationCategoryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for EducationOrganizationCategory', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationCategoryType', 'COLUMN', N'EducationOrganizationCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the EducationOrganizationCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationCategoryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationCategory', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationCategory', 'COLUMN', N'EducationOrganizationCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationCategory', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationCode', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationCode', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school system, state, or agency assigning the identification code.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationCode', 'COLUMN', N'EducationOrganizationIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationCode', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the originating record system and code that is used for record-keeping purposes by education organizations.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationSystemDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationSystemDescriptor', 'COLUMN', N'EducationOrganizationIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationSystemDescriptor', 'COLUMN', N'EducationOrganizationIdentificationSystemTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A coding scheme that is used for identification and record-keeping purposes by education organizations, social services or other agencies to refer to an education organization.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationSystemType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationSystemType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the EducationOrganizationIdentificationSystem type.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationSystemType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for EducationOrganizationIdentificationSystem', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationSystemType', 'COLUMN', N'EducationOrganizationIdentificationSystemTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the EducationOrganizationIdentificationSystem type.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationIdentificationSystemType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The 10-digit telephone number, including the area code, for the education entity.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInstitutionTelephone', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInstitutionTelephone', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of communication number listed for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInstitutionTelephone', 'COLUMN', N'InstitutionTelephoneNumberTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The telephone number including the area code, and extension, if applicable.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInstitutionTelephone', 'COLUMN', N'TelephoneNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of elements that describes the international physical location of the education entity.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', 'COLUMN', N'AddressLine1'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The second line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', 'COLUMN', N'AddressLine2'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The third line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', 'COLUMN', N'AddressLine3'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The fourth line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', 'COLUMN', N'AddressLine4'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', 'COLUMN', N'AddressTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first date the address is valid. For physical addresses, the date the person moved to that address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the country.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', 'COLUMN', N'CountryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic latitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', 'COLUMN', N'Latitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic longitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInternationalAddress', 'COLUMN', N'Longitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association indicates interventions made available by an education organization. Often, a district-level education organization purchases a set of intervention prescriptions and makes them available to its schools for use on demand.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInterventionPrescriptionAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The begin date of the period during which the InterventionPrescription is available.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInterventionPrescriptionAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInterventionPrescriptionAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The end date of the period during which the InterventionPrescription is available.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInterventionPrescriptionAssociation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInterventionPrescriptionAssociation', 'COLUMN', N'InterventionPrescriptionEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention prescription.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationInterventionPrescriptionAssociation', 'COLUMN', N'InterventionPrescriptionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Properties of the association between the EducationOrganization and its network(s).', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationNetworkAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date on which the EducationOrganization joined this network.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationNetworkAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a network of education organizations.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationNetworkAssociation', 'COLUMN', N'EducationOrganizationNetworkId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date on which the EducationOrganization left this network.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationNetworkAssociation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationNetworkAssociation', 'COLUMN', N'MemberEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity is a self-organized membership network of peer-level education organizations intended to provide shared services or collective procurement.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationNetwork', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a network of education organizations.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationNetwork', 'COLUMN', N'EducationOrganizationNetworkId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The purpose(s) of the network (e.g., shared services, collective procurement).', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationNetwork', 'COLUMN', N'NetworkPurposeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The association from an education organization to its peers.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationPeerAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationPeerAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganizationPeerAssociation', 'COLUMN', N'PeerEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganization', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganization', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The full, legally accepted name of the institution.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganization', 'COLUMN', N'NameOfInstitution'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The current operational status of the EducationOrganization (e.g., active, inactive).', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganization', 'COLUMN', N'OperationalStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A short name for the institution.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganization', 'COLUMN', N'ShortNameOfInstitution'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education organization by the StateEducationAgency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganization', 'COLUMN', N'StateOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The public web site address (URL) for the EducationOrganization.', 'SCHEMA', N'edfi', 'TABLE', N'EducationOrganization', 'COLUMN', N'WebSite'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of education plan(s) the student is following, if appropriate. For example:
    Special education
    Vocational.', 'SCHEMA', N'edfi', 'TABLE', N'EducationPlanType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'EducationPlanType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the EducationPlan type.', 'SCHEMA', N'edfi', 'TABLE', N'EducationPlanType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for EducationPlan', 'SCHEMA', N'edfi', 'TABLE', N'EducationPlanType', 'COLUMN', N'EducationPlanTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the EducationPlan type.', 'SCHEMA', N'edfi', 'TABLE', N'EducationPlanType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents a regional, multi-services public agency authorized by state law to develop, manage and provide services, programs, or other support options (e.g., construction, food services, and technology services) to LEAs.', 'SCHEMA', N'edfi', 'TABLE', N'EducationServiceCenter', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education service center by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'EducationServiceCenter', 'COLUMN', N'EducationServiceCenterId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a state education agency by the StateEducationAgency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'EducationServiceCenter', 'COLUMN', N'StateEducationAgencyId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The setting in which a child receives education and related services.', 'SCHEMA', N'edfi', 'TABLE', N'EducationalEnvironmentType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'EducationalEnvironmentType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the EducationalEnvironment type.', 'SCHEMA', N'edfi', 'TABLE', N'EducationalEnvironmentType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for EducationalEnvironment', 'SCHEMA', N'edfi', 'TABLE', N'EducationalEnvironmentType', 'COLUMN', N'EducationalEnvironmentTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the EducationalEnvironment type.', 'SCHEMA', N'edfi', 'TABLE', N'EducationalEnvironmentType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of email listed for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'ElectronicMailType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ElectronicMailType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ElectronicMail type.', 'SCHEMA', N'edfi', 'TABLE', N'ElectronicMailType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ElectronicMail', 'SCHEMA', N'edfi', 'TABLE', N'ElectronicMailType', 'COLUMN', N'ElectronicMailTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ElectronicMail type.', 'SCHEMA', N'edfi', 'TABLE', N'ElectronicMailType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the type of employment or contract.', 'SCHEMA', N'edfi', 'TABLE', N'EmploymentStatusDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'EmploymentStatusDescriptor', 'COLUMN', N'EmploymentStatusDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'EmploymentStatusDescriptor', 'COLUMN', N'EmploymentStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects the type of employment or contract.', 'SCHEMA', N'edfi', 'TABLE', N'EmploymentStatusType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'EmploymentStatusType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the EmploymentStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'EmploymentStatusType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for EmploymentStatus', 'SCHEMA', N'edfi', 'TABLE', N'EmploymentStatusType', 'COLUMN', N'EmploymentStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the EmploymentStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'EmploymentStatusType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term.', 'SCHEMA', N'edfi', 'TABLE', N'EntryGradeLevelReasonType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'EntryGradeLevelReasonType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the EntryGradeLevelReason type.', 'SCHEMA', N'edfi', 'TABLE', N'EntryGradeLevelReasonType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for EntryGradeLevelReason', 'SCHEMA', N'edfi', 'TABLE', N'EntryGradeLevelReasonType', 'COLUMN', N'EntryGradeLevelReasonTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the EntryGradeLevelReason type.', 'SCHEMA', N'edfi', 'TABLE', N'EntryGradeLevelReasonType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the process by which a student enters a school during a given academic session.', 'SCHEMA', N'edfi', 'TABLE', N'EntryTypeDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'EntryTypeDescriptor', 'COLUMN', N'EntryTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'EntryTypeDescriptor', 'COLUMN', N'EntryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The process by which a student enters a school during a given academic session.', 'SCHEMA', N'edfi', 'TABLE', N'EntryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'EntryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Entry type.', 'SCHEMA', N'edfi', 'TABLE', N'EntryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Entry', 'SCHEMA', N'edfi', 'TABLE', N'EntryType', 'COLUMN', N'EntryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Entry type.', 'SCHEMA', N'edfi', 'TABLE', N'EntryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.', 'SCHEMA', N'edfi', 'TABLE', N'EventCircumstanceType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'EventCircumstanceType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the EventCircumstance type.', 'SCHEMA', N'edfi', 'TABLE', N'EventCircumstanceType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for EventCircumstance', 'SCHEMA', N'edfi', 'TABLE', N'EventCircumstanceType', 'COLUMN', N'EventCircumstanceTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the EventCircumstance type.', 'SCHEMA', N'edfi', 'TABLE', N'EventCircumstanceType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the circumstances under which the student exited from membership in an educational institution.', 'SCHEMA', N'edfi', 'TABLE', N'ExitWithdrawTypeDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ExitWithdrawTypeDescriptor', 'COLUMN', N'ExitWithdrawTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ExitWithdrawTypeDescriptor', 'COLUMN', N'ExitWithdrawTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The circumstances under which the student exited from membership in an educational institution.', 'SCHEMA', N'edfi', 'TABLE', N'ExitWithdrawType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ExitWithdrawType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ExitWithdraw type.', 'SCHEMA', N'edfi', 'TABLE', N'ExitWithdrawType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ExitWithdraw', 'SCHEMA', N'edfi', 'TABLE', N'ExitWithdrawType', 'COLUMN', N'ExitWithdrawTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ExitWithdraw type.', 'SCHEMA', N'edfi', 'TABLE', N'ExitWithdrawType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The association from feeder school to the receiving school.', 'SCHEMA', N'edfi', 'TABLE', N'FeederSchoolAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year of the first day of the feeder school association.', 'SCHEMA', N'edfi', 'TABLE', N'FeederSchoolAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year of the last day of the feeder school association.', 'SCHEMA', N'edfi', 'TABLE', N'FeederSchoolAssociation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Describes the relationship from the feeder school to the receiving school, for example by program emphasis, such as special education, language immersion, science, or performing art.', 'SCHEMA', N'edfi', 'TABLE', N'FeederSchoolAssociation', 'COLUMN', N'FeederRelationshipDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'FeederSchoolAssociation', 'COLUMN', N'FeederSchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'FeederSchoolAssociation', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required.', 'SCHEMA', N'edfi', 'TABLE', N'GradeLevelDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'GradeLevelDescriptor', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'GradeLevelDescriptor', 'COLUMN', N'GradeLevelTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The enumeration items for the set of grade levels.', 'SCHEMA', N'edfi', 'TABLE', N'GradeLevelType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'GradeLevelType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the GradeLevel type.', 'SCHEMA', N'edfi', 'TABLE', N'GradeLevelType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for GradeLevel', 'SCHEMA', N'edfi', 'TABLE', N'GradeLevelType', 'COLUMN', N'GradeLevelTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the GradeLevel type.', 'SCHEMA', N'edfi', 'TABLE', N'GradeLevelType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of grade in a report card or transcript (e.g., Final, Exam, Grading Period).', 'SCHEMA', N'edfi', 'TABLE', N'GradeType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'GradeType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Grade type.', 'SCHEMA', N'edfi', 'TABLE', N'GradeType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Grade', 'SCHEMA', N'edfi', 'TABLE', N'GradeType', 'COLUMN', N'GradeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Grade type.', 'SCHEMA', N'edfi', 'TABLE', N'GradeType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This educational entity represents an overall score or assessment tied to a course over a period of time (i.e., the grading period). Student grades are usually a compilation of marks and other scores.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the Student''s entry or assignment to the Section.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A statement provided by the teacher that provides information in addition to the grade or assessment score.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'DiagnosticStatement'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of grade reported (e.g., Exam, Final, Grading Period).', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'GradeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'GradingPeriodBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'LetterGradeEarned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'NumericGradeEarned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A conversion of the level to a standard set of performance levels.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'PerformanceBaseConversionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'Grade', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'LearningObjectives associated with the GradebookEntry.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the assignment, homework, or assessment was assigned or executed.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'DateAssigned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name or title of the activity to be recorded in the GradebookEntry.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'GradebookEntryTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningObjective', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'LearningStandard(s) associated with the GradebookEntry.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the assignment, homework, or assessment was assigned or executed.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', 'COLUMN', N'DateAssigned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name or title of the activity to be recorded in the GradebookEntry.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', 'COLUMN', N'GradebookEntryTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryLearningStandard', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of the gradebook entry; for example, homework, assignment, quiz, unit test, oral presentation, etc.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the GradebookEntry type.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for GradebookEntry', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryType', 'COLUMN', N'GradebookEntryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the GradebookEntry type.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents an assignment, homework, or classroom assessment to be recorded in a gradebook.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the assignment, homework, or assessment was assigned or executed.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'DateAssigned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A description of the assignment, homework, or classroom assessment.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name or title of the activity to be recorded in the GradebookEntry.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'GradebookEntryTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of the GradebookEntry; for example, homework, assignment, quiz, unit test, oral presentation, etc.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'GradebookEntryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'GradebookEntry', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the name of the period for which grades are reported. The mapping of descriptor values to known Ed-Fi enumeration values is required.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriodDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriodDescriptor', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriodDescriptor', 'COLUMN', N'GradingPeriodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriodType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriodType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the GradingPeriod type.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriodType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for GradingPeriod', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriodType', 'COLUMN', N'GradingPeriodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriodType', 'COLUMN', N'PeriodSequence'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the GradingPeriod type.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriodType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents the time span for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriod', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriod', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the last day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriod', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriod', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The sequential order of this period relative to other periods.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriod', 'COLUMN', N'PeriodSequence'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriod', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Total days available for educational instruction during the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'GradingPeriod', 'COLUMN', N'TotalInstructionalDays'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The course reference that identifies the organization of subject matter and related learning experiences provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourseCourse', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a course.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourseCourse', 'COLUMN', N'CourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourseCourse', 'COLUMN', N'CourseEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifying name given to a collection of courses.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourseCourse', 'COLUMN', N'CourseSetName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourseCourse', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourseCourse', 'COLUMN', N'GraduationPlanTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year the student is expected to graduate.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourseCourse', 'COLUMN', N'GraduationSchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The total credits required for graduation by taking a specific course, or by taking one or more from a set of courses.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourse', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifying name given to a collection of courses.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourse', 'COLUMN', N'CourseSetName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourse', 'COLUMN', N'CreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourse', 'COLUMN', N'Credits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourse', 'COLUMN', N'CreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourse', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourse', 'COLUMN', N'GraduationPlanTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year the student is expected to graduate.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourse', 'COLUMN', N'GraduationSchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade level when the student is planned to take the course.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsByCourse', 'COLUMN', N'WhenTakenGradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The total credits required in subject to graduate. Only those courses identified as a high school course requirement are eligible to meet subject credit requirements.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsBySubject', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The intended major subject area of the graduation requirement.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsBySubject', 'COLUMN', N'AcademicSubjectDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsBySubject', 'COLUMN', N'CreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsBySubject', 'COLUMN', N'Credits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsBySubject', 'COLUMN', N'CreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsBySubject', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsBySubject', 'COLUMN', N'GraduationPlanTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year the student is expected to graduate.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanCreditsBySubject', 'COLUMN', N'GraduationSchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Performance level required to be met or exceeded.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'COLUMN', N'AssessmentReportingMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'COLUMN', N'GraduationPlanTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year the student is expected to graduate.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'COLUMN', N'GraduationSchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The maximum score to make the indicated level of performance.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'COLUMN', N'MaximumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The minimum score required to make the indicated level of performance.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'COLUMN', N'MinimumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The performance level(s) defined for the assessment.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'COLUMN', N'PerformanceLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The datatype of the result. The results can be expressed as a number, percentile,range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentAssessmentPerformanceLevel', 'COLUMN', N'ResultDatatypeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Score required to be met or exceeded.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentScore', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentScore', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentScore', 'COLUMN', N'AssessmentReportingMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentScore', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentScore', 'COLUMN', N'GraduationPlanTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year the student is expected to graduate.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentScore', 'COLUMN', N'GraduationSchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The maximum score possible on the assessment.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentScore', 'COLUMN', N'MaximumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The minimum score possible on the assessment.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentScore', 'COLUMN', N'MinimumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentScore', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessmentScore', 'COLUMN', N'ResultDatatypeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The assessments and associated required score and performance level needed to satisfy graduation requirements.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessment', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessment', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessment', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessment', 'COLUMN', N'GraduationPlanTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year the student is expected to graduate.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessment', 'COLUMN', N'GraduationSchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanRequiredAssessment', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the set of graduation plan types.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanTypeDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanTypeDescriptor', 'COLUMN', N'GraduationPlanTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanTypeDescriptor', 'COLUMN', N'GraduationPlanTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of academic plan the student is following for graduation.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the GraduationPlan type.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for GraduationPlan', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanType', 'COLUMN', N'GraduationPlanTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the GraduationPlan type.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlanType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity is a plan outlining the required credits, credits by subject,credits by course, and other criteria required for graduation. A graduation plan may be one or more standard plans defined by an education organization and/or individual plans for some or all students.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlan', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlan', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlan', 'COLUMN', N'GraduationPlanTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year the student is expected to graduate.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlan', 'COLUMN', N'GraduationSchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of whether the GraduationPlan is tailored for an individual.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlan', 'COLUMN', N'IndividualPlan'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlan', 'COLUMN', N'TotalRequiredCreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlan', 'COLUMN', N'TotalRequiredCredits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'GraduationPlan', 'COLUMN', N'TotalRequiredCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether the school or local education agency (LEA) submitted a Gun-Free Schools Act (GFSA) of 1994 report to the state, as defined by Title 18, Section 921.', 'SCHEMA', N'edfi', 'TABLE', N'GunFreeSchoolsActReportingStatusType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'GunFreeSchoolsActReportingStatusType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the GunFreeSchoolsActReportingStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'GunFreeSchoolsActReportingStatusType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for GunFreeSchoolsActReportingStatus', 'SCHEMA', N'edfi', 'TABLE', N'GunFreeSchoolsActReportingStatusType', 'COLUMN', N'GunFreeSchoolsActReportingStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the GunFreeSchoolsActReportingStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'GunFreeSchoolsActReportingStatusType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifies the type of use given to an identification document.', 'SCHEMA', N'edfi', 'TABLE', N'IdentificationDocumentUseType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'IdentificationDocumentUseType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the IdentificationDocumentUse type.', 'SCHEMA', N'edfi', 'TABLE', N'IdentificationDocumentUseType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for IdentificationDocumentUse', 'SCHEMA', N'edfi', 'TABLE', N'IdentificationDocumentUseType', 'COLUMN', N'IdentificationDocumentUseTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the IdentificationDocumentUse type.', 'SCHEMA', N'edfi', 'TABLE', N'IdentificationDocumentUseType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifies where the incident occurred and whether or not it occurred on school property.', 'SCHEMA', N'edfi', 'TABLE', N'IncidentLocationType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'IncidentLocationType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the IncidentLocation type.', 'SCHEMA', N'edfi', 'TABLE', N'IncidentLocationType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for IncidentLocation', 'SCHEMA', N'edfi', 'TABLE', N'IncidentLocationType', 'COLUMN', N'IncidentLocationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the IncidentLocation type.', 'SCHEMA', N'edfi', 'TABLE', N'IncidentLocationType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of communication number listed for an organization.', 'SCHEMA', N'edfi', 'TABLE', N'InstitutionTelephoneNumberType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'InstitutionTelephoneNumberType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the InstitutionTelephoneNumber type.', 'SCHEMA', N'edfi', 'TABLE', N'InstitutionTelephoneNumberType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for InstitutionTelephoneNumber', 'SCHEMA', N'edfi', 'TABLE', N'InstitutionTelephoneNumberType', 'COLUMN', N'InstitutionTelephoneNumberTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the InstitutionTelephoneNumber type.', 'SCHEMA', N'edfi', 'TABLE', N'InstitutionTelephoneNumberType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the extent to which the district has effectively and fully integrated technology, as defined by the state.', 'SCHEMA', N'edfi', 'TABLE', N'IntegratedTechnologyStatusType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'IntegratedTechnologyStatusType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the IntegratedTechnologyStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'IntegratedTechnologyStatusType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for IntegratedTechnologyStatus', 'SCHEMA', N'edfi', 'TABLE', N'IntegratedTechnologyStatusType', 'COLUMN', N'IntegratedTechnologyStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the IntegratedTechnologyStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'IntegratedTechnologyStatusType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed.', 'SCHEMA', N'edfi', 'TABLE', N'InteractivityStyleType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'InteractivityStyleType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the InteractivityStyle type.', 'SCHEMA', N'edfi', 'TABLE', N'InteractivityStyleType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for InteractivityStyle', 'SCHEMA', N'edfi', 'TABLE', N'InteractivityStyleType', 'COLUMN', N'InteractivityStyleTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the InteractivityStyle type.', 'SCHEMA', N'edfi', 'TABLE', N'InteractivityStyleType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of Internet access available.', 'SCHEMA', N'edfi', 'TABLE', N'InternetAccessType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'InternetAccessType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the InternetAccess type.', 'SCHEMA', N'edfi', 'TABLE', N'InternetAccessType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for InternetAccess', 'SCHEMA', N'edfi', 'TABLE', N'InternetAccessType', 'COLUMN', N'InternetAccessTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the InternetAccess type.', 'SCHEMA', N'edfi', 'TABLE', N'InternetAccessType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grade levels for the Intervention-if omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionAppropriateGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionAppropriateGradeLevel', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grade levels for the Intervention-if omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionAppropriateGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionAppropriateGradeLevel', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sexes for the Intervention. If omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionAppropriateSex', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionAppropriateSex', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionAppropriateSex', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sexes for the Intervention. If omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionAppropriateSex', 'COLUMN', N'SexTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The way in which an intervention is used: curriculum, supplement, or practice.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionClassType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionClassType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the InterventionClass type.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionClassType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for InterventionClass', 'SCHEMA', N'edfi', 'TABLE', N'InterventionClassType', 'COLUMN', N'InterventionClassTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the InterventionClass type.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionClassType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Targeted purpose of the Intervention (e.g., attendance issue, dropout risk).', 'SCHEMA', N'edfi', 'TABLE', N'InterventionDiagnosis', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Targeted purpose of the Intervention (e.g., attendance issue, dropout risk).', 'SCHEMA', N'edfi', 'TABLE', N'InterventionDiagnosis', 'COLUMN', N'DiagnosisDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionDiagnosis', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionDiagnosis', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Relates the education content source to the education content.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionEducationContent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionEducationContent', 'COLUMN', N'ContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionEducationContent', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionEducationContent', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An intervention demonstrates effectiveness if the research has shown that the program caused an improvement in outcomes. Rating Values: positive effects, potentially positive effects, mixed effects, potentially negative effects, negative effects, and no discernible effects.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionEffectivenessRatingType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionEffectivenessRatingType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the InterventionEffectivenessRating type.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionEffectivenessRatingType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for InterventionEffectivenessRating', 'SCHEMA', N'edfi', 'TABLE', N'InterventionEffectivenessRatingType', 'COLUMN', N'InterventionEffectivenessRatingTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the InterventionEffectivenessRating type.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionEffectivenessRatingType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The reference to the intervention prescription being followed in this intervention implementation.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionInterventionPrescription', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionInterventionPrescription', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionInterventionPrescription', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionInterventionPrescription', 'COLUMN', N'InterventionPrescriptionEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention prescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionInterventionPrescription', 'COLUMN', N'InterventionPrescriptionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionLearningResourceMetadataURI', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionLearningResourceMetadataURI', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionLearningResourceMetadataURI', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionLearningResourceMetadataURI', 'COLUMN', N'LearningResourceMetadataURI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The times at which this intervention is scheduled to meet.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionMeetingTime', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'An alternate name for the day (e.g., Red, Blue).', 'SCHEMA', N'edfi', 'TABLE', N'InterventionMeetingTime', 'COLUMN', N'AlternateDayName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'InterventionMeetingTime', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionMeetingTime', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the time of day the class ends.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionMeetingTime', 'COLUMN', N'EndTime'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionMeetingTime', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of whether this meeting time is used for official daily attendance.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionMeetingTime', 'COLUMN', N'OfficialAttendancePeriod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'InterventionMeetingTime', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the time of day the class begins.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionMeetingTime', 'COLUMN', N'StartTime'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A subset of students that are the focus of the Intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPopulationServed', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPopulationServed', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPopulationServed', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A subset of students that are the focus of the Intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPopulationServed', 'COLUMN', N'PopulationServedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grade levels for the prescribed intervention. If omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionAppropriateGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionAppropriateGradeLevel', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grade levels for the prescribed intervention. If omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionAppropriateGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention prescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionAppropriateGradeLevel', 'COLUMN', N'InterventionPrescriptionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sexes for the InterventionPrescription. If omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionAppropriateSex', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionAppropriateSex', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention prescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionAppropriateSex', 'COLUMN', N'InterventionPrescriptionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sexes for the InterventionPrescription. If omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionAppropriateSex', 'COLUMN', N'SexTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Targeted purpose of the InterventionPrescription (e.g., attendance issue, dropout risk).', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionDiagnosis', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Targeted purpose of the InterventionPrescription (e.g., attendance issue, dropout risk).', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionDiagnosis', 'COLUMN', N'DiagnosisDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionDiagnosis', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention prescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionDiagnosis', 'COLUMN', N'InterventionPrescriptionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Relates the education content source to the education content.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionEducationContent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionEducationContent', 'COLUMN', N'ContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionEducationContent', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention prescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionEducationContent', 'COLUMN', N'InterventionPrescriptionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionLearningResourceMetadataURI', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionLearningResourceMetadataURI', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention prescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionLearningResourceMetadataURI', 'COLUMN', N'InterventionPrescriptionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionLearningResourceMetadataURI', 'COLUMN', N'LearningResourceMetadataURI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A subset of students that are the focus of the InterventionPrescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionPopulationServed', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionPopulationServed', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention prescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionPopulationServed', 'COLUMN', N'InterventionPrescriptionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A subset of students that are the focus of the InterventionPrescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionPopulationServed', 'COLUMN', N'PopulationServedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to an education content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionURI', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionURI', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention prescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionURI', 'COLUMN', N'InterventionPrescriptionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to an education content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescriptionURI', 'COLUMN', N'URI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents a formal prescription of an instructional approach focusing on the specific techniques and materials used to teach a given subject. This can be prescribed by academic research, an interventions vendor, or another entity.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescription', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The way in which an intervention was implemented: individual, small group, whole class, or whole school.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescription', 'COLUMN', N'DeliveryMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescription', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The way in which an intervention is used: curriculum, supplement, or practice.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescription', 'COLUMN', N'InterventionClassTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention prescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionPrescription', 'COLUMN', N'InterventionPrescriptionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Relates the staff member associated with the Intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStaff', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStaff', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStaff', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStaff', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grade levels participating in this study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyAppropriateGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyAppropriateGradeLevel', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grade levels participating in this study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyAppropriateGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyAppropriateGradeLevel', 'COLUMN', N'InterventionStudyIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sexes participating in this study. If omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyAppropriateSex', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyAppropriateSex', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyAppropriateSex', 'COLUMN', N'InterventionStudyIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sexes participating in this study. If omitted, considered generally applicable.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyAppropriateSex', 'COLUMN', N'SexTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Relates the education content source to the education content.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyEducationContent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the EducationContent.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyEducationContent', 'COLUMN', N'ContentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyEducationContent', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyEducationContent', 'COLUMN', N'InterventionStudyIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Measurement of the effectiveness of the InterventionStudy per diagnosis.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyInterventionEffectiveness', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Targeted purpose of the intervention (e.g., attendance issue, dropout risk) for which the effectiveness is measured.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyInterventionEffectiveness', 'COLUMN', N'DiagnosisDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyInterventionEffectiveness', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grade level for which effectiveness is measured.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyInterventionEffectiveness', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Along a percentile distribution of students, the improvement index represents the change in an average student''s percentile rank that is considered to be due to the intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyInterventionEffectiveness', 'COLUMN', N'ImprovementIndex'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An intervention demonstrates effectiveness if the research has shown that the program caused an improvement in outcomes. Values: positive effects, potentially positive effects, mixed effects, potentially negative effects, negative effects, and no discernible effects.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyInterventionEffectiveness', 'COLUMN', N'InterventionEffectivenessRatingTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyInterventionEffectiveness', 'COLUMN', N'InterventionStudyIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Population for which effectiveness is measured.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyInterventionEffectiveness', 'COLUMN', N'PopulationServedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyLearningResourceMetadataURI', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyLearningResourceMetadataURI', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyLearningResourceMetadataURI', 'COLUMN', N'InterventionStudyIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyLearningResourceMetadataURI', 'COLUMN', N'LearningResourceMetadataURI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A subset of students that are the focus of the InterventionStudy.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyPopulationServed', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyPopulationServed', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyPopulationServed', 'COLUMN', N'InterventionStudyIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A subset of students that are the focus of the InterventionStudy.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyPopulationServed', 'COLUMN', N'PopulationServedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The abbreviation for the state (within the United States) or outlying area, the school system of which the participants of the study are considered to be a part.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyStateAbbreviation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyStateAbbreviation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyStateAbbreviation', 'COLUMN', N'InterventionStudyIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The abbreviation for the state (within the United States) or outlying area, the school system of which the participants of the study are considered to be a part.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyStateAbbreviation', 'COLUMN', N'StateAbbreviationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to an education content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyURI', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyURI', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyURI', 'COLUMN', N'InterventionStudyIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to an education content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudyURI', 'COLUMN', N'URI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An experimental or quasi-experimental study of an intervention technique.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudy', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The way in which an intervention was implemented: individual, small group, whole class, or whole school.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudy', 'COLUMN', N'DeliveryMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudy', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The way in which an intervention is used: curriculum, supplement, or practice.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudy', 'COLUMN', N'InterventionClassTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudy', 'COLUMN', N'InterventionPrescriptionEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention prescription.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudy', 'COLUMN', N'InterventionPrescriptionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudy', 'COLUMN', N'InterventionStudyIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of participants observed in the study.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionStudy', 'COLUMN', N'Participants'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to an education content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionURI', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionURI', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionURI', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The URI (typical a URL) pointing to an education content item.', 'SCHEMA', N'edfi', 'TABLE', N'InterventionURI', 'COLUMN', N'URI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An implementation of an instructional approach focusing on the specific techniques and materials used to teach a given subject.', 'SCHEMA', N'edfi', 'TABLE', N'Intervention', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The start date for the intervention implementation.', 'SCHEMA', N'edfi', 'TABLE', N'Intervention', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The way in which an intervention was implemented: individual, small group, whole class, or whole school.', 'SCHEMA', N'edfi', 'TABLE', N'Intervention', 'COLUMN', N'DeliveryMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'Intervention', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The end date for the intervention implementation.', 'SCHEMA', N'edfi', 'TABLE', N'Intervention', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The way in which an intervention is used: curriculum, supplement, or practice.', 'SCHEMA', N'edfi', 'TABLE', N'Intervention', 'COLUMN', N'InterventionClassTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'Intervention', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the language(s) that are spoken or written.', 'SCHEMA', N'edfi', 'TABLE', N'LanguageDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'LanguageDescriptor', 'COLUMN', N'LanguageDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'LanguageDescriptor', 'COLUMN', N'LanguageTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category denoting language(s) spoken or written.', 'SCHEMA', N'edfi', 'TABLE', N'LanguageType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'LanguageType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Language type.', 'SCHEMA', N'edfi', 'TABLE', N'LanguageType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Language', 'SCHEMA', N'edfi', 'TABLE', N'LanguageType', 'COLUMN', N'LanguageTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Language type.', 'SCHEMA', N'edfi', 'TABLE', N'LanguageType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category denoting how a language is used.', 'SCHEMA', N'edfi', 'TABLE', N'LanguageUseType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'LanguageUseType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the LanguageUse type.', 'SCHEMA', N'edfi', 'TABLE', N'LanguageUseType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for LanguageUse', 'SCHEMA', N'edfi', 'TABLE', N'LanguageUseType', 'COLUMN', N'LanguageUseTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the LanguageUse type.', 'SCHEMA', N'edfi', 'TABLE', N'LanguageUseType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveAcademicSubject', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveAcademicSubject', 'COLUMN', N'AcademicSubjectDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveAcademicSubject', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveAcademicSubject', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person or organization chiefly responsible for the intellectual content of the standard.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandardAuthor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person or organization chiefly responsible for the intellectual content of the standard.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandardAuthor', 'COLUMN', N'Author'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandardAuthor', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandardAuthor', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A reference to the type of content standard (e.g., state, national)', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The beginning of the period during which this learning standard document is intended for use.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The end of the period during which this learning standard document is intended for use.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', 'COLUMN', N'MandatingEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date on which this content was first published.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', 'COLUMN', N'PublicationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown).', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', 'COLUMN', N'PublicationStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The year at which this content was first published.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', 'COLUMN', N'PublicationYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the content standard, for example Common Core.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', 'COLUMN', N'Title'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An unambiguous reference to the standards using a network-resolvable URI.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', 'COLUMN', N'URI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The version identifier for the content.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveContentStandard', 'COLUMN', N'Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade level for which the LearningObjective is targeted. The semantics of null is assumed to mean that the learning objective is not associated with any grade level.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade level for which the LearningObjective is targeted. The semantics of null is assumed to mean that the learning objective is not associated with any grade level.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveGradeLevel', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveGradeLevel', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'LearningStandard(s) included in this objective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveLearningStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveLearningStandard', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveLearningStandard', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjectiveLearningStandard', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents identified learning objectives for courses in specific grades.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjective', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjective', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjective', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjective', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects the specific nomenclature used for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjective', 'COLUMN', N'Nomenclature'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The designated title of the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjective', 'COLUMN', N'Objective'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjective', 'COLUMN', N'ParentLearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjective', 'COLUMN', N'ParentNamespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'One or more statements that describes the criteria used by teachers and students to check for attainment of a learning objective. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'LearningObjective', 'COLUMN', N'SuccessCriteria'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person or organization chiefly responsible for the intellectual content of the standard.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandardAuthor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person or organization chiefly responsible for the intellectual content of the standard.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandardAuthor', 'COLUMN', N'Author'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandardAuthor', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The content standard from which the LearningStandard was derived.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The beginning of the period during which this learning standard document is intended for use.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandard', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The end of the period during which this learning standard document is intended for use.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandard', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandard', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandard', 'COLUMN', N'MandatingEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date on which this content was first published.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandard', 'COLUMN', N'PublicationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown).', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandard', 'COLUMN', N'PublicationStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The year at which this content was first published.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandard', 'COLUMN', N'PublicationYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the content standard, for example Common Core.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandard', 'COLUMN', N'Title'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An unambiguous reference to the standards using a network-resolvable URI.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandard', 'COLUMN', N'URI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The version identifier for the content.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardContentStandard', 'COLUMN', N'Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade levels for the specific learning standard.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade levels for the specific learning standard.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardGradeLevel', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a learning standard.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardIdentificationCode', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the content standard, for example Common Core.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardIdentificationCode', 'COLUMN', N'ContentStandardName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a Learning Standard.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardIdentificationCode', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardIdentificationCode', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The unique identifier of a prerequisite learning standard item, a competency needed prior to learning this one. (Some items may have no prerequisites others may have one or more prerequisites. This should only be used to represent the immediate predecessors in a competency-based pathway, i.e. not prerequisites of prerequisites).', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardPrerequisiteLearningStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardPrerequisiteLearningStandard', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandardPrerequisiteLearningStandard', 'COLUMN', N'PrerequisiteLearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity is a sub-element of a learning objective consisting of a precise statement of the expectation of a student''s proficiency.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Subject area for the LearningStandard.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandard', 'COLUMN', N'AcademicSubjectDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The official Course Title with which this learning standard is associated.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandard', 'COLUMN', N'CourseTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The text of the statement. The textual content that either describes a specific competency such as "Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions." or describes a less granular group of competencies within the taxonomy of the standards document, e.g. "Understand and apply the Pythagorean Theorem," or "Geometry".', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandard', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandard', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique).', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandard', 'COLUMN', N'LearningStandardItemCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningStandard.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandard', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandard', 'COLUMN', N'ParentLearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the LearningStandard.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandard', 'COLUMN', N'SuccessCriteria'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An unambiguous reference to the statement using a network-resolvable URI.', 'SCHEMA', N'edfi', 'TABLE', N'LearningStandard', 'COLUMN', N'URI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A code describing the type of the leave event.', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEventCategoryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEventCategoryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the LeaveEventCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEventCategoryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for LeaveEventCategory', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEventCategoryType', 'COLUMN', N'LeaveEventCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the LeaveEventCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEventCategoryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This event entity represents the recording of the dates of staff leave (e.g., sick leave, personal time, vacation).', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEvent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date for this leave event.', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEvent', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The hours the staff was absent, if not the entire working day.', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEvent', 'COLUMN', N'HoursOnLeave'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The code describing the type of leave taken, for example:
        Sick
        Personal
        Vacation.', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEvent', 'COLUMN', N'LeaveEventCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Expanded reason for the staff leave.', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEvent', 'COLUMN', N'LeaveEventReason'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEvent', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of whether a substitute was assigned during the period of staff leave.', 'SCHEMA', N'edfi', 'TABLE', N'LeaveEvent', 'COLUMN', N'SubstituteAssigned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The mapping to known grade levels for which certification exists.', 'SCHEMA', N'edfi', 'TABLE', N'LevelDescriptorGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The mapping to known grade levels for which certification exists.', 'SCHEMA', N'edfi', 'TABLE', N'LevelDescriptorGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'LevelDescriptorGradeLevel', 'COLUMN', N'LevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the grade level(s) certified for teaching.', 'SCHEMA', N'edfi', 'TABLE', N'LevelDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'LevelDescriptor', 'COLUMN', N'LevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the different levels of education achievable.', 'SCHEMA', N'edfi', 'TABLE', N'LevelOfEducationDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'LevelOfEducationDescriptor', 'COLUMN', N'LevelOfEducationDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'LevelOfEducationDescriptor', 'COLUMN', N'LevelOfEducationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The enumeration of the different levels of education achievable.', 'SCHEMA', N'edfi', 'TABLE', N'LevelOfEducationType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'LevelOfEducationType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the LevelOfEducation type.', 'SCHEMA', N'edfi', 'TABLE', N'LevelOfEducationType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for LevelOfEducation', 'SCHEMA', N'edfi', 'TABLE', N'LevelOfEducationType', 'COLUMN', N'LevelOfEducationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the LevelOfEducation type.', 'SCHEMA', N'edfi', 'TABLE', N'LevelOfEducationType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the indications that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. The mapping of descriptor values to known Ed-Fi enumeration values is required.', 'SCHEMA', N'edfi', 'TABLE', N'LimitedEnglishProficiencyDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'LimitedEnglishProficiencyDescriptor', 'COLUMN', N'LimitedEnglishProficiencyDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'LimitedEnglishProficiencyDescriptor', 'COLUMN', N'LimitedEnglishProficiencyTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication that the student has been identified as Limited English Proficient or English Proficient by the Language Proficiency Assessment Committee (LPAC).', 'SCHEMA', N'edfi', 'TABLE', N'LimitedEnglishProficiencyType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'LimitedEnglishProficiencyType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the LimitedEnglishProficiency type.', 'SCHEMA', N'edfi', 'TABLE', N'LimitedEnglishProficiencyType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for LimitedEnglishProficiency', 'SCHEMA', N'edfi', 'TABLE', N'LimitedEnglishProficiencyType', 'COLUMN', N'LimitedEnglishProficiencyTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the LimitedEnglishProficiency type.', 'SCHEMA', N'edfi', 'TABLE', N'LimitedEnglishProficiencyType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity maintains information about federal reporting and accountability for local education agencies.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyAccountability', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether the school or Local Education Agency (LEA) submitted a Gun-Free Schools Act (GFSA) of 1994 report to the state, as defined by Title 18, Section 921.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyAccountability', 'COLUMN', N'GunFreeSchoolsActReportingStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a local education agency by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyAccountability', 'COLUMN', N'LocalEducationAgencyId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether the LEA was able to implement the provisions for public school choice under Title I, Part A, Section 1116 of ESEA as amended.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyAccountability', 'COLUMN', N'SchoolChoiceImplementStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year for which the accountability is reported.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyAccountability', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of local education agency/district. For example: Independent or Charter.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyCategoryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyCategoryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the LocalEducationAgencyCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyCategoryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for LocalEducationAgencyCategory', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyCategoryType', 'COLUMN', N'LocalEducationAgencyCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the LocalEducationAgencyCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyCategoryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contains the information about the reception and use of federal funds for reporting purposes.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyFederalFunds', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year for which the accountability is reported.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyFederalFunds', 'COLUMN', N'FiscalYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The total Title V, Part A funds expended by LEAs.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyFederalFunds', 'COLUMN', N'InnovativeDollarsSpent'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The total amount of Title V, Part A funds expended by LEAs for the four strategic priorities.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyFederalFunds', 'COLUMN', N'InnovativeDollarsSpentOnStrategicPriorities'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The total Title V, Part A funds received by LEAs.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyFederalFunds', 'COLUMN', N'InnovativeProgramsFundsReceived'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a local education agency by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyFederalFunds', 'COLUMN', N'LocalEducationAgencyId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The amount of Section 1003(a) and 1003(g) allocations to LEAs.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyFederalFunds', 'COLUMN', N'SchoolImprovementAllocation'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the percentage of the Title I, Part A allocation that the SEA reserved in accordance with Section 1003(a) of ESEA and 200.100(a) of ED''s regulations governing the reservation of funds for school improvement under Section 1003(a) of ESEA.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyFederalFunds', 'COLUMN', N'SchoolImprovementReservedFundsPercentage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The percentage of funds used to administer assessments required by Section 1111(b) or to carry out other activities described in Section 6111 and other activities related to ensuring that the state''s schools and LEAs are held accountable for results.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyFederalFunds', 'COLUMN', N'StateAssessmentAdministrationFunding'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The dollar amount spent on supplemental educational services during the school year under Title I, Part A, Section 1116 of ESEA as amended.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyFederalFunds', 'COLUMN', N'SupplementalEducationalServicesFundsSpent'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The maximum dollar amount that may be spent per child for expenditures related to supplemental educational services under Title I of the ESEA.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgencyFederalFunds', 'COLUMN', N'SupplementalEducationalServicesPerPupilExpenditure'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents an administrative unit at the local level which exists primarily to operate schools or to contract for educational services. It includes school districts, charter schools, charter management organizations, or other local administrative organizations.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgency', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgency', 'COLUMN', N'CharterStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education service center by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgency', 'COLUMN', N'EducationServiceCenterId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of local education agency/district. For example: Independent or Charter.', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgency', 'COLUMN', N'LocalEducationAgencyCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a local education agency by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgency', 'COLUMN', N'LocalEducationAgencyId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a local education agency by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgency', 'COLUMN', N'ParentLocalEducationAgencyId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a state education agency by the StateEducationAgency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'LocalEducationAgency', 'COLUMN', N'StateEducationAgencyId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents the physical space where students gather for a particular class/section. The Location may be an indoor or outdoor area designated for the purpose of meeting the educational needs of students.', 'SCHEMA', N'edfi', 'TABLE', N'Location', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'Location', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The most number of seats the class can maintain.', 'SCHEMA', N'edfi', 'TABLE', N'Location', 'COLUMN', N'MaximumNumberOfSeats'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of seats that is most favorable to the class.', 'SCHEMA', N'edfi', 'TABLE', N'Location', 'COLUMN', N'OptimalNumberOfSeats'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'Location', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A school that has been designed to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing or eliminating racial isolation; and/or to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, or foreign language).', 'SCHEMA', N'edfi', 'TABLE', N'MagnetSpecialProgramEmphasisSchoolType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'MagnetSpecialProgramEmphasisSchoolType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the MagnetSpecialProgramEmphasisSchool type.', 'SCHEMA', N'edfi', 'TABLE', N'MagnetSpecialProgramEmphasisSchoolType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for MagnetSpecialProgramEmphasisSchool', 'SCHEMA', N'edfi', 'TABLE', N'MagnetSpecialProgramEmphasisSchoolType', 'COLUMN', N'MagnetSpecialProgramEmphasisSchoolTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the MagnetSpecialProgramEmphasisSchool type.', 'SCHEMA', N'edfi', 'TABLE', N'MagnetSpecialProgramEmphasisSchoolType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The media through which teachers provide instruction to students and students and teachers communicate about instructional matters.', 'SCHEMA', N'edfi', 'TABLE', N'MediumOfInstructionType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'MediumOfInstructionType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the MediumOfInstruction type.', 'SCHEMA', N'edfi', 'TABLE', N'MediumOfInstructionType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for MediumOfInstruction', 'SCHEMA', N'edfi', 'TABLE', N'MediumOfInstructionType', 'COLUMN', N'MediumOfInstructionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the MediumOfInstruction type.', 'SCHEMA', N'edfi', 'TABLE', N'MediumOfInstructionType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The enumeration items for the day(s) of the week (e.g., Monday, Wednesday) that the class meets or an indication that a class meets "out-of-school" or "self-paced".', 'SCHEMA', N'edfi', 'TABLE', N'MeetingDayType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'MeetingDayType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the MeetingDay type.', 'SCHEMA', N'edfi', 'TABLE', N'MeetingDayType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for MeetingDay', 'SCHEMA', N'edfi', 'TABLE', N'MeetingDayType', 'COLUMN', N'MeetingDayTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the MeetingDay type.', 'SCHEMA', N'edfi', 'TABLE', N'MeetingDayType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method the credits were earned, for example:  Classroom, Examination, Transfer.', 'SCHEMA', N'edfi', 'TABLE', N'MethodCreditEarnedType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'MethodCreditEarnedType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the MethodCreditEarned type.', 'SCHEMA', N'edfi', 'TABLE', N'MethodCreditEarnedType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for MethodCreditEarned', 'SCHEMA', N'edfi', 'TABLE', N'MethodCreditEarnedType', 'COLUMN', N'MethodCreditEarnedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the MethodCreditEarned type.', 'SCHEMA', N'edfi', 'TABLE', N'MethodCreditEarnedType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The purpose(s) of the network, e.g. shared services, collective procurement, etc.', 'SCHEMA', N'edfi', 'TABLE', N'NetworkPurposeType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'NetworkPurposeType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the NetworkPurpose type.', 'SCHEMA', N'edfi', 'TABLE', N'NetworkPurposeType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for NetworkPurpose', 'SCHEMA', N'edfi', 'TABLE', N'NetworkPurposeType', 'COLUMN', N'NetworkPurposeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the NetworkPurpose type.', 'SCHEMA', N'edfi', 'TABLE', N'NetworkPurposeType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'References individual test items, if appropriate.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentAssessmentItem', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentAssessmentItem', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentAssessmentItem', 'COLUMN', N'AssessmentItemIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentAssessmentItem', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentAssessmentItem', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'References the LearningObjective(s) the ObjectiveAssessment tests.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentLearningObjective', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentLearningObjective', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentLearningObjective', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentLearningObjective', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentLearningObjective', 'COLUMN', N'LearningObjectiveNamespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentLearningObjective', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'LearningStandard tested by this ObjectiveAssessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentLearningStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentLearningStandard', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentLearningStandard', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentLearningStandard', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentLearningStandard', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Definition of the performance levels and the associated cut scores. Three styles are supported:
        1. Specification of performance level by minimum and maximum score
        2. Specification of performance level by cut score, using only minimum score
        3. Specification of performance level without any mapping to scores', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentPerformanceLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentPerformanceLevel', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentPerformanceLevel', 'COLUMN', N'AssessmentReportingMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentPerformanceLevel', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The maximum score to make the indicated level of performance.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentPerformanceLevel', 'COLUMN', N'MaximumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The minimum score required to make the indicated level of performance.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentPerformanceLevel', 'COLUMN', N'MinimumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentPerformanceLevel', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The performance level(s) defined for the assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentPerformanceLevel', 'COLUMN', N'PerformanceLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The datatype of the result. The results can be expressed as a number, percentile,range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentPerformanceLevel', 'COLUMN', N'ResultDatatypeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Definition of the scores to be expected from this objective assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentScore', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentScore', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentScore', 'COLUMN', N'AssessmentReportingMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentScore', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The maximum score possible on the assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentScore', 'COLUMN', N'MaximumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The minimum score possible on the assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentScore', 'COLUMN', N'MinimumScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentScore', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessmentScore', 'COLUMN', N'ResultDatatypeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents subtests that assess specific learning objectives.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessment', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessment', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of the ObjectiveAssessment (e.g., vocabulary, measurement, or geometry).', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessment', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessment', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The maximum raw score achievable across all assessment items that are correct and scored at the maximum.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessment', 'COLUMN', N'MaxRawScore'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessment', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects the specific nomenclature used for this level of ObjectiveAssessment.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessment', 'COLUMN', N'Nomenclature'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessment', 'COLUMN', N'ParentIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The percentage of the Assessment that tests this objective.', 'SCHEMA', N'edfi', 'TABLE', N'ObjectiveAssessment', 'COLUMN', N'PercentOfAssessment'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Previous definition of Ethnicity combining Hispanic/Latino and Race.', 'SCHEMA', N'edfi', 'TABLE', N'OldEthnicityType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'OldEthnicityType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the OldEthnicity type.', 'SCHEMA', N'edfi', 'TABLE', N'OldEthnicityType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for OldEthnicity', 'SCHEMA', N'edfi', 'TABLE', N'OldEthnicityType', 'COLUMN', N'OldEthnicityTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the OldEthnicity type.', 'SCHEMA', N'edfi', 'TABLE', N'OldEthnicityType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The teaching field required for the OpenStaffPosition, for example English/Language Arts, Reading, Mathematics, Science, Social Sciences, etc.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionAcademicSubject', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The teaching field required for the OpenStaffPosition, for example English/Language Arts, Reading, Mathematics, Science, Social Sciences, etc.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionAcademicSubject', 'COLUMN', N'AcademicSubjectDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the OpenStaffPosition was posted.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionAcademicSubject', 'COLUMN', N'DatePosted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionAcademicSubject', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects the type of employment or contract desired for the position; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionAcademicSubject', 'COLUMN', N'EmploymentStatusDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionAcademicSubject', 'COLUMN', N'RequisitionNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The titles of employment, official status, or rank of education staff.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionAcademicSubject', 'COLUMN', N'StaffClassificationDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of grade levels for which the position''s assignment is responsible.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionInstructionalGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the OpenStaffPosition was posted.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionInstructionalGradeLevel', 'COLUMN', N'DatePosted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionInstructionalGradeLevel', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects the type of employment or contract desired for the position; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionInstructionalGradeLevel', 'COLUMN', N'EmploymentStatusDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of grade levels for which the position''s assignment is responsible.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionInstructionalGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionInstructionalGradeLevel', 'COLUMN', N'RequisitionNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The titles of employment, official status, or rank of education staff.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPositionInstructionalGradeLevel', 'COLUMN', N'StaffClassificationDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents an open staff position that the education organization is seeking to fill.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPosition', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the OpenStaffPosition was posted.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPosition', 'COLUMN', N'DatePosted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the posting was removed or filled.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPosition', 'COLUMN', N'DatePostingRemoved'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPosition', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects the type of employment or contract desired for the position; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPosition', 'COLUMN', N'EmploymentStatusDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The descriptive name of an individual''s position.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPosition', 'COLUMN', N'PositionTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indication of whether the OpenStaffPosition was filled or retired without filling.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPosition', 'COLUMN', N'PostingResultTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the program for which the OpenStaffPosition will be assigned; for example:
        Regular education
        Title I-Academic
        Title I-Non-Academic
        Special Education''
        Bilingual/English as a Second Language.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPosition', 'COLUMN', N'ProgramAssignmentDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPosition', 'COLUMN', N'RequisitionNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The titles of employment, official status, or rank of education staff.', 'SCHEMA', N'edfi', 'TABLE', N'OpenStaffPosition', 'COLUMN', N'StaffClassificationDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The current operational status of the education organization (e.g., active, inactive).', 'SCHEMA', N'edfi', 'TABLE', N'OperationalStatusType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'OperationalStatusType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the OperationalStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'OperationalStatusType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for OperationalStatus', 'SCHEMA', N'edfi', 'TABLE', N'OperationalStatusType', 'COLUMN', N'OperationalStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the OperationalStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'OperationalStatusType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The types of alternate names for a person.', 'SCHEMA', N'edfi', 'TABLE', N'OtherNameType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'OtherNameType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the OtherName type.', 'SCHEMA', N'edfi', 'TABLE', N'OtherNameType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for OtherName', 'SCHEMA', N'edfi', 'TABLE', N'OtherNameType', 'COLUMN', N'OtherNameTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the OtherName type.', 'SCHEMA', N'edfi', 'TABLE', N'OtherNameType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Parent''s address, if different from the student address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'AddressTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The apartment, room, or suite number of an address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'ApartmentRoomSuiteNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first date the address is valid. For physical addresses, the date the person moved to that address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of the building on the site, if more than one building shares the same address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'BuildingSiteNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the city in which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'City'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'CountyFIPSCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic latitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'Latitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic longitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'Longitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the county, parish, borough, or comparable unit (within a state) in 
                      ''which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'NameOfCounty'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a parent.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'ParentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The five or nine digit zip code or overseas postal code portion of an address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'PostalCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'StateAbbreviationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The street number and street name or post office box number of an address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentAddress', 'COLUMN', N'StreetNumberName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', 'SCHEMA', N'edfi', 'TABLE', N'ParentElectronicMail', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The electronic mail (e-mail) address listed for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'ParentElectronicMail', 'COLUMN', N'ElectronicMailAddress'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'ParentElectronicMail', 'COLUMN', N'ElectronicMailTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a parent.', 'SCHEMA', N'edfi', 'TABLE', N'ParentElectronicMail', 'COLUMN', N'ParentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'ParentElectronicMail', 'COLUMN', N'PrimaryEmailAddressIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', 'SCHEMA', N'edfi', 'TABLE', N'ParentIdentificationDocument', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The day when the document  expires, if null then never expires.', 'SCHEMA', N'edfi', 'TABLE', N'ParentIdentificationDocument', 'COLUMN', N'DocumentExpirationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title of the document given by the issuer.', 'SCHEMA', N'edfi', 'TABLE', N'ParentIdentificationDocument', 'COLUMN', N'DocumentTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The primary function of the document used for establishing identity.', 'SCHEMA', N'edfi', 'TABLE', N'ParentIdentificationDocument', 'COLUMN', N'IdentificationDocumentUseTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Country of origin of the document.', 'SCHEMA', N'edfi', 'TABLE', N'ParentIdentificationDocument', 'COLUMN', N'IssuerCountryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The unique identifier on the issuer''s identification system.', 'SCHEMA', N'edfi', 'TABLE', N'ParentIdentificationDocument', 'COLUMN', N'IssuerDocumentIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the entity or institution that issued the document.', 'SCHEMA', N'edfi', 'TABLE', N'ParentIdentificationDocument', 'COLUMN', N'IssuerName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a parent.', 'SCHEMA', N'edfi', 'TABLE', N'ParentIdentificationDocument', 'COLUMN', N'ParentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of the document relative to its purpose.', 'SCHEMA', N'edfi', 'TABLE', N'ParentIdentificationDocument', 'COLUMN', N'PersonalInformationVerificationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of elements that describes an international address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', 'COLUMN', N'AddressLine1'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The second line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', 'COLUMN', N'AddressLine2'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The third line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', 'COLUMN', N'AddressLine3'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The fourth line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', 'COLUMN', N'AddressLine4'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', 'COLUMN', N'AddressTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first date the address is valid. For physical addresses, the date the person moved to that address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the country.', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', 'COLUMN', N'CountryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic latitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', 'COLUMN', N'Latitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic longitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', 'COLUMN', N'Longitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a parent.', 'SCHEMA', N'edfi', 'TABLE', N'ParentInternationalAddress', 'COLUMN', N'ParentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Other names (e.g., alias, nickname, previous legal name) associated with a person.', 'SCHEMA', N'edfi', 'TABLE', N'ParentOtherName', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', 'SCHEMA', N'edfi', 'TABLE', N'ParentOtherName', 'COLUMN', N'FirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', 'SCHEMA', N'edfi', 'TABLE', N'ParentOtherName', 'COLUMN', N'GenerationCodeSuffix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name borne in common by members of a family.', 'SCHEMA', N'edfi', 'TABLE', N'ParentOtherName', 'COLUMN', N'LastSurname'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', 'SCHEMA', N'edfi', 'TABLE', N'ParentOtherName', 'COLUMN', N'MiddleName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The types of alternate names for a person.', 'SCHEMA', N'edfi', 'TABLE', N'ParentOtherName', 'COLUMN', N'OtherNameTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a parent.', 'SCHEMA', N'edfi', 'TABLE', N'ParentOtherName', 'COLUMN', N'ParentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A prefix used to denote the title, degree, position, or seniority of the person.', 'SCHEMA', N'edfi', 'TABLE', N'ParentOtherName', 'COLUMN', N'PersonalTitlePrefix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The 10-digit telephone number, including the area code, for the person.', 'SCHEMA', N'edfi', 'TABLE', N'ParentTelephone', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', 'SCHEMA', N'edfi', 'TABLE', N'ParentTelephone', 'COLUMN', N'OrderOfPriority'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a parent.', 'SCHEMA', N'edfi', 'TABLE', N'ParentTelephone', 'COLUMN', N'ParentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The telephone number including the area code, and extension, if applicable.', 'SCHEMA', N'edfi', 'TABLE', N'ParentTelephone', 'COLUMN', N'TelephoneNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of communication number listed for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'ParentTelephone', 'COLUMN', N'TelephoneNumberTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', 'SCHEMA', N'edfi', 'TABLE', N'ParentTelephone', 'COLUMN', N'TextMessageCapabilityIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents a parent or guardian of a student, such as mother, father, or caretaker.', 'SCHEMA', N'edfi', 'TABLE', N'Parent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', 'SCHEMA', N'edfi', 'TABLE', N'Parent', 'COLUMN', N'FirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', 'SCHEMA', N'edfi', 'TABLE', N'Parent', 'COLUMN', N'GenerationCodeSuffix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name borne in common by members of a family.', 'SCHEMA', N'edfi', 'TABLE', N'Parent', 'COLUMN', N'LastSurname'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The login ID for the user; used for security access control interface.', 'SCHEMA', N'edfi', 'TABLE', N'Parent', 'COLUMN', N'LoginId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person''s maiden name.', 'SCHEMA', N'edfi', 'TABLE', N'Parent', 'COLUMN', N'MaidenName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', 'SCHEMA', N'edfi', 'TABLE', N'Parent', 'COLUMN', N'MiddleName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a parent.', 'SCHEMA', N'edfi', 'TABLE', N'Parent', 'COLUMN', N'ParentUniqueId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a parent.', 'SCHEMA', N'edfi', 'TABLE', N'Parent', 'COLUMN', N'ParentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A prefix used to denote the title, degree, position, or seniority of the person.', 'SCHEMA', N'edfi', 'TABLE', N'Parent', 'COLUMN', N'PersonalTitlePrefix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A person''s gender.', 'SCHEMA', N'edfi', 'TABLE', N'Parent', 'COLUMN', N'SexTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This financial entity represents the sum of the financial transactions to date for employee compensation. An "employee" who performs services under the direction of the employing institution or agency, is compensated for such services by the employer and is eligible for employee benefits and wage or salary tax withholdings.', 'SCHEMA', N'edfi', 'TABLE', N'Payroll', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The alphanumeric string that identifies the account.', 'SCHEMA', N'edfi', 'TABLE', N'Payroll', 'COLUMN', N'AccountNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current balance (amount paid to employee) for account for the fiscal year.', 'SCHEMA', N'edfi', 'TABLE', N'Payroll', 'COLUMN', N'AmountToDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date of the reported payroll element.', 'SCHEMA', N'edfi', 'TABLE', N'Payroll', 'COLUMN', N'AsOfDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'Payroll', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The financial accounting year.', 'SCHEMA', N'edfi', 'TABLE', N'Payroll', 'COLUMN', N'FiscalYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'Payroll', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Defines standard levels of competency or performance that can be used for dashboard visualizations: advanced, proficient, basic, and below basic.', 'SCHEMA', N'edfi', 'TABLE', N'PerformanceBaseConversionType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'PerformanceBaseConversionType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the PerformanceBaseConversion type.', 'SCHEMA', N'edfi', 'TABLE', N'PerformanceBaseConversionType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for PerformanceBaseConversion', 'SCHEMA', N'edfi', 'TABLE', N'PerformanceBaseConversionType', 'COLUMN', N'PerformanceBaseConversionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the PerformanceBaseConversion type.', 'SCHEMA', N'edfi', 'TABLE', N'PerformanceBaseConversionType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines various levels or thresholds for performance on the assessment.', 'SCHEMA', N'edfi', 'TABLE', N'PerformanceLevelDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A conversion of the level to a standard set of performance levels.', 'SCHEMA', N'edfi', 'TABLE', N'PerformanceLevelDescriptor', 'COLUMN', N'PerformanceBaseConversionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'PerformanceLevelDescriptor', 'COLUMN', N'PerformanceLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The evidence presented to verify one''s personal identity; for example: driver''s license, passport, birth certificate, etc.', 'SCHEMA', N'edfi', 'TABLE', N'PersonalInformationVerificationType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'PersonalInformationVerificationType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the PersonalInformationVerification type.', 'SCHEMA', N'edfi', 'TABLE', N'PersonalInformationVerificationType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for PersonalInformationVerification', 'SCHEMA', N'edfi', 'TABLE', N'PersonalInformationVerificationType', 'COLUMN', N'PersonalInformationVerificationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the PersonalInformationVerification type.', 'SCHEMA', N'edfi', 'TABLE', N'PersonalInformationVerificationType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of students the Section is offered and tailored to.', 'SCHEMA', N'edfi', 'TABLE', N'PopulationServedType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'PopulationServedType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the PopulationServed type.', 'SCHEMA', N'edfi', 'TABLE', N'PopulationServedType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for PopulationServed', 'SCHEMA', N'edfi', 'TABLE', N'PopulationServedType', 'COLUMN', N'PopulationServedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the PopulationServed type.', 'SCHEMA', N'edfi', 'TABLE', N'PopulationServedType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A code describing the type of post-secondary event (e.g., college application or acceptance).', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventCategoryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventCategoryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the PostSecondaryEventCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventCategoryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for PostSecondaryEventCategory', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventCategoryType', 'COLUMN', N'PostSecondaryEventCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the PostSecondaryEventCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventCategoryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitutionIdentificationCode', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school system, state, or agency assigning the identification code.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitutionIdentificationCode', 'COLUMN', N'EducationOrganizationIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the event occurred or was recorded.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitutionIdentificationCode', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitutionIdentificationCode', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The PostSecondaryEvent that is logged (e.g., FAFSA application, college application, college acceptance).', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitutionIdentificationCode', 'COLUMN', N'PostSecondaryEventCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitutionIdentificationCode', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The categories in which an institution serves the students.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the event occurred or was recorded.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The categories in which an institution serves the students.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction', 'COLUMN', N'MediumOfInstructionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The PostSecondaryEvent that is logged (e.g., FAFSA application, college application, college acceptance).', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction', 'COLUMN', N'PostSecondaryEventCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An organization that provides educational programs for individuals who have completed or otherwise left educational programs in secondary school(s).', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitution', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A classification of whether a postsecondary institution is operated by publicly elected or appointed officials (public control) or by privately elected or appointed officials and derives its major source of funds from private sources (private control).', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitution', 'COLUMN', N'AdministrativeFundingControlDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the event occurred or was recorded.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitution', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The postsecondary institution associated with the event.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitution', 'COLUMN', N'NameOfInstitution'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The PostSecondaryEvent that is logged (e.g., FAFSA application, college application, college acceptance).', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitution', 'COLUMN', N'PostSecondaryEventCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ID of the post secondary institution.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitution', 'COLUMN', N'PostSecondaryInstitutionId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A classification of whether a post secondary institution''s highest level of offering is a program of 4-years or higher (4 year), 2-but-less-than 4-years (2 year), or less than 2-years.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitution', 'COLUMN', N'PostSecondaryInstitutionLevelTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEventPostSecondaryInstitution', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity captures significant postsecondary events during a student''s high school tenure (e.g., FAFSA application or college application, acceptance, and enrollment) or during a student''s enrollment at a post-secondary institution.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEvent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the event occurred or was recorded.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEvent', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The PostSecondaryEvent that is logged (e.g., FAFSA application, college application, college acceptance).', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEvent', 'COLUMN', N'PostSecondaryEventCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryEvent', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A classification of whether a post-secondary institution''s highest level of offering is a program of 4 years or higher (4 year), 2 but less than 4 years (2 year) or less than 2 years.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryInstitutionLevelType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryInstitutionLevelType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the PostSecondaryInstitutionLevel type.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryInstitutionLevelType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for PostSecondaryInstitutionLevel', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryInstitutionLevelType', 'COLUMN', N'PostSecondaryInstitutionLevelTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the PostSecondaryInstitutionLevel type.', 'SCHEMA', N'edfi', 'TABLE', N'PostSecondaryInstitutionLevelType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indication of whether the position was filled or retired without filling.', 'SCHEMA', N'edfi', 'TABLE', N'PostingResultType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'PostingResultType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the PostingResult type.', 'SCHEMA', N'edfi', 'TABLE', N'PostingResultType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for PostingResult', 'SCHEMA', N'edfi', 'TABLE', N'PostingResultType', 'COLUMN', N'PostingResultTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the PostingResult type.', 'SCHEMA', N'edfi', 'TABLE', N'PostingResultType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the name of the education program for which a teacher is assigned to a school.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramAssignmentDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramAssignmentDescriptor', 'COLUMN', N'ProgramAssignmentDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramAssignmentDescriptor', 'COLUMN', N'ProgramAssignmentTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the education program for which a teacher is assigned to a school.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramAssignmentType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramAssignmentType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ProgramAssignment type.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramAssignmentType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ProgramAssignment', 'SCHEMA', N'edfi', 'TABLE', N'ProgramAssignmentType', 'COLUMN', N'ProgramAssignmentTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ProgramAssignment type.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramAssignmentType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines important characteristics of the Program, such as categories or particular indications.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristicDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristicDescriptor', 'COLUMN', N'ProgramCharacteristicDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristicDescriptor', 'COLUMN', N'ProgramCharacteristicTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects important characteristics of the Program, such as categories or particular indications.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristicType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristicType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ProgramCharacteristic type.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristicType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ProgramCharacteristic', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristicType', 'COLUMN', N'ProgramCharacteristicTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ProgramCharacteristic type.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristicType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects important characteristics of the Program, such as categories or particular indications.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristic', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristic', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects important characteristics of the Program, such as categories or particular indications.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristic', 'COLUMN', N'ProgramCharacteristicDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristic', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramCharacteristic', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'References the LearningObjective(s) with which the Program is associated.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramLearningObjective', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramLearningObjective', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'ProgramLearningObjective', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramLearningObjective', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramLearningObjective', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramLearningObjective', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'LearningStandard followed by this program.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramLearningStandard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramLearningStandard', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'ProgramLearningStandard', 'COLUMN', N'LearningStandardId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramLearningStandard', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramLearningStandard', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Defines the services this program provides to students.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramService', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramService', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramService', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramService', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Defines the services this program provides to students.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramService', 'COLUMN', N'ServiceDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ultimate and intermediate providers of funds for a particular educational or service program or activity or for an individual''s participation in the program or activity (e.g., Federal, State, ESC, District, School, Private Org).', 'SCHEMA', N'edfi', 'TABLE', N'ProgramSponsorType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramSponsorType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ProgramSponsor type.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramSponsorType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ProgramSponsor', 'SCHEMA', N'edfi', 'TABLE', N'ProgramSponsorType', 'COLUMN', N'ProgramSponsorTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ProgramSponsor type.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramSponsorType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Program type.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Program', 'SCHEMA', N'edfi', 'TABLE', N'ProgramType', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Program type.', 'SCHEMA', N'edfi', 'TABLE', N'ProgramType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students.', 'SCHEMA', N'edfi', 'TABLE', N'Program', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'Program', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a program by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'Program', 'COLUMN', N'ProgramId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'Program', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ultimate and intermediate providers of funds for a particular educational or service program or activity, or for an individual''s participation in the program or activity (e.g., Federal, State, ESC, District, School, Private Organization).', 'SCHEMA', N'edfi', 'TABLE', N'Program', 'COLUMN', N'ProgramSponsorTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'Program', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown).', 'SCHEMA', N'edfi', 'TABLE', N'PublicationStatusType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'PublicationStatusType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the PublicationStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'PublicationStatusType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for PublicationStatus', 'SCHEMA', N'edfi', 'TABLE', N'PublicationStatusType', 'COLUMN', N'PublicationStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the PublicationStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'PublicationStatusType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The enumeration items defining the racial categories which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies.', 'SCHEMA', N'edfi', 'TABLE', N'RaceType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'RaceType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Race type.', 'SCHEMA', N'edfi', 'TABLE', N'RaceType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Race', 'SCHEMA', N'edfi', 'TABLE', N'RaceType', 'COLUMN', N'RaceTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Race type.', 'SCHEMA', N'edfi', 'TABLE', N'RaceType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the reason a student exited a program.', 'SCHEMA', N'edfi', 'TABLE', N'ReasonExitedDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ReasonExitedDescriptor', 'COLUMN', N'ReasonExitedDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ReasonExitedDescriptor', 'COLUMN', N'ReasonExitedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The reason the child left the program within a school or district.', 'SCHEMA', N'edfi', 'TABLE', N'ReasonExitedType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ReasonExitedType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ReasonExited type.', 'SCHEMA', N'edfi', 'TABLE', N'ReasonExitedType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ReasonExited', 'SCHEMA', N'edfi', 'TABLE', N'ReasonExitedType', 'COLUMN', N'ReasonExitedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ReasonExited type.', 'SCHEMA', N'edfi', 'TABLE', N'ReasonExitedType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The primary reason student is not tested. For example:
    Absent
    Refusal by parent
    Refusal by student
    Medical waiver
    Illness
    Disruptive behavior
    LEP Exempt
    ''...', 'SCHEMA', N'edfi', 'TABLE', N'ReasonNotTestedType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ReasonNotTestedType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ReasonNotTested type.', 'SCHEMA', N'edfi', 'TABLE', N'ReasonNotTestedType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ReasonNotTested', 'SCHEMA', N'edfi', 'TABLE', N'ReasonNotTestedType', 'COLUMN', N'ReasonNotTestedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ReasonNotTested type.', 'SCHEMA', N'edfi', 'TABLE', N'ReasonNotTestedType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The nature of recognition given to the student for accomplishments in a co-curricular, or extra-curricular activity.', 'SCHEMA', N'edfi', 'TABLE', N'RecognitionType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'RecognitionType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Recognition type.', 'SCHEMA', N'edfi', 'TABLE', N'RecognitionType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Recognition', 'SCHEMA', N'edfi', 'TABLE', N'RecognitionType', 'COLUMN', N'RecognitionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Recognition type.', 'SCHEMA', N'edfi', 'TABLE', N'RecognitionType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The nature of an individual''s relationship to a student.', 'SCHEMA', N'edfi', 'TABLE', N'RelationType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'RelationType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Relation type.', 'SCHEMA', N'edfi', 'TABLE', N'RelationType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Relation', 'SCHEMA', N'edfi', 'TABLE', N'RelationType', 'COLUMN', N'RelationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Relation type.', 'SCHEMA', N'edfi', 'TABLE', N'RelationType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication as to whether a student has previously taken a given course.', 'SCHEMA', N'edfi', 'TABLE', N'RepeatIdentifierType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'RepeatIdentifierType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the RepeatIdentifier type.', 'SCHEMA', N'edfi', 'TABLE', N'RepeatIdentifierType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for RepeatIdentifier', 'SCHEMA', N'edfi', 'TABLE', N'RepeatIdentifierType', 'COLUMN', N'RepeatIdentifierTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the RepeatIdentifier type.', 'SCHEMA', N'edfi', 'TABLE', N'RepeatIdentifierType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grades for the classes attended by the Student for this grading period.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the Student''s entry or assignment to the Section.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of grade reported (e.g., Exam, Final, Grading Period).', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'GradeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'GradingPeriodBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardGrade', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Student competency evaluations associated for this grading period.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentCompetencyObjective', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentCompetencyObjective', 'COLUMN', N'GradingPeriodBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentCompetencyObjective', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The designated title of the CompetencyObjective.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentCompetencyObjective', 'COLUMN', N'Objective'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentCompetencyObjective', 'COLUMN', N'ObjectiveEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade level for which the CompetencyObjective is targeted.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentCompetencyObjective', 'COLUMN', N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentCompetencyObjective', 'COLUMN', N'ReportCardEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentCompetencyObjective', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentCompetencyObjective', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The StudentLearningObjective evaluations associated for this grading period.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentLearningObjective', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentLearningObjective', 'COLUMN', N'GradingPeriodBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentLearningObjective', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentLearningObjective', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentLearningObjective', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentLearningObjective', 'COLUMN', N'ReportCardEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentLearningObjective', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCardStudentLearningObjective', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This educational entity represents the collection of student grades for courses taken during a grading period.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCard', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A measure of cumulative average performance in all courses taken by an individual from the beginning of the school year through the current grading period.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCard', 'COLUMN', N'GPACumulative'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A measure of average performance in all courses taken by an individual for the current grading period.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCard', 'COLUMN', N'GPAGivenGradingPeriod'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCard', 'COLUMN', N'GradingPeriodBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCard', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of days an individual is absent when school is in session during a given reporting period.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCard', 'COLUMN', N'NumberOfDaysAbsent'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of days an individual is present when school is in session during a given reporting period.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCard', 'COLUMN', N'NumberOfDaysInAttendance'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of days an individual is tardy during a given reporting period.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCard', 'COLUMN', N'NumberOfDaysTardy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'ReportCard', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'ReportCard', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the type of individual who reported an incident.', 'SCHEMA', N'edfi', 'TABLE', N'ReporterDescriptionDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ReporterDescriptionDescriptor', 'COLUMN', N'ReporterDescriptionDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ReporterDescriptionDescriptor', 'COLUMN', N'ReporterDescriptionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Information on the type of individual who reported the incident.', 'SCHEMA', N'edfi', 'TABLE', N'ReporterDescriptionType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ReporterDescriptionType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ReporterDescription type.', 'SCHEMA', N'edfi', 'TABLE', N'ReporterDescriptionType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ReporterDescription', 'SCHEMA', N'edfi', 'TABLE', N'ReporterDescriptionType', 'COLUMN', N'ReporterDescriptionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ReporterDescription type.', 'SCHEMA', N'edfi', 'TABLE', N'ReporterDescriptionType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines indications of the location of a person''s legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit.', 'SCHEMA', N'edfi', 'TABLE', N'ResidencyStatusDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ResidencyStatusDescriptor', 'COLUMN', N'ResidencyStatusDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ResidencyStatusDescriptor', 'COLUMN', N'ResidencyStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit.', 'SCHEMA', N'edfi', 'TABLE', N'ResidencyStatusType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ResidencyStatusType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ResidencyStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'ResidencyStatusType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ResidencyStatus', 'SCHEMA', N'edfi', 'TABLE', N'ResidencyStatusType', 'COLUMN', N'ResidencyStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ResidencyStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'ResidencyStatusType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of the response.  For example:
    Nonscorable response
    Ineffective response
    Effective response
    Partial response
    ...', 'SCHEMA', N'edfi', 'TABLE', N'ResponseIndicatorType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ResponseIndicatorType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ResponseIndicator type.', 'SCHEMA', N'edfi', 'TABLE', N'ResponseIndicatorType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ResponseIndicator', 'SCHEMA', N'edfi', 'TABLE', N'ResponseIndicatorType', 'COLUMN', N'ResponseIndicatorTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ResponseIndicator type.', 'SCHEMA', N'edfi', 'TABLE', N'ResponseIndicatorType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines types of responsibility an education organization may have for a student (e.g., accountability, attendance, funding).', 'SCHEMA', N'edfi', 'TABLE', N'ResponsibilityDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ResponsibilityDescriptor', 'COLUMN', N'ResponsibilityDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ResponsibilityDescriptor', 'COLUMN', N'ResponsibilityTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indications of an education organization''s responsibility for a student, such as accountability, attendance, funding, etc.', 'SCHEMA', N'edfi', 'TABLE', N'ResponsibilityType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ResponsibilityType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Responsibility type.', 'SCHEMA', N'edfi', 'TABLE', N'ResponsibilityType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Responsibility', 'SCHEMA', N'edfi', 'TABLE', N'ResponsibilityType', 'COLUMN', N'ResponsibilityTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Responsibility type.', 'SCHEMA', N'edfi', 'TABLE', N'ResponsibilityType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The special education program associated with the RestraintEvent.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventProgram', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventProgram', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the RestraintEvent.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventProgram', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventProgram', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventProgram', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventProgram', 'COLUMN', N'RestraintEventIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventProgram', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventProgram', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The items of categorization of the circumstances or reason for the restraint.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventReasonType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventReasonType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the RestraintEventReason type.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventReasonType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for RestraintEventReason', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventReasonType', 'COLUMN', N'RestraintEventReasonTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the RestraintEventReason type.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventReasonType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A categorization of the circumstances or reason for the RestraintEvent.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventReason', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the RestraintEvent.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventReason', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventReason', 'COLUMN', N'RestraintEventIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A categorization of the circumstances or reason for the RestraintEvent.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventReason', 'COLUMN', N'RestraintEventReasonTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventReason', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEventReason', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This event entity represents the instances where a special education student was physically or mechanically restrained due to imminent serious physical harm to themselves or others, imminent serious property destruction or a combination of both imminent serious physical harm to themselves or others and imminent serious property destruction.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEvent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The setting where the RestraintEvent was exercised.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEvent', 'COLUMN', N'EducationalEnvironmentTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the RestraintEvent.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEvent', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEvent', 'COLUMN', N'RestraintEventIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEvent', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'RestraintEvent', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The results can be expressed as a number, percentile, range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'ResultDatatypeType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'ResultDatatypeType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the ResultDatatype type.', 'SCHEMA', N'edfi', 'TABLE', N'ResultDatatypeType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for ResultDatatype', 'SCHEMA', N'edfi', 'TABLE', N'ResultDatatypeType', 'COLUMN', N'ResultDatatypeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the ResultDatatype type.', 'SCHEMA', N'edfi', 'TABLE', N'ResultDatatypeType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator if the test was retaken.  For example:
    Primary administration
    First retest
    Second retest
    ...', 'SCHEMA', N'edfi', 'TABLE', N'RetestIndicatorType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'RetestIndicatorType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the RetestIndicator type.', 'SCHEMA', N'edfi', 'TABLE', N'RetestIndicatorType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for RetestIndicator', 'SCHEMA', N'edfi', 'TABLE', N'RetestIndicatorType', 'COLUMN', N'RetestIndicatorTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the RetestIndicator type.', 'SCHEMA', N'edfi', 'TABLE', N'RetestIndicatorType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of school. For example: High School, Middle School, Elementary School.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolCategoryType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolCategoryType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the SchoolCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolCategoryType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for SchoolCategory', 'SCHEMA', N'edfi', 'TABLE', N'SchoolCategoryType', 'COLUMN', N'SchoolCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the SchoolCategory type.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolCategoryType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The one or more categories of school. For example: High School, Middle School, and/or Elementary School.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolCategory', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The one or more categories of school. For example: High School, Middle School, and/or Elementary School.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolCategory', 'COLUMN', N'SchoolCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'SchoolCategory', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether the LEA was able to implement the provisions for public school choice under Title I, Part A, Section 1116 of ESEA, as amended.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolChoiceImplementStatusType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolChoiceImplementStatusType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the SchoolChoiceImplementStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolChoiceImplementStatusType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for SchoolChoiceImplementStatus', 'SCHEMA', N'edfi', 'TABLE', N'SchoolChoiceImplementStatusType', 'COLUMN', N'SchoolChoiceImplementStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the SchoolChoiceImplementStatus type.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolChoiceImplementStatusType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines indications of a student''s level of eligibility for breakfast, lunch, snack, supper, and milk programs.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolFoodServicesEligibilityDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolFoodServicesEligibilityDescriptor', 'COLUMN', N'SchoolFoodServicesEligibilityDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolFoodServicesEligibilityDescriptor', 'COLUMN', N'SchoolFoodServicesEligibilityTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of a student''s level of eligibility for breakfast, lunch, snack, supper, and milk programs.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolFoodServicesEligibilityType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolFoodServicesEligibilityType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the SchoolFoodServicesEligibility type.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolFoodServicesEligibilityType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for SchoolFoodServicesEligibility', 'SCHEMA', N'edfi', 'TABLE', N'SchoolFoodServicesEligibilityType', 'COLUMN', N'SchoolFoodServicesEligibilityTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the SchoolFoodServicesEligibility type.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolFoodServicesEligibilityType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade levels served at the school.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade levels served at the school.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'SchoolGradeLevel', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of education institution as classified by its primary focus.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the School type.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for School', 'SCHEMA', N'edfi', 'TABLE', N'SchoolType', 'COLUMN', N'SchoolTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the School type.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifier for a school year.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolYearType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The code for the current school year.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolYearType', 'COLUMN', N'CurrentSchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for School Year', 'SCHEMA', N'edfi', 'TABLE', N'SchoolYearType', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the SchoolYear type.', 'SCHEMA', N'edfi', 'TABLE', N'SchoolYearType', 'COLUMN', N'SchoolYearDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups.', 'SCHEMA', N'edfi', 'TABLE', N'School', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of education institution as classified by its funding source, for example public or private.', 'SCHEMA', N'edfi', 'TABLE', N'School', 'COLUMN', N'AdministrativeFundingControlDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of agency that approved the establishment or continuation of a charter school.', 'SCHEMA', N'edfi', 'TABLE', N'School', 'COLUMN', N'CharterApprovalAgencyTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year in which a charter school was initially approved.', 'SCHEMA', N'edfi', 'TABLE', N'School', 'COLUMN', N'CharterApprovalSchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school.', 'SCHEMA', N'edfi', 'TABLE', N'School', 'COLUMN', N'CharterStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of Internet access available.', 'SCHEMA', N'edfi', 'TABLE', N'School', 'COLUMN', N'InternetAccessTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a local education agency by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'School', 'COLUMN', N'LocalEducationAgencyId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A school that has been designed: 1) to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing, or eliminating racial isolation; and/or 2) to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, or foreign language).', 'SCHEMA', N'edfi', 'TABLE', N'School', 'COLUMN', N'MagnetSpecialProgramEmphasisSchoolTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'School', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of education institution as classified by its primary focus.', 'SCHEMA', N'edfi', 'TABLE', N'School', 'COLUMN', N'SchoolTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Denotes the Title I Part A designation for the school.', 'SCHEMA', N'edfi', 'TABLE', N'School', 'COLUMN', N'TitleIPartASchoolDesignationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Captures attendance taken event for given section.', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year of the CalendarDate.', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the SectionAttendanceTakenEvent was submitted, which could be a different date than the instructional day.', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'SectionAttendanceTakenEvent', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines characteristics of a Section, such as whether attendance is taken and the Section is graded.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristicDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristicDescriptor', 'COLUMN', N'SectionCharacteristicDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristicDescriptor', 'COLUMN', N'SectionCharacteristicTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Enumeration items for Section Characteristic.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristicType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristicType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the SectionCharacteristic type.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristicType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for SectionCharacteristic', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristicType', 'COLUMN', N'SectionCharacteristicTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the SectionCharacteristic type.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristicType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects important characteristics of the Section, such as whether or not attendance is taken and the Section is graded.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristic', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristic', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristic', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristic', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristic', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristic', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects important characteristics of the Section, such as whether or not attendance is taken and the Section is graded.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristic', 'COLUMN', N'SectionCharacteristicDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristic', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristic', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'SectionCharacteristic', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Optional reference to program (e.g., CTE) to which the Section is associated.', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'SectionProgram', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section.', 'SCHEMA', N'edfi', 'TABLE', N'Section', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'AvailableCreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'AvailableCredits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'AvailableCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The setting in which a child receives education and related services; for example:
        Center-based instruction
        Home-based instruction
        Hospital class
        Mainstream
        Residential care and treatment facility
        ...', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'EducationalEnvironmentTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The primary language of instruction, if omitted English is assumed.', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'InstructionLanguageDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The media through which teachers provide instruction to students and students and teachers communicate about instructional matters; for example:
        Technology-based instruction in classroom
        Correspondence instruction
        Face-to-face instruction
        Virtual/On-line Distance learning
        Center-based instruction
        ...', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'MediumOfInstructionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of students the Section is offered and tailored to; for example:
        Bilingual students
        Remedial education students
        Gifted and talented students
        Career and Technical Education students
        Special education students
        ...', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'PopulationServedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'Section', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the reasons for terminating the employment.', 'SCHEMA', N'edfi', 'TABLE', N'SeparationReasonDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'SeparationReasonDescriptor', 'COLUMN', N'SeparationReasonDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'SeparationReasonDescriptor', 'COLUMN', N'SeparationReasonTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reason for terminating the employment; for example:  Employment in education, Employment outside of education, Retirement, Family/personal relocation, Change of assignment.', 'SCHEMA', N'edfi', 'TABLE', N'SeparationReasonType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'SeparationReasonType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the SeparationReason type.', 'SCHEMA', N'edfi', 'TABLE', N'SeparationReasonType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for SeparationReason', 'SCHEMA', N'edfi', 'TABLE', N'SeparationReasonType', 'COLUMN', N'SeparationReasonTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the SeparationReason type.', 'SCHEMA', N'edfi', 'TABLE', N'SeparationReasonType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Type of employment separation; for example:  Voluntary separation, Involuntary separation, Mutual agreement. Other, etc.', 'SCHEMA', N'edfi', 'TABLE', N'SeparationType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'SeparationType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Separation type.', 'SCHEMA', N'edfi', 'TABLE', N'SeparationType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Separation', 'SCHEMA', N'edfi', 'TABLE', N'SeparationType', 'COLUMN', N'SeparationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Separation type.', 'SCHEMA', N'edfi', 'TABLE', N'SeparationType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the services provided by an education organization to populations of students associated with a program.', 'SCHEMA', N'edfi', 'TABLE', N'ServiceDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A classification of the behavior for reporting types.', 'SCHEMA', N'edfi', 'TABLE', N'ServiceDescriptor', 'COLUMN', N'ServiceCategory'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'ServiceDescriptor', 'COLUMN', N'ServiceDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The academic weeks associated with the school year.', 'SCHEMA', N'edfi', 'TABLE', N'SessionAcademicWeek', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'SessionAcademicWeek', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'SessionAcademicWeek', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'SessionAcademicWeek', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school label for the week.', 'SCHEMA', N'edfi', 'TABLE', N'SessionAcademicWeek', 'COLUMN', N'WeekIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grading periods associated with the calendar.', 'SCHEMA', N'edfi', 'TABLE', N'SessionGradingPeriod', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'SessionGradingPeriod', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'SessionGradingPeriod', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'SessionGradingPeriod', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'SessionGradingPeriod', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'SessionGradingPeriod', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents the prescribed span of time when an education institution is open, instruction is provided and students are under the direction and guidance of teachers and/or education institution administration. A session may be interrupted by one or more vacations.', 'SCHEMA', N'edfi', 'TABLE', N'Session', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the Session.', 'SCHEMA', N'edfi', 'TABLE', N'Session', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day and year of the last day of the Session.', 'SCHEMA', N'edfi', 'TABLE', N'Session', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'Session', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'Session', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', 'SCHEMA', N'edfi', 'TABLE', N'Session', 'COLUMN', N'SessionName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'Session', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The total number of instructional days in the school calendar.', 'SCHEMA', N'edfi', 'TABLE', N'Session', 'COLUMN', N'TotalInstructionalDays'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A person''s gender.', 'SCHEMA', N'edfi', 'TABLE', N'SexType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'SexType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Sex type.', 'SCHEMA', N'edfi', 'TABLE', N'SexType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Sex', 'SCHEMA', N'edfi', 'TABLE', N'SexType', 'COLUMN', N'SexTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Sex type.', 'SCHEMA', N'edfi', 'TABLE', N'SexType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the major instructional setting (more than 50 percent of a student''s special education program).', 'SCHEMA', N'edfi', 'TABLE', N'SpecialEducationSettingDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'SpecialEducationSettingDescriptor', 'COLUMN', N'SpecialEducationSettingDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'SpecialEducationSettingDescriptor', 'COLUMN', N'SpecialEducationSettingTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The major instructional setting (more than 50 percent of a student''s special education program).', 'SCHEMA', N'edfi', 'TABLE', N'SpecialEducationSettingType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'SpecialEducationSettingType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the SpecialEducationSetting type.', 'SCHEMA', N'edfi', 'TABLE', N'SpecialEducationSettingType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the SpecialEducationSetting type.', 'SCHEMA', N'edfi', 'TABLE', N'SpecialEducationSettingType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for SpecialEducationSetting', 'SCHEMA', N'edfi', 'TABLE', N'SpecialEducationSettingType', 'COLUMN', N'SpecialEducationSettingTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of elements that describes an address, including the street address, city, state, and ZIP code.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'AddressTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The apartment, room, or suite number of an address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'ApartmentRoomSuiteNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first date the address is valid. For physical addresses, the date the person moved to that address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of the building on the site, if more than one building shares the same address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'BuildingSiteNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the city in which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'City'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'CountyFIPSCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic latitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'Latitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic longitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'Longitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the county, parish, borough, or comparable unit (within a state) in 
                      ''which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'NameOfCounty'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The five or nine digit zip code or overseas postal code portion of an address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'PostalCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'StateAbbreviationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The street number and street name or post office box number of an address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffAddress', 'COLUMN', N'StreetNumberName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines an individual''s title of employment, official status or rank.', 'SCHEMA', N'edfi', 'TABLE', N'StaffClassificationDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'StaffClassificationDescriptor', 'COLUMN', N'StaffClassificationDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'StaffClassificationDescriptor', 'COLUMN', N'StaffClassificationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An individual''s title of employment, official status or rank.', 'SCHEMA', N'edfi', 'TABLE', N'StaffClassificationType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'StaffClassificationType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the StaffClassification type.', 'SCHEMA', N'edfi', 'TABLE', N'StaffClassificationType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the StaffClassification type.', 'SCHEMA', N'edfi', 'TABLE', N'StaffClassificationType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for StaffClassification', 'SCHEMA', N'edfi', 'TABLE', N'StaffClassificationType', 'COLUMN', N'StaffClassificationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association indicates the Staff associated with a cohort of students.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCohortAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Start date for the association of staff to this cohort.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCohortAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name or ID for the Cohort.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCohortAssociation', 'COLUMN', N'CohortIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCohortAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'End date for the association of staff to this cohort.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCohortAssociation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCohortAssociation', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of whether the staff has access to the student records of the cohort per district interpretation of FERPA and other privacy laws, regulations, and policies.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCohortAssociation', 'COLUMN', N'StudentRecordAccess'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The legal document or authorization giving authorization to perform teaching assignment services.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCredential', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which an active credential held by an individual will expire.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCredential', 'COLUMN', N'CredentialExpirationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The field of certification for the certificate (e.g., Mathematics, Music).', 'SCHEMA', N'edfi', 'TABLE', N'StaffCredential', 'COLUMN', N'CredentialFieldDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which an active credential was issued to an individual.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCredential', 'COLUMN', N'CredentialIssuanceDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the category of credential an individual holds.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCredential', 'COLUMN', N'CredentialTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade level(s) certified for teaching.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCredential', 'COLUMN', N'LevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCredential', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCredential', 'COLUMN', N'StateOfIssueStateAbbreviationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the pre-determined criteria for granting the teaching credential that an individual holds.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCredential', 'COLUMN', N'TeachingCredentialBasisTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the category of a legal document giving authorization to perform teaching assignment services.', 'SCHEMA', N'edfi', 'TABLE', N'StaffCredential', 'COLUMN', N'TeachingCredentialDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association indicates the education organization to which a staff member provides services; also known as school of service.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the LEA.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'EmploymentEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which an individual was hired for a position.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'EmploymentHireDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects the type of employment or contract; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'EmploymentStatusDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the end or termination date of a staff member''s employment, contract, or relationship with the LEA.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Describes whether the assignment is this the staff member''s primary assignment, secondary assignment, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'OrderOfAssignment'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The descriptive name of an individual''s position.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'PositionTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The titles of employment, official status, or rank of education staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'StaffClassificationDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association indicates the EducationOrganization an employee, contractor, volunteer, or other service provider is formally associated with typically indicated by which organization the staff member has a services contract with or receives compensation from.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The department or suborganization the employee/contractor is associated with in the EducationOrganization.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects the type of employment or contract; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', 'COLUMN', N'EmploymentStatusDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', 'COLUMN', N'FullTimeEquivalency'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which an individual was hired for a position.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', 'COLUMN', N'HireDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Hourly wage associated with the employment position being reported.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', 'COLUMN', N'HourlyWage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date at which the staff member was made an official offer for this employment.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', 'COLUMN', N'OfferDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reason for terminating the employment; for example:
        Employment in education
        Employment outside of education
        Retirement
        Family/personal relocation
        Change of assignment.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', 'COLUMN', N'SeparationReasonDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Type of employment separation; for example: Voluntary separation, Involuntary separation,
        Mutual agreement
        Other, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', 'COLUMN', N'SeparationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationEmploymentAssociation', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', 'SCHEMA', N'edfi', 'TABLE', N'StaffElectronicMail', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The electronic mail (e-mail) address listed for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'StaffElectronicMail', 'COLUMN', N'ElectronicMailAddress'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'StaffElectronicMail', 'COLUMN', N'ElectronicMailTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'StaffElectronicMail', 'COLUMN', N'PrimaryEmailAddressIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffElectronicMail', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationCode', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The organization code or name assigning the staff Identification Code.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationCode', 'COLUMN', N'AssigningOrganizationIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationCode', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationCode', 'COLUMN', N'StaffIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationCode', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationDocument', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The day when the document  expires, if null then never expires.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationDocument', 'COLUMN', N'DocumentExpirationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title of the document given by the issuer.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationDocument', 'COLUMN', N'DocumentTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The primary function of the document used for establishing identity.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationDocument', 'COLUMN', N'IdentificationDocumentUseTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Country of origin of the document.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationDocument', 'COLUMN', N'IssuerCountryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The unique identifier on the issuer''s identification system.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationDocument', 'COLUMN', N'IssuerDocumentIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the entity or institution that issued the document.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationDocument', 'COLUMN', N'IssuerName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of the document relative to its purpose.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationDocument', 'COLUMN', N'PersonalInformationVerificationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationDocument', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the originating record system and code that is used for record-keeping purposes of the staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationSystemDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationSystemDescriptor', 'COLUMN', N'StaffIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationSystemDescriptor', 'COLUMN', N'StaffIdentificationSystemTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A coding scheme that is used for identification and record-keeping purposes by schools, social services or other agencies to refer to a staff member.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationSystemType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationSystemType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the StaffIdentificationSystem type.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationSystemType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the StaffIdentificationSystem type.', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationSystemType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for StaffIdentificationSystem', 'SCHEMA', N'edfi', 'TABLE', N'StaffIdentificationSystemType', 'COLUMN', N'StaffIdentificationSystemTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of elements that describes an international address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', 'COLUMN', N'AddressLine1'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The second line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', 'COLUMN', N'AddressLine2'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The third line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', 'COLUMN', N'AddressLine3'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The fourth line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', 'COLUMN', N'AddressLine4'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', 'COLUMN', N'AddressTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first date the address is valid. For physical addresses, the date the person moved to that address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the country.', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', 'COLUMN', N'CountryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic latitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', 'COLUMN', N'Latitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic longitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', 'COLUMN', N'Longitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffInternationalAddress', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', 'SCHEMA', N'edfi', 'TABLE', N'StaffLanguageUse', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A specification of which written or spoken communication is being used.', 'SCHEMA', N'edfi', 'TABLE', N'StaffLanguageUse', 'COLUMN', N'LanguageDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', 'SCHEMA', N'edfi', 'TABLE', N'StaffLanguageUse', 'COLUMN', N'LanguageUseTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffLanguageUse', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The language(s) the individual uses to communicate.', 'SCHEMA', N'edfi', 'TABLE', N'StaffLanguage', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A specification of which written or spoken communication is being used.', 'SCHEMA', N'edfi', 'TABLE', N'StaffLanguage', 'COLUMN', N'LanguageDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffLanguage', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Other names (e.g., alias, nickname, previous legal name) associated with a person.', 'SCHEMA', N'edfi', 'TABLE', N'StaffOtherName', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', 'SCHEMA', N'edfi', 'TABLE', N'StaffOtherName', 'COLUMN', N'FirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', 'SCHEMA', N'edfi', 'TABLE', N'StaffOtherName', 'COLUMN', N'GenerationCodeSuffix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name borne in common by members of a family.', 'SCHEMA', N'edfi', 'TABLE', N'StaffOtherName', 'COLUMN', N'LastSurname'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', 'SCHEMA', N'edfi', 'TABLE', N'StaffOtherName', 'COLUMN', N'MiddleName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The types of alternate names for a person.', 'SCHEMA', N'edfi', 'TABLE', N'StaffOtherName', 'COLUMN', N'OtherNameTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A prefix used to denote the title, degree, position, or seniority of the person.', 'SCHEMA', N'edfi', 'TABLE', N'StaffOtherName', 'COLUMN', N'PersonalTitlePrefix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffOtherName', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association indicates the Staff associated with a program.', 'SCHEMA', N'edfi', 'TABLE', N'StaffProgramAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Start date for the association of staff to this program.', 'SCHEMA', N'edfi', 'TABLE', N'StaffProgramAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'End date for the association of staff to this program.', 'SCHEMA', N'edfi', 'TABLE', N'StaffProgramAssociation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StaffProgramAssociation', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StaffProgramAssociation', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StaffProgramAssociation', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffProgramAssociation', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of whether the staff has access to the student records of the program per district interpretation of FERPA and other privacy laws, regulations, and policies.', 'SCHEMA', N'edfi', 'TABLE', N'StaffProgramAssociation', 'COLUMN', N'StudentRecordAccess'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', 'SCHEMA', N'edfi', 'TABLE', N'StaffRace', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', 'SCHEMA', N'edfi', 'TABLE', N'StaffRace', 'COLUMN', N'RaceTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffRace', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The teaching field taught by an individual, for example English/Language Arts, Reading, Mathematics, Science, Social Sciences, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociationAcademicSubject', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The teaching field taught by an individual, for example English/Language Arts, Reading, Mathematics, Science, Social Sciences, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociationAcademicSubject', 'COLUMN', N'AcademicSubjectDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the program for which the individual is assigned; for example:
        Regular education
        Title I-Academic
        Title I-Non-Academic
        Special Education
        Bilingual/English as a Second Language.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociationAcademicSubject', 'COLUMN', N'ProgramAssignmentDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociationAcademicSubject', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociationAcademicSubject', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of grade levels for which the individual''s assignment is responsible.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociationGradeLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of grade levels for which the individual''s assignment is responsible.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociationGradeLevel', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the program for which the individual is assigned; for example:
        Regular education
        Title I-Academic
        Title I-Non-Academic
        Special Education
        Bilingual/English as a Second Language.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociationGradeLevel', 'COLUMN', N'ProgramAssignmentDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociationGradeLevel', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociationGradeLevel', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association indicates the School(s) to which a staff member provides instructional services.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the program for which the individual is assigned; for example:
        Regular education
        Title I-Academic
        Title I-Non-Academic
        Special Education
        Bilingual/English as a Second Language.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociation', 'COLUMN', N'ProgramAssignmentDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociation', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifier for a school year.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociation', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSchoolAssociation', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association indicates the class sections to which a staff member is assigned.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of a teacher''s assignment to the Section. If blank, defaults to the first day of the first grading period for the Section.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of position the Staff member holds in the specific class/section; for example:
        Teacher of Record, Assistant Teacher, Support Teacher, Substitute Teacher...', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'ClassroomPositionDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the last day of a staff member''s assignment to the Section.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for this section being taught.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'HighlyQualifiedTeacher'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates the percentage of the total scheduled course time, academic standards, and/or learning activities delivered in this section by this staff member. A teacher of record designation may be based solely or partially on this contribution percentage.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'PercentageContribution'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that the entire section is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'TeacherStudentDataLinkExclusion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'StaffSectionAssociation', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The 10-digit telephone number, including the area code, for the person.', 'SCHEMA', N'edfi', 'TABLE', N'StaffTelephone', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StaffTelephone', 'COLUMN', N'OrderOfPriority'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffTelephone', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The telephone number including the area code, and extension, if applicable.', 'SCHEMA', N'edfi', 'TABLE', N'StaffTelephone', 'COLUMN', N'TelephoneNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of communication number listed for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'StaffTelephone', 'COLUMN', N'TelephoneNumberTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', 'SCHEMA', N'edfi', 'TABLE', N'StaffTelephone', 'COLUMN', N'TextMessageCapabilityIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of a non-US citizen''s Visa type.', 'SCHEMA', N'edfi', 'TABLE', N'StaffVisa', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StaffVisa', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of a non-US citizen''s Visa type.', 'SCHEMA', N'edfi', 'TABLE', N'StaffVisa', 'COLUMN', N'VisaTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents an individual who performs specified activities for any public or private education institution or agency that provides instructional and/or support services to students or staff at the early childhood level through high school completion. For example, this includes:
    1. An "employee" who performs services under the direction of the employing institution or agency is compensated for such services by the employer and is eligible for employee benefits and wage or salary tax withholdings
    2. A "contractor" or "consultant" who performs services for an agreed upon fee or an employee of a management service contracted to work on site
    3. A "volunteer" who performs services on a voluntary and uncompensated basis
    4. An in-kind service provider
    5. An independent contractor or businessperson working at a school site.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which an individual was born.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'BirthDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of whether or not the person is a U.S. citizen.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'CitizenshipStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'FirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'GenerationCodeSuffix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'HighestCompletedLevelOfEducationDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'HighlyQualifiedTeacher'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'HispanicLatinoEthnicity'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name borne in common by members of a family.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'LastSurname'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The login ID for the user; used for security access control interface.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'LoginId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person''s maiden name.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'MaidenName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'MiddleName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Previous definition of Ethnicity combining Hispanic/Latino and race:
        1 - American Indian or Alaskan Native
        2 - Asian or Pacific Islander
        3 - Black, not of Hispanic origin
        4 - Hispanic
        5 - White, not of Hispanic origin.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'OldEthnicityTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A prefix used to denote the title, degree, position, or seniority of the person.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'PersonalTitlePrefix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A person''s gender.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'SexTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'StaffUniqueId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The total number of years that an individual has previously held a similar professional position in one or more education institutions.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'YearsOfPriorProfessionalExperience'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The total number of years that an individual has previously held a teaching position in one or more education institutions.', 'SCHEMA', N'edfi', 'TABLE', N'Staff', 'COLUMN', N'YearsOfPriorTeachingExperience'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'StateAbbreviationType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'StateAbbreviationType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the StateAbbreviation type.', 'SCHEMA', N'edfi', 'TABLE', N'StateAbbreviationType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the StateAbbreviation type.', 'SCHEMA', N'edfi', 'TABLE', N'StateAbbreviationType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for StateAbbreviation', 'SCHEMA', N'edfi', 'TABLE', N'StateAbbreviationType', 'COLUMN', N'StateAbbreviationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity maintains information about federal reporting and accountability for state education agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StateEducationAgencyAccountability', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether CTE concentrators are included in the state''s computation of its graduation rate.', 'SCHEMA', N'edfi', 'TABLE', N'StateEducationAgencyAccountability', 'COLUMN', N'CTEGraduationRateInclusion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year for which the accountability is reported.', 'SCHEMA', N'edfi', 'TABLE', N'StateEducationAgencyAccountability', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a state education agency by the StateEducationAgency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StateEducationAgencyAccountability', 'COLUMN', N'StateEducationAgencyId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contains the information about the reception and use of federal funds for reporting purposes.', 'SCHEMA', N'edfi', 'TABLE', N'StateEducationAgencyFederalFunds', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The amount of federal dollars distributed to Local Education Agencies (LEAs), retained by the State Education Agency (SEA) for program administration or other approved state-level activities (including unallocated, transferred to another state agency, or distributed to entities other than LEAs).', 'SCHEMA', N'edfi', 'TABLE', N'StateEducationAgencyFederalFunds', 'COLUMN', N'FederalProgramsFundingAllocation'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The fiscal year for which the federal funds are received.', 'SCHEMA', N'edfi', 'TABLE', N'StateEducationAgencyFederalFunds', 'COLUMN', N'FiscalYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a state education agency by the StateEducationAgency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StateEducationAgencyFederalFunds', 'COLUMN', N'StateEducationAgencyId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents the agency of the state charged with the primary responsibility for coordinating and supervising public instruction, including the setting of standards for elementary and secondary instructional programs.', 'SCHEMA', N'edfi', 'TABLE', N'StateEducationAgency', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a state education agency by the StateEducationAgency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StateEducationAgency', 'COLUMN', N'StateEducationAgencyId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Academic distinctions earned by or awarded to the student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A designation of the type of academic distinctions earned by or awarded to the student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'AcademicHonorCategoryTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of achievement attributed to the learner.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'AchievementCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The system that defines the categories by which an achievement is attributed to the learner.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'AchievementCategorySystem'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title assigned to the achievement.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'AchievementTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The criteria for competency-based completion of the achievement/award.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'Criteria'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'CriteriaURL'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'EvidenceStatement'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the honor was awarded or earned.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'HonorAwardDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date on which the award expires.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'HonorAwardExpiresDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A description of the type of academic distinctions earned by or awarded to the individual.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'HonorDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'ImageURL'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the agent, entity, or institution issuing the element.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'IssuerName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Uniform Resource Locator (URL) from which the award was issued.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'IssuerOriginURL'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordAcademicHonor', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The academic rank information of a student in relation to his or her graduating class.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordClassRanking', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The academic rank of a student in relation to his or her graduating class (e.g., 1st, 2nd, 3rd).', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordClassRanking', 'COLUMN', N'ClassRank'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date class ranking was determined.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordClassRanking', 'COLUMN', N'ClassRankingDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordClassRanking', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The academic percentage rank of a student in relation to his or her graduating class (e.g., 95%, 80%, 50%).', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordClassRanking', 'COLUMN', N'PercentageRanking'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordClassRanking', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordClassRanking', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordClassRanking', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The total number of students in the student''s graduating class.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordClassRanking', 'COLUMN', N'TotalNumberInClass'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Diploma(s) earned by the student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of achievement attributed to the learner.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'AchievementCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The system that defines the categories by which an achievement is attributed to the learner.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'AchievementCategorySystem'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title assigned to the achievement.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'AchievementTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The criteria for competency-based completion of the achievement/award.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'Criteria'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'CriteriaURL'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicated a student who reached a state-defined threshold of vocational education and who attained a high school diploma or its recognized state equivalent or GED.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'CTECompleter'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the student met  graduation requirements and was awarded a diploma.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'DiplomaAwardDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date on which the award expires.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'DiplomaAwardExpiresDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description of diploma given to the student for accomplishments.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'DiplomaDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The level of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.
        Minimum high school program
        Recommended high school program
        Distinguished Achievement Program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'DiplomaLevelTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'DiplomaTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'EvidenceStatement'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'ImageURL'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the agent, entity, or institution issuing the element.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'IssuerName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Uniform Resource Locator (URL) from which the award was issued.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'IssuerOriginURL'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordDiploma', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Recognitions given to the student for accomplishments in a co-curricular or extracurricular activity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of achievement attributed to the learner.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'AchievementCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The system that defines the categories by which an achievement is attributed to the learner.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'AchievementCategorySystem'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title assigned to the achievement.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'AchievementTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The criteria for competency-based completion of the achievement/award.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'Criteria'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'CriteriaURL'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'EvidenceStatement'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'ImageURL'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the agent, entity, or institution issuing the element.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'IssuerName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Uniform Resource Locator (URL) from which the award was issued.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'IssuerOriginURL'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the recognition was awarded or earned.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'RecognitionAwardDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date on which the award expires.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'RecognitionAwardExpiresDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A description of the type of academic distinctions earned by or awarded to the individual.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'RecognitionDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The nature of recognition given to the student for accomplishments in a co-curricular, or extra-curricular activity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'RecognitionTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordRecognition', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Report cards for the student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordReportCard', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordReportCard', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordReportCard', 'COLUMN', N'GradingPeriodBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordReportCard', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordReportCard', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordReportCard', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordReportCard', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecordReportCard', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This educational entity represents the cumulative record of academic achievement for a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'CumulativeAttemptedCreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'CumulativeAttemptedCredits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'CumulativeAttemptedCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'CumulativeEarnedCreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'CumulativeEarnedCredits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'CumulativeEarnedCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A measure of average performance in all courses taken by an individual during his or her school career as determined for record-keeping purposes. This is obtained by dividing the total grade points received by the total number of credits attempted. This usually includes grade points received and credits attempted in his or her current school as well as those transferred from schools in which the individual was previously enrolled.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'CumulativeGradePointAverage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The cumulative number of grade points an individual earns by successfully completing courses or examinations during his or her enrollment in the current school as well as those transferred from schools in which the individual had been previously enrolled.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'CumulativeGradePointsEarned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The scale of equivalents, if applicable, for grades awarded as indicators of performance in schoolwork. For example, numerical equivalents for letter grades used in determining a student''s Grade Point Average (A=4, B=3, C=2, D=1 in a four-point system) or letter equivalents for percentage grades (90-100%=A, 80-90%=B, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'GradeValueQualifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month and year the student is projected to graduate.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'ProjectedGraduationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'SessionAttemptedCreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'SessionAttemptedCredits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'SessionAttemptedCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'SessionEarnedCreditConversion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'SessionEarnedCredits'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of credits or units of value awarded for the completion of a course.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'SessionEarnedCreditTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade point average for an individual computed as the grade points earned during the session divided by the number of credits attempted.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'SessionGradePointAverage'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of grade points an individual earned for this session.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'SessionGradePointsEarned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAcademicRecord', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of elements that describes an address, including the street address, city, state, and ZIP code.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'AddressTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The apartment, room, or suite number of an address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'ApartmentRoomSuiteNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first date the address is valid. For physical addresses, the date the person moved to that address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of the building on the site, if more than one building shares the same address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'BuildingSiteNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the city in which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'City'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'CountyFIPSCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic latitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'Latitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic longitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'Longitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the county, parish, borough, or comparable unit (within a state) in 
                      ''which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'NameOfCounty'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The five or nine digit zip code or overseas postal code portion of an address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'PostalCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'StateAbbreviationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The street number and street name or post office box number of an address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'StreetNumberName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAddress', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The specific type of special variation used in how an examination is presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examinationmeasures. The proper use of accommodations does not substantially change academic level or performance criteria. For example:
        Braille
        Enlarged monitor view
        Extra time
        Large Print
        Setting
        Oral Administration
        ...', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentAccommodation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The specific type of special variation used in how an examination is presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examinationmeasures. The proper use of accommodations does not substantially change academic level or performance criteria. For example:
        Braille
        Enlarged monitor view
        Extra time
        Large Print
        Setting
        Oral Administration
        ...', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentAccommodation', 'COLUMN', N'AccommodationDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentAccommodation', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentAccommodation', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment administered to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentAccommodation', 'COLUMN', N'StudentAssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentAccommodation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'NEEDS DOCUMENTATION', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The analyzed result of a student''s response to an assessment item. For example:
        Correct
        Incorrect
         Met standard
        ...', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', 'COLUMN', N'AssessmentItemResultTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A student''s response to a stimulus on a test.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', 'COLUMN', N'AssessmentResponse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formative descriptive feedback that was given to a learner in response to the results from a scored/evaluated assessment item.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', 'COLUMN', N'DescriptiveFeedback'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A meaningful raw score of the performance of an individual on an assessment item.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', 'COLUMN', N'RawScoreResult'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of the response. For example:
        Nonscorable response
        Ineffective response
        Effective response
        Partial response
        ...', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', 'COLUMN', N'ResponseIndicatorTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment administered to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', 'COLUMN', N'StudentAssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The overall time a student actually spent during the AssessmentItem.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentItem', 'COLUMN', N'TimeAssessed'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The performance level(s) achieved for the StudentAssessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentPerformanceLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentPerformanceLevel', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentPerformanceLevel', 'COLUMN', N'AssessmentReportingMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentPerformanceLevel', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A specification of which performance level value describes the student proficiency.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentPerformanceLevel', 'COLUMN', N'PerformanceLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Optional indicator of whether the performance level was met.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentPerformanceLevel', 'COLUMN', N'PerformanceLevelMet'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment administered to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentPerformanceLevel', 'COLUMN', N'StudentAssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentPerformanceLevel', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A meaningful score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentScoreResult', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentScoreResult', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentScoreResult', 'COLUMN', N'AssessmentReportingMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentScoreResult', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of a meaningful raw score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentScoreResult', 'COLUMN', N'Result'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentScoreResult', 'COLUMN', N'ResultDatatypeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment administered to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentScoreResult', 'COLUMN', N'StudentAssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentScoreResult', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The PerformanceLevel(s) achieved for the ObjectiveAssessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'COLUMN', N'AssessmentReportingMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A specification of which performance level value describes the student proficiency.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'COLUMN', N'PerformanceLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Optional indicator of whether the performance level was met.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'COLUMN', N'PerformanceLevelMet'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment administered to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'COLUMN', N'StudentAssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A meaningful score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentScoreResult', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentScoreResult', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentScoreResult', 'COLUMN', N'AssessmentReportingMethodTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentScoreResult', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentScoreResult', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of a meaningful raw score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentScoreResult', 'COLUMN', N'Result'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentScoreResult', 'COLUMN', N'ResultDatatypeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment administered to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentScoreResult', 'COLUMN', N'StudentAssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessmentScoreResult', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'NEEDS DOCUMENTATION', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessment', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessment', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessment', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessment', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment administered to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessment', 'COLUMN', N'StudentAssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessmentStudentObjectiveAssessment', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents the analysis or scoring of a student''s response on an assessment. The analysis results in a value that represents a student''s performance on a set of items on a test.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'AdministrationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date and time an assessment administration ended.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'AdministrationEndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The environment in which the test was administered. For example:
        Electronic
        Classroom
        Testing Center
        ...', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'AdministrationEnvironmentTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The language in which an assessment is written and/or administered.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'AdministrationLanguageDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'AssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'EventCircumstanceTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Describes special events that occur before during or after the assessment session that may impact use of results.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'EventDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the Assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The primary reason student is not tested. For example:
        Absent
        Refusal by parent
        Refusal by student
        Medical waiver
        Illness
        Disruptive behavior
        LEP Exempt
        ...', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'ReasonNotTestedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator if the test was retaken. For example:
        Primary administration
        First retest
        Second retest
        ...', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'RetestIndicatorTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The unique number for the assessment form or answer document.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'SerialNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an assessment administered to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'StudentAssessmentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade level of a student when assessed.', 'SCHEMA', N'edfi', 'TABLE', N'StudentAssessment', 'COLUMN', N'WhenAssessedGradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The career cluster representing the career path of the Vocational/Career Tech concentrator.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociationCTEProgram', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student first received services.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociationCTEProgram', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A sequence of courses within an area of interest that is a student''s educational road map to a chosen career.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociationCTEProgram', 'COLUMN', N'CareerPathwayTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number and description of the CIP Code associated with the student''s CTEProgram.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociationCTEProgram', 'COLUMN', N'CIPCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A boolean indicator of whether the Student has completed the CTEProgram.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociationCTEProgram', 'COLUMN', N'CTEProgramCompletionIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociationCTEProgram', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A boolean indicator of whether this CTEProgram, is the student''s primary CTEProgram.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociationCTEProgram', 'COLUMN', N'PrimaryCTEProgramIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociationCTEProgram', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociationCTEProgram', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociationCTEProgram', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociationCTEProgram', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association represents the career and technical education (CTE) program that a student participates in. The association is an extension of the StudentProgramAssociation particular for CTE programs.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student first received services.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociation', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociation', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociation', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCTEProgramAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the set of important characteristics of the student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristicDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristicDescriptor', 'COLUMN', N'StudentCharacteristicDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristicDescriptor', 'COLUMN', N'StudentCharacteristicTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Enumeration items for the important characteristics of the student''s home situation: Displaced Homemaker, Homeless, Immigrant, Migratory, Military Parent, Pregnant Teen, Single Parent, and Unaccompanied Youth.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristicType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristicType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the StudentCharacteristic type.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristicType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the StudentCharacteristic type.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristicType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for StudentCharacteristic', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristicType', 'COLUMN', N'StudentCharacteristicTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects important characteristics of the student''s home situation:
        Displaced Homemaker, Immigrant, Migratory, Military Parent, Pregnant Teen, Single Parent, and Unaccompanied Youth.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristic', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the characteristic was designated.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristic', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person, organization, or department that designated the characteristic.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristic', 'COLUMN', N'DesignatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the characteristic was removed.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristic', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The characteristic designated for the Student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristic', 'COLUMN', N'StudentCharacteristicDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCharacteristic', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Cohort representing the subdivision of students within one or more sections. For example, a group of students may be given additional instruction and tracked as a cohort.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student was first identified as part of the Cohort.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name or ID for the Cohort.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'CohortIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociationSection', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association represents the Cohort(s) for which a student is designated.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student was first identified as part of the Cohort.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name or ID for the Cohort.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociation', 'COLUMN', N'CohortIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student was removed as part of the Cohort.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type and year of a cohort (e.g., 9th grade) the student belongs to as determined by the year that student entered a specific grade.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortYear', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of cohort year (9th grade, graduation).', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortYear', 'COLUMN', N'CohortYearTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of the  school year for the Cohort.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortYear', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCohortYear', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents the competency assessed or evaluated for the student against a specific learning  objective.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the Student''s entry or assignment to the Section.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The CompetencyLevel assessed for the student for the referenced LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'CompetencyLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A statement provided by the teacher that provides information in addition to the grade or assessment score.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'DiagnosticStatement'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'GradingPeriodBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The designated title of the CompetencyObjective.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'Objective'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'ObjectiveEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade level for which the CompetencyObjective is targeted.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'StudentCompetencyObjective', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The disability condition(s) that best describes an individual''s impairment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisability', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A disability category that describes a child''s impairment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisability', 'COLUMN', N'DisabilityDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The source that provided the disability determination.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisability', 'COLUMN', N'DisabilityDeterminationSourceTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A description of the disability diagnosis.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisability', 'COLUMN', N'DisabilityDiagnosis'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The order by severity of student''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisability', 'COLUMN', N'OrderOfDisability'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisability', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Describes behavior by category and provides a detailed description.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisciplineIncidentAssociationBehavior', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Describes behavior by category and provides a detailed description.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisciplineIncidentAssociationBehavior', 'COLUMN', N'BehaviorDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Specifies a more granular level of detail of a behavior involved in the incident.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisciplineIncidentAssociationBehavior', 'COLUMN', N'BehaviorDetailedDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisciplineIncidentAssociationBehavior', 'COLUMN', N'IncidentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisciplineIncidentAssociationBehavior', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisciplineIncidentAssociationBehavior', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association indicates those students who were victims, perpetrators, witnesses, and reporters for a discipline incident.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisciplineIncidentAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisciplineIncidentAssociation', 'COLUMN', N'IncidentIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisciplineIncidentAssociation', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The role or type of participation of a student in a discipline incident; 
        for example:
        Victim
        Perpetrator
        Witness
        Reporter.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisciplineIncidentAssociation', 'COLUMN', N'StudentParticipationCodeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentDisciplineIncidentAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association indicates any relationship between a student and an education organization other than how the state views enrollment. Enrollment relationship semantics are covered by StudentSchoolAssociation.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indications of an education organization''s responsibility for a student, such as accountability, attendance, funding, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociation', 'COLUMN', N'ResponsibilityDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', 'SCHEMA', N'edfi', 'TABLE', N'StudentElectronicMail', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The electronic mail (e-mail) address listed for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'StudentElectronicMail', 'COLUMN', N'ElectronicMailAddress'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'StudentElectronicMail', 'COLUMN', N'ElectronicMailTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'StudentElectronicMail', 'COLUMN', N'PrimaryEmailAddressIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentElectronicMail', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity holds a student''s grade or competency level for a gradebook entry.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the Student''s entry or assignment to the Section.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The CompetencyLevel assessed for the student for the referenced LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'CompetencyLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the assignment, homework, or assessment was assigned or executed.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'DateAssigned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date an assignment was turned in or the date of an assessment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'DateFulfilled'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A statement provided by the teacher that provides information in addition to the grade or assessment score.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'DiagnosticStatement'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name or title of the activity to be recorded in the GradebookEntry.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'GradebookEntryTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'LetterGradeEarned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'NumericGradeEarned'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'StudentGradebookEntry', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationCode', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The organization code or name assigning the StudentIdentificationCode.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationCode', 'COLUMN', N'AssigningOrganizationIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationCode', 'COLUMN', N'IdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationCode', 'COLUMN', N'StudentIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationCode', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationDocument', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The day when the document  expires, if null then never expires.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationDocument', 'COLUMN', N'DocumentExpirationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The title of the document given by the issuer.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationDocument', 'COLUMN', N'DocumentTitle'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The primary function of the document used for establishing identity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationDocument', 'COLUMN', N'IdentificationDocumentUseTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Country of origin of the document.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationDocument', 'COLUMN', N'IssuerCountryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The unique identifier on the issuer''s identification system.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationDocument', 'COLUMN', N'IssuerDocumentIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the entity or institution that issued the document.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationDocument', 'COLUMN', N'IssuerName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category of the document relative to its purpose.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationDocument', 'COLUMN', N'PersonalInformationVerificationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationDocument', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the originating record system and code that is used for record-keeping purposes of the student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationSystemDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationSystemDescriptor', 'COLUMN', N'StudentIdentificationSystemDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationSystemDescriptor', 'COLUMN', N'StudentIdentificationSystemTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A coding scheme that is used for identification and record-keeping purposes by schools, social services or other agencies to refer to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationSystemType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationSystemType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the StudentIdentificationSystem type.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationSystemType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the StudentIdentificationSystem type.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationSystemType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for StudentIdentificationSystem', 'SCHEMA', N'edfi', 'TABLE', N'StudentIdentificationSystemType', 'COLUMN', N'StudentIdentificationSystemTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator(s) or metric(s) computed for the student (e.g., at risk) to influence more effective education or direct specific interventions.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIndicator', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date when the indicator was assigned or computed.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIndicator', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person, organization, or department that designated the program association.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIndicator', 'COLUMN', N'DesignatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the indicator or metric was sunset or removed.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIndicator', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value of the indicator or metric.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIndicator', 'COLUMN', N'Indicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name for a group of indicators.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIndicator', 'COLUMN', N'IndicatorGroup'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the indicator or metric.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIndicator', 'COLUMN', N'IndicatorName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentIndicator', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The set of elements that describes an international address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', 'COLUMN', N'AddressLine1'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The second line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', 'COLUMN', N'AddressLine2'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The third line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', 'COLUMN', N'AddressLine3'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The fourth line of the address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', 'COLUMN', N'AddressLine4'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', 'COLUMN', N'AddressTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The first date the address is valid. For physical addresses, the date the person moved to that address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the country.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', 'COLUMN', N'CountryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic latitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', 'COLUMN', N'Latitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The geographic longitude of the physical address.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', 'COLUMN', N'Longitude'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInternationalAddress', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A measure of the effects of an intervention in each outcome domain. The rating of effectiveness takes into account four factors: the quality of the research on the intervention, the statistical significance of the research findings, the size of the differences between participants in the intervention and comparison groups and the consistency in results.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociationInterventionEffectiveness', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Targeted purpose of the intervention (e.g., attendance issue, dropout risk) for which the effectiveness is measured.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociationInterventionEffectiveness', 'COLUMN', N'DiagnosisDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociationInterventionEffectiveness', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Grade level for which effectiveness is measured.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociationInterventionEffectiveness', 'COLUMN', N'GradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Along a percentile distribution of students, the improvement index represents the change in an average student''s percentile rank that is considered to be due to the intervention.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociationInterventionEffectiveness', 'COLUMN', N'ImprovementIndex'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An intervention demonstrates effectiveness if the research has shown that the program caused an improvement in outcomes. Values: positive effects, potentially positive effects, mixed effects, potentially negative effects, negative effects, and no discernible effects.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociationInterventionEffectiveness', 'COLUMN', N'InterventionEffectivenessRatingTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociationInterventionEffectiveness', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Population for which effectiveness is measured.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociationInterventionEffectiveness', 'COLUMN', N'PopulationServedTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociationInterventionEffectiveness', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association indicates the students participating in an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociation', 'COLUMN', N'CohortEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name or ID for the Cohort.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociation', 'COLUMN', N'CohortIdentifier'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A statement provided by the assigner that provides information regarding why the student was assigned to this intervention.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociation', 'COLUMN', N'DiagnosticStatement'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociation', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This event entity represents the recording of whether a student is in attendance for an intervention service.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAttendanceEvent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAttendanceEvent', 'COLUMN', N'AttendanceEventCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The reported reason for a student''s absence.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAttendanceEvent', 'COLUMN', N'AttendanceEventReason'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAttendanceEvent', 'COLUMN', N'EducationalEnvironmentTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAttendanceEvent', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date for this attendance event.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAttendanceEvent', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to an intervention.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAttendanceEvent', 'COLUMN', N'InterventionIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentInterventionAttendanceEvent', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', 'SCHEMA', N'edfi', 'TABLE', N'StudentLanguageUse', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A specification of which written or spoken communication is being used.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLanguageUse', 'COLUMN', N'LanguageDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', 'SCHEMA', N'edfi', 'TABLE', N'StudentLanguageUse', 'COLUMN', N'LanguageUseTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLanguageUse', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The language(s) the individual uses to communicate.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLanguage', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A specification of which written or spoken communication is being used.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLanguage', 'COLUMN', N'LanguageDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLanguage', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents the competency assessed or evaluated for the student against a specific LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the Student''s entry or assignment to the Section.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The CompetencyLevel assessed for the student for the referenced LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'CompetencyLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A statement provided by the teacher that provides information in addition to the grade or assessment score.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'DiagnosticStatement'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the first day of the GradingPeriod.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'GradingPeriodBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the period for which grades are reported.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'GradingPeriodDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'LearningObjectiveId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Namespace for the LearningObjective.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'Namespace'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'StudentSectionAssociationBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningObjective', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The student''s relative preference to visual, auditory, and tactile learning expressed as percentages.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningStyle', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The student''s relative preference expressed as a percent to auditory learning.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningStyle', 'COLUMN', N'AuditoryLearning'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningStyle', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The student''s relative preference expressed as a percent to kinesthetic or tactile learning.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningStyle', 'COLUMN', N'TactileLearning'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The student''s relative preference expressed as a percent to visual learning.', 'SCHEMA', N'edfi', 'TABLE', N'StudentLearningStyle', 'COLUMN', N'VisualLearning'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association represents the migrant education program(s) that a student participates in or receives services from. The association is an extension of the StudentProgramAssociation with added elements particular to migrant education programs.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student first received services.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The "continuation of services" provision found in Section 1304(e) of the statute provides that (1) a child who ceases to be a migratory child during a school term shall be eligible for services until the end of such term; (2) a child who is no longer a migratory child may continue to receive services for one additional school year, but only if comparable services are not available through other programs; and (3) secondary school students who were eligible for services in secondary school may continue to be served through credit accrual programs until graduation. Only students who received services at any time during their 36 month eligibility period may continue to receive services (not necessarily the same service).', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'ContinuationOfServicesReasonDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the last qualifying move occurred; used to compute MEP status.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'LastQualifyingMove'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Report migratory children who are classified as having "priority for services" because they are failing, or most at risk of failing to meet the State''s challenging State academic content standards and challenging State student academic achievement standards, and their education has been interrupted during the regular school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'PriorityForServices'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student first entered the U.S.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'USInitialEntry'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student first entered a U.S. school.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'USInitialSchoolEntry'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year of the Student''s most recent entry into the U.S.', 'SCHEMA', N'edfi', 'TABLE', N'StudentMigrantEducationProgramAssociation', 'COLUMN', N'USMostRecentEntry'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Other names (e.g., alias, nickname, previous legal name) associated with a person.', 'SCHEMA', N'edfi', 'TABLE', N'StudentOtherName', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', 'SCHEMA', N'edfi', 'TABLE', N'StudentOtherName', 'COLUMN', N'FirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', 'SCHEMA', N'edfi', 'TABLE', N'StudentOtherName', 'COLUMN', N'GenerationCodeSuffix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name borne in common by members of a family.', 'SCHEMA', N'edfi', 'TABLE', N'StudentOtherName', 'COLUMN', N'LastSurname'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', 'SCHEMA', N'edfi', 'TABLE', N'StudentOtherName', 'COLUMN', N'MiddleName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The types of alternate names for a person.', 'SCHEMA', N'edfi', 'TABLE', N'StudentOtherName', 'COLUMN', N'OtherNameTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A prefix used to denote the title, degree, position, or seniority of the person.', 'SCHEMA', N'edfi', 'TABLE', N'StudentOtherName', 'COLUMN', N'PersonalTitlePrefix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentOtherName', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association relates students to their parents, guardians, or caretakers.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParentAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The numeric order of the preferred sequence or priority of contact.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParentAssociation', 'COLUMN', N'ContactPriority'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Restrictions for student and/or teacher contact with the individual (e.g., the student may not be picked up by the individual).', 'SCHEMA', N'edfi', 'TABLE', N'StudentParentAssociation', 'COLUMN', N'ContactRestrictions'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of whether the person is a designated emergency contact for the Student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParentAssociation', 'COLUMN', N'EmergencyContactStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of whether the Student lives with the associated parent.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParentAssociation', 'COLUMN', N'LivesWith'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a parent.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParentAssociation', 'COLUMN', N'ParentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of whether the person is a primary parental contact for the Student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParentAssociation', 'COLUMN', N'PrimaryContactStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The nature of an individual''s relationship to a student; for example:
        Father, Mother, Step Father, Step Mother, Foster Father, Foster Mother, Guardian, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParentAssociation', 'COLUMN', N'RelationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParentAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The role or type of participation of a student in a discipline incident; for example: Victim, Perpetrator, Witness, Reporter.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParticipationCodeType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParticipationCodeType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the StudentParticipationCode type.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParticipationCodeType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the StudentParticipationCode type.', 'SCHEMA', N'edfi', 'TABLE', N'StudentParticipationCodeType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for StudentParticipationCode', 'SCHEMA', N'edfi', 'TABLE', N'StudentParticipationCodeType', 'COLUMN', N'StudentParticipationCodeTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates the Service(s) being provided to the Student by the Program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociationService', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student first received services.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociationService', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociationService', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'True if service is a primary service.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociationService', 'COLUMN', N'PrimaryIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociationService', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociationService', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociationService', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'First date the Student was in this option for the current school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociationService', 'COLUMN', N'ServiceBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates the Service being provided to the student by the Program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociationService', 'COLUMN', N'ServiceDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last date the Student was in this option for the current school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociationService', 'COLUMN', N'ServiceEndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociationService', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association represents the Program(s) that a student participates in or is served by.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student first received services.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student exited the Program or stopped receiving services.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociation', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociation', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociation', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The reason the child left the Program within a school or district.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociation', 'COLUMN', N'ReasonExitedDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates whether the Student received services during the summer session or between sessions.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociation', 'COLUMN', N'ServedOutsideOfRegularSession'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This event entity represents the recording of whether a student is in attendance to receive or participate in program services.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAttendanceEvent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAttendanceEvent', 'COLUMN', N'AttendanceEventCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The reported reason for a student''s absence.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAttendanceEvent', 'COLUMN', N'AttendanceEventReason'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAttendanceEvent', 'COLUMN', N'EducationalEnvironmentTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAttendanceEvent', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date for this attendance event.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAttendanceEvent', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAttendanceEvent', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAttendanceEvent', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAttendanceEvent', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramAttendanceEvent', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects important characteristics of the Program, such as categories or particular indications.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramParticipationProgramCharacteristic', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reflects important characteristics of the Program, such as categories or particular indications.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramParticipationProgramCharacteristic', 'COLUMN', N'ProgramCharacteristicDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramParticipationProgramCharacteristic', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramParticipationProgramCharacteristic', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key programs the student is participating in or receives services from.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramParticipation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the Student was associated with the Program or service.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramParticipation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person, organization, or department that designated the program association.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramParticipation', 'COLUMN', N'DesignatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date the Program participation ended.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramParticipation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramParticipation', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentProgramParticipation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The data model allows for multiple entries so that each individual can specify all appropriate races.', 'SCHEMA', N'edfi', 'TABLE', N'StudentRace', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The data model allows for multiple entries so that each individual can specify all appropriate races.', 'SCHEMA', N'edfi', 'TABLE', N'StudentRace', 'COLUMN', N'RaceTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentRace', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of EducationPlan(s) the student is following, if appropriate. For example:
        Special education IEP
        Vocational.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociationEducationPlan', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of EducationPlan(s) the student is following, if appropriate. For example:
        Special education IEP
        Vocational.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociationEducationPlan', 'COLUMN', N'EducationPlanTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which an individual enters and begins to receive instructional services in a school.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociationEducationPlan', 'COLUMN', N'EntryDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociationEducationPlan', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociationEducationPlan', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association represents the School in which a student is enrolled. The semantics of enrollment may differ slightly by state. Non-enrollment relationships between a student and an education organization may be described using the StudentEducationOrganizationAssociation.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Projected High School graduation year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'ClassOfSchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An individual who is a paid employee or works in his or her own business, profession, or farm and at the same time is enrolled in secondary, postsecondary, or adult education.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'EmployedWhileEnrolled'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which an individual enters and begins to receive instructional services in a school.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'EntryDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'EntryGradeLevelDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'EntryGradeLevelReasonTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The process by which a student enters a school during a given academic session.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'EntryTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year of the first day after the date of an individual''s last attendance at a school (if known), the day on which an individual graduated, or the date on which it becomes known officially that an individual left school.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'ExitWithdrawDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The circumstances under which the student exited from membership in an educational institution.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'ExitWithdrawTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'GraduationPlanTypeDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year the student is expected to graduate.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'GraduationSchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates if a given enrollment record should be considered the primary record for a student. If omitted, the default is true.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'PrimarySchool'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of whether the student is enrolling to repeat a grade level, either by failure or an agreement to hold the student back.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'RepeatGradeIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'ResidencyStatusDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether students transferred in or out of the school did so during the school year under the provisions for public school choice in accordance with Title I, Part A, Section 1116.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'SchoolChoiceTransfer'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The school year associated with the student''s enrollment.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This event entity represents the recording of whether a student is in attendance for a school day.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAttendanceEvent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAttendanceEvent', 'COLUMN', N'AttendanceEventCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The reported reason for a student''s absence.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAttendanceEvent', 'COLUMN', N'AttendanceEventReason'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAttendanceEvent', 'COLUMN', N'EducationalEnvironmentTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date for this attendance event.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAttendanceEvent', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAttendanceEvent', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAttendanceEvent', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAttendanceEvent', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSchoolAttendanceEvent', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association indicates the course sections to which a student is assigned.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the Student''s entry or assignment to the Section.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Month, day, and year of the withdrawal or exit of the Student from the Section.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates the Section is the student''s homeroom. Homeroom period may the convention for taking daily attendance.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'HomeroomIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication as to whether a student has previously taken a given course.
        Repeated, counted in grade point average
        Repeated, not counted in grade point average
        Not repeated
        Other.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'RepeatIdentifierTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'TeacherStudentDataLinkExclusion'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAssociation', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This event entity represents the recording of whether a student is in attendance for a section.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'AttendanceEventCategoryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The reported reason for a student''s absence.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'AttendanceEventReason'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'ClassPeriodName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'ClassroomIdentificationCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'EducationalEnvironmentTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date for this attendance event.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'EventDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'LocalCourseCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to a school by the State Education Agency (SEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'SchoolId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier for the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'SchoolYear'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'SequenceOfCourse'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The term for the Session during the school year.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier for the Section that is defined by the classroom, the subjects taught, and the instructors who are assigned.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSectionAttendanceEvent', 'COLUMN', N'UniqueSectionCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Staff providing special education services to the Student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociationServiceProvider', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student first received services.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociationServiceProvider', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociationServiceProvider', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary ServiceProvider.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociationServiceProvider', 'COLUMN', N'PrimaryProvider'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociationServiceProvider', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociationServiceProvider', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociationServiceProvider', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a staff.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociationServiceProvider', 'COLUMN', N'StaffUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociationServiceProvider', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association represents the special education program(s) that a student participates in or receives services from. The association is an extension of the StudentProgramAssociation particular for special education programs.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student first received services.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of the eligibility of the student to receive special education services according to the Individuals with Disabilities Education Act (IDEA).', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'IdeaEligibility'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The effective date of the most recent IEP.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'IEPBeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The end date of the most recent IEP.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'IEPEndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date of the last IEP review.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'IEPReviewDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date of the last special education evaluation.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'LastEvaluationDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates whether the Student receiving special education and related services is:
        1) in the age range of birth to 22 years, and
        2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and
        3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and
        4) lives with ongoing threat to his or her continued well-being.
        Aligns with federal requirements.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'MedicallyFragile'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates whether the Student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee as aligned with federal requirements.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'MultiplyDisabled'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicate the total number of hours of instructional time per week for the school that the student attends.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'SchoolHoursPerWeek'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The number of hours per week for special education instruction and therapy.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'SpecialEducationHoursPerWeek'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The major instructional setting (more than 50 percent of a student''s special education program).', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'SpecialEducationSettingDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentSpecialEducationProgramAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The 10-digit telephone number, including the area code, for the person.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTelephone', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTelephone', 'COLUMN', N'OrderOfPriority'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTelephone', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The telephone number including the area code, and extension, if applicable.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTelephone', 'COLUMN', N'TelephoneNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of communication number listed for an individual or organization.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTelephone', 'COLUMN', N'TelephoneNumberTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTelephone', 'COLUMN', N'TextMessageCapabilityIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This association represents the Title I Part A program(s) that a student participates in or from which the Student receives services. The association is an extension of the StudentProgramAssociation particular for Title I Part A programs.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTitleIPartAProgramAssociation', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which the Student first received services.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTitleIPartAProgramAssociation', 'COLUMN', N'BeginDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTitleIPartAProgramAssociation', 'COLUMN', N'EducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTitleIPartAProgramAssociation', 'COLUMN', N'ProgramEducationOrganizationId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTitleIPartAProgramAssociation', 'COLUMN', N'ProgramName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTitleIPartAProgramAssociation', 'COLUMN', N'ProgramTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTitleIPartAProgramAssociation', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the type of Title I program, if any, in which the student is participating and by which the student is served:
        Public Targeted Assistance Program 
        Public Schoolwide Program
        Private School Students Participating
        Local Neglected Program.', 'SCHEMA', N'edfi', 'TABLE', N'StudentTitleIPartAProgramAssociation', 'COLUMN', N'TitleIPartAParticipantTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of a non-US citizen''s Visa type.', 'SCHEMA', N'edfi', 'TABLE', N'StudentVisa', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'StudentVisa', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of a non-US citizen''s Visa type.', 'SCHEMA', N'edfi', 'TABLE', N'StudentVisa', 'COLUMN', N'VisaTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution.', 'SCHEMA', N'edfi', 'TABLE', N'Student', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The city the student was born in.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'BirthCity'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The country in which an individual is born.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'BirthCountryDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The month, day, and year on which an individual was born.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'BirthDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'For students born outside of the U.S., the Province or jurisdiction in which an individual is born.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'BirthInternationalProvince'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'BirthStateAbbreviationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of whether or not the person is a U.S. citizen.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'CitizenshipStatusTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'For students born outside of the U.S., the date the student entered the U.S.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'DateEnteredUS'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'DisplacementStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of inadequate financial condition of an individual''s family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'EconomicDisadvantaged'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'FirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'GenerationCodeSuffix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'HispanicLatinoEthnicity'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name borne in common by members of a family.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'LastSurname'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'LimitedEnglishProficiencyDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The login ID for the user; used for security access control interface.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'LoginId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The person''s maiden name.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'MaidenName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'MiddleName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'MultipleBirthStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Previous definition of Ethnicity combining Hispanic/Latino and race:
        1 - American Indian or Alaskan Native
        2 - Asian or Pacific Islander
        3 - Black, not of Hispanic origin
        4 - Hispanic
        5 - White, not of Hispanic origin.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'OldEthnicityTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A prefix used to denote the title, degree, position, or seniority of the person.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'PersonalTitlePrefix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Locator for the student photo.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'ProfileThumbnail'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of a student''s level of eligibility for breakfast, lunch, snack, supper, and milk programs.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'SchoolFoodServicesEligibilityDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A person''s gender.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'SexTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'StudentUniqueId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique alphanumeric code assigned to a student.', 'SCHEMA', N'edfi', 'TABLE', N'Student', 'COLUMN', N'StudentUSI'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the pre-determined criteria for granting the teaching credential that an individual holds.', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialBasisType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialBasisType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the TeachingCredentialBasis type.', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialBasisType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the TeachingCredentialBasis type.', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialBasisType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for TeachingCredentialBasis', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialBasisType', 'COLUMN', N'TeachingCredentialBasisTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines an indication of the category of a legal document giving authorization to perform teaching assignment services.', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialDescriptor', 'COLUMN', N'TeachingCredentialDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialDescriptor', 'COLUMN', N'TeachingCredentialTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the category of a legal document giving authorization to perform teaching assignment services.', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the TeachingCredential type.', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the TeachingCredential type.', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for TeachingCredential', 'SCHEMA', N'edfi', 'TABLE', N'TeachingCredentialType', 'COLUMN', N'TeachingCredentialTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of communication number listed for an individual.', 'SCHEMA', N'edfi', 'TABLE', N'TelephoneNumberType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'TelephoneNumberType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the TelephoneNumber type.', 'SCHEMA', N'edfi', 'TABLE', N'TelephoneNumberType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the TelephoneNumber type.', 'SCHEMA', N'edfi', 'TABLE', N'TelephoneNumberType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for TelephoneNumber', 'SCHEMA', N'edfi', 'TABLE', N'TelephoneNumberType', 'COLUMN', N'TelephoneNumberTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the term of a session during the school year (e.g., Fall Semester).', 'SCHEMA', N'edfi', 'TABLE', N'TermDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'TermDescriptor', 'COLUMN', N'TermDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'TermDescriptor', 'COLUMN', N'TermTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The type of the session during the school year (e.g., Fall Semester).', 'SCHEMA', N'edfi', 'TABLE', N'TermType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'TermType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Term type.', 'SCHEMA', N'edfi', 'TABLE', N'TermType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Term type.', 'SCHEMA', N'edfi', 'TABLE', N'TermType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Term', 'SCHEMA', N'edfi', 'TABLE', N'TermType', 'COLUMN', N'TermTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indication of the type of Title I program, if any, in which the student is participating and served.', 'SCHEMA', N'edfi', 'TABLE', N'TitleIPartAParticipantType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'TitleIPartAParticipantType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the TitleIPartAParticipant type.', 'SCHEMA', N'edfi', 'TABLE', N'TitleIPartAParticipantType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the TitleIPartAParticipant type.', 'SCHEMA', N'edfi', 'TABLE', N'TitleIPartAParticipantType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for TitleIPartAParticipant', 'SCHEMA', N'edfi', 'TABLE', N'TitleIPartAParticipantType', 'COLUMN', N'TitleIPartAParticipantTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Denotes the Title I Part A designation for the school.', 'SCHEMA', N'edfi', 'TABLE', N'TitleIPartASchoolDesignationType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'TitleIPartASchoolDesignationType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the TitleIPartASchoolDesignation type.', 'SCHEMA', N'edfi', 'TABLE', N'TitleIPartASchoolDesignationType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the TitleIPartASchoolDesignation type.', 'SCHEMA', N'edfi', 'TABLE', N'TitleIPartASchoolDesignationType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for TitleIPartASchoolDesignation', 'SCHEMA', N'edfi', 'TABLE', N'TitleIPartASchoolDesignationType', 'COLUMN', N'TitleIPartASchoolDesignationTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'An indicator of a non-U.S. citizen''s Visa type.', 'SCHEMA', N'edfi', 'TABLE', N'VisaType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'VisaType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Visa type.', 'SCHEMA', N'edfi', 'TABLE', N'VisaType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Visa type.', 'SCHEMA', N'edfi', 'TABLE', N'VisaType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Visa', 'SCHEMA', N'edfi', 'TABLE', N'VisaType', 'COLUMN', N'VisaTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'This descriptor defines the types of weapon used during an incident.', 'SCHEMA', N'edfi', 'TABLE', N'WeaponDescriptor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'WeaponDescriptor', 'COLUMN', N'WeaponDescriptorId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', 'SCHEMA', N'edfi', 'TABLE', N'WeaponDescriptor', 'COLUMN', N'WeaponTypeId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The category for the types of weapon used during an incident.', 'SCHEMA', N'edfi', 'TABLE', N'WeaponType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'This column is deprecated.', 'SCHEMA', N'edfi', 'TABLE', N'WeaponType', 'COLUMN', N'CodeValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description for the Weapon type.', 'SCHEMA', N'edfi', 'TABLE', N'WeaponType', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The value for the Weapon type.', 'SCHEMA', N'edfi', 'TABLE', N'WeaponType', 'COLUMN', N'ShortDescription'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Key for Weapon', 'SCHEMA', N'edfi', 'TABLE', N'WeaponType', 'COLUMN', N'WeaponTypeId'
GO
