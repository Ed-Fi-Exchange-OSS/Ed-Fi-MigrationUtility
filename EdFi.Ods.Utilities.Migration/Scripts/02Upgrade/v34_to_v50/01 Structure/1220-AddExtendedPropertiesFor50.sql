-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

--  Extended Properties [edfi].[EducationOrganizationIndicator]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The person, organization, or department that defined the metric.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'DesignatedBy';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name or code for the indicator or metric.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'IndicatorDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name for a group of indicators.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'IndicatorGroupDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The value of the indicator or metric, as a value from a controlled vocabulary. The semantics of an empty value is "not submitted."', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'IndicatorLevelDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The value of the indicator or metric. The semantics of an empty value is "not submitted."', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicator', @level2type = N'COLUMN', @level2name = N'IndicatorValue';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indicator or metric of an Education Organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicator';
GO

--  Extended Properties [edfi].[EducationOrganizationIndicatorPeriod]---

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the start of the period.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicatorPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicatorPeriod', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the end of the period.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicatorPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name or code for the indicator or metric.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicatorPeriod', @level2type = N'COLUMN', @level2name = N'IndicatorDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The time period or as-of date for the indicator.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicatorPeriod';
GO

--  Extended Properties [edfi].[IndicatorDescriptor]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'IndicatorDescriptor', @level2type = N'COLUMN', @level2name = N'IndicatorDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name or code for the indicator or metric.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'IndicatorDescriptor';
GO

--  Extended Properties [edfi].[IndicatorGroupDescriptor]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'IndicatorGroupDescriptor', @level2type = N'COLUMN', @level2name = N'IndicatorGroupDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name for a group of indicators.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'IndicatorGroupDescriptor';
GO

--  Extended Properties [edfi].[IndicatorLevelDescriptor]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'IndicatorLevelDescriptor', @level2type = N'COLUMN', @level2name = N'IndicatorLevelDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The value of the indicator or metric, as a value from a controlled vocabulary. The semantics of an empty value is "not submitted."', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'IndicatorLevelDescriptor';
GO

--  Extended Properties [edfi].[Person]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a person.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'PersonId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the originating record source system for the person.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'SourceSystemDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This entity represents a human being.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Person';
GO

--  Extended Properties [edfi].[QuestionFormDescriptor]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'QuestionFormDescriptor', @level2type = N'COLUMN', @level2name = N'QuestionFormDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The form or type of question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'QuestionFormDescriptor';
GO

--  Extended Properties [edfi].[SourceSystemDescriptor]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SourceSystemDescriptor', @level2type = N'COLUMN', @level2name = N'SourceSystemDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the originating record source system.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SourceSystemDescriptor';
GO

--  Extended Properties [edfi].[Survey]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Survey', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Survey', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Number of persons to whom this survey was administered.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Survey', @level2type = N'COLUMN', @level2name = N'NumberAdministered';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Survey', @level2type = N'COLUMN', @level2name = N'SchoolId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The school year associated with the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Survey', @level2type = N'COLUMN', @level2name = N'SchoolYear';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Survey', @level2type = N'COLUMN', @level2name = N'SessionName';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The category or type of survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Survey', @level2type = N'COLUMN', @level2name = N'SurveyCategoryDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Survey', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title of the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Survey', @level2type = N'COLUMN', @level2name = N'SurveyTitle';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A survey to identified or anonymous respondents.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Survey';
GO

--  Extended Properties [edfi].[SurveyCategoryDescriptor]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyCategoryDescriptor', @level2type = N'COLUMN', @level2name = N'SurveyCategoryDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The descriptor holds the category or type of survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyCategoryDescriptor';
GO

--  Extended Properties [edfi].[SurveyCourseAssociation]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a course.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyCourseAssociation', @level2type = N'COLUMN', @level2name = N'CourseCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyCourseAssociation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyCourseAssociation', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyCourseAssociation', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The course associated with the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyCourseAssociation';
GO

--  Extended Properties [edfi].[SurveyLevelDescriptor]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyLevelDescriptor', @level2type = N'COLUMN', @level2name = N'SurveyLevelDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Provides information about the respondents of a survey and how they can be grouped together.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyLevelDescriptor';
GO

--  Extended Properties [edfi].[SurveyProgramAssociation]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyProgramAssociation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyProgramAssociation', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyProgramAssociation', @level2type = N'COLUMN', @level2name = N'ProgramName';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyProgramAssociation', @level2type = N'COLUMN', @level2name = N'ProgramTypeDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyProgramAssociation', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The program associated with the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyProgramAssociation';
GO

--  Extended Properties [edfi].[SurveyQuestion]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestion', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifying code for the question, unique for the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestion', @level2type = N'COLUMN', @level2name = N'QuestionCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The form or type of question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestion', @level2type = N'COLUMN', @level2name = N'QuestionFormDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The text of the question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestion', @level2type = N'COLUMN', @level2name = N'QuestionText';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestion', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or label for the survey section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestion', @level2type = N'COLUMN', @level2name = N'SurveySectionTitle';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The questions for the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestion';
GO

--  Extended Properties [edfi].[SurveyQuestionMatrix]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'For matrix questions, the text identifying each row of the matrix.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionMatrix', @level2type = N'COLUMN', @level2name = N'MatrixElement';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The maximum score possible on a survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionMatrix', @level2type = N'COLUMN', @level2name = N'MaxRawScore';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The minimum score possible on a survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionMatrix', @level2type = N'COLUMN', @level2name = N'MinRawScore';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionMatrix', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifying code for the question, unique for the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionMatrix', @level2type = N'COLUMN', @level2name = N'QuestionCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionMatrix', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Information about the matrix element in the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionMatrix';
GO

--  Extended Properties [edfi].[SurveyQuestionResponse]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Additional information provided by the responder about the question in the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponse', @level2type = N'COLUMN', @level2name = N'Comment';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponse', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates there was no response to the question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponse', @level2type = N'COLUMN', @level2name = N'NoResponse';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifying code for the question, unique for the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponse', @level2type = N'COLUMN', @level2name = N'QuestionCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponse', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier of the survey typically from the survey application.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponse', @level2type = N'COLUMN', @level2name = N'SurveyResponseIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The response to a survey question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponse';
GO

--  Extended Properties [edfi].[SurveyQuestionResponseChoice]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseChoice', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A valid numeric response. If paired with a TextValue, the numeric equivalent of the TextValue.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseChoice', @level2type = N'COLUMN', @level2name = N'NumericValue';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifying code for the question, unique for the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseChoice', @level2type = N'COLUMN', @level2name = N'QuestionCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sort order of this ResponseChoice within the complete list of choices attached to a SurveyQuestion. If sort order doesn''t apply, the value of NumericValue or a unique, possibly sequential numeric value.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseChoice', @level2type = N'COLUMN', @level2name = N'SortOrder';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseChoice', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A valid text response. If paired with a NumericValue, the text equivalent of the NumericValue.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseChoice', @level2type = N'COLUMN', @level2name = N'TextValue';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The optional list of possible responses to a survey question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseChoice';
GO

--  Extended Properties [edfi].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'For matrix questions, the text identifying each row of the matrix.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type = N'COLUMN', @level2name = N'MatrixElement';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The maximum score response to the question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type = N'COLUMN', @level2name = N'MaxNumericResponse';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The minimum score response to the question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type = N'COLUMN', @level2name = N'MinNumericResponse';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates there was no response to the question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type = N'COLUMN', @level2name = N'NoResponse';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The numeric response to the question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type = N'COLUMN', @level2name = N'NumericResponse';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifying code for the question, unique for the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type = N'COLUMN', @level2name = N'QuestionCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier of the survey typically from the survey application.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type = N'COLUMN', @level2name = N'SurveyResponseIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The text response(s) for the question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type = N'COLUMN', @level2name = N'TextResponse';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'For matrix questions, the response for each row of the matrix.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse';
GO

--  Extended Properties [edfi].[SurveyQuestionResponseValue]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseValue', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A numeric response to the question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseValue', @level2type = N'COLUMN', @level2name = N'NumericResponse';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifying code for the question, unique for the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseValue', @level2type = N'COLUMN', @level2name = N'QuestionCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseValue', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for the response value; a unique, usually sequential numeric value for a collection of responses, or potentially the value of NumericResponse for a single response.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseValue', @level2type = N'COLUMN', @level2name = N'SurveyQuestionResponseValueIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier of the survey typically from the survey application.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseValue', @level2type = N'COLUMN', @level2name = N'SurveyResponseIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A text response to the question.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseValue', @level2type = N'COLUMN', @level2name = N'TextResponse';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'For free-form, single- or multiple-selection questions, one or more responses.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyQuestionResponseValue';
GO

--  Extended Properties [edfi].[SurveyResponse]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Email address of the respondent.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'ElectronicMailAddress';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Full name of the respondent.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'FullName';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Location of the respondent, often a city, district, or school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'Location';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a parent.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'ParentUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date of the survey response.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'ResponseDate';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The amount of time (in seconds) it took for the respondent to complete the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'ResponseTime';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a staff.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'StaffUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'StudentUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier of the survey typically from the survey application.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'SurveyResponseIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Responses to a Survey for named or anonymous persons.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse';
GO

--  Extended Properties [edfi].[SurveyResponseEducationOrganizationTargetAssociation]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseEducationOrganizationTargetAssociation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseEducationOrganizationTargetAssociation', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseEducationOrganizationTargetAssociation', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier of the survey typically from the survey application.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseEducationOrganizationTargetAssociation', @level2type = N'COLUMN', @level2name = N'SurveyResponseIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This association provides information about the survey being taken and the education organization the survey is about.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseEducationOrganizationTargetAssociation';
GO

--  Extended Properties [edfi].[SurveyResponseStaffTargetAssociation]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseStaffTargetAssociation', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a staff.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseStaffTargetAssociation', @level2type = N'COLUMN', @level2name = N'StaffUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseStaffTargetAssociation', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier of the survey typically from the survey application.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseStaffTargetAssociation', @level2type = N'COLUMN', @level2name = N'SurveyResponseIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The association provides information about the survey being taken and who the survey is about.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseStaffTargetAssociation';
GO

--  Extended Properties [edfi].[SurveyResponseSurveyLevel]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseSurveyLevel', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseSurveyLevel', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Provides information about the respondents of a survey and how they can be grouped together.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseSurveyLevel', @level2type = N'COLUMN', @level2name = N'SurveyLevelDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier of the survey typically from the survey application.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseSurveyLevel', @level2type = N'COLUMN', @level2name = N'SurveyResponseIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Provides information about the respondents of a survey and how they can be grouped together.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponseSurveyLevel';
GO

--  Extended Properties [edfi].[SurveySection]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySection', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySection', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or label for the survey section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySection', @level2type = N'COLUMN', @level2name = N'SurveySectionTitle';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The section of questions for the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySection';
GO

--  Extended Properties [edfi].[SurveySectionAssociation]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionAssociation', @level2type = N'COLUMN', @level2name = N'LocalCourseCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionAssociation', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionAssociation', @level2type = N'COLUMN', @level2name = N'SchoolYear';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The local identifier assigned to a section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionAssociation', @level2type = N'COLUMN', @level2name = N'SectionIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionAssociation', @level2type = N'COLUMN', @level2name = N'SessionName';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionAssociation', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The section associated with the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionAssociation';
GO

--  Extended Properties [edfi].[SurveySectionResponse]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponse', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Numeric rating computed from the survey responses for the section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponse', @level2type = N'COLUMN', @level2name = N'SectionRating';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponse', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier of the survey typically from the survey application.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponse', @level2type = N'COLUMN', @level2name = N'SurveyResponseIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or label for the survey section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponse', @level2type = N'COLUMN', @level2name = N'SurveySectionTitle';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Optional information about the responses provided for a section of a survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponse';
GO

--  Extended Properties [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseEducationOrganizationTargetAssociation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseEducationOrganizationTargetAssociation', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseEducationOrganizationTargetAssociation', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier of the survey typically from the survey application.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseEducationOrganizationTargetAssociation', @level2type = N'COLUMN', @level2name = N'SurveyResponseIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or label for the survey section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseEducationOrganizationTargetAssociation', @level2type = N'COLUMN', @level2name = N'SurveySectionTitle';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This association provides information about the survey section and the Education Organization the survey section is about.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseEducationOrganizationTargetAssociation';
GO

--  Extended Properties [edfi].[SurveySectionResponseStaffTargetAssociation]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseStaffTargetAssociation', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a staff.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseStaffTargetAssociation', @level2type = N'COLUMN', @level2name = N'StaffUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique survey identifier from the survey tool.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseStaffTargetAssociation', @level2type = N'COLUMN', @level2name = N'SurveyIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier of the survey typically from the survey application.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseStaffTargetAssociation', @level2type = N'COLUMN', @level2name = N'SurveyResponseIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or label for the survey section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseStaffTargetAssociation', @level2type = N'COLUMN', @level2name = N'SurveySectionTitle';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This association provides information about the survey section and the staff the survey section is about.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionResponseStaffTargetAssociation';
GO

--  Extended Properties [edfi].[Parent]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a person.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Parent', @level2type = N'COLUMN', @level2name = N'PersonId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the originating record source system for the person.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Parent', @level2type = N'COLUMN', @level2name = N'SourceSystemDescriptorId';
GO

--  Extended Properties [edfi].[Staff]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a person.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Staff', @level2type = N'COLUMN', @level2name = N'PersonId';
GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the originating record source system for the person.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Staff', @level2type = N'COLUMN', @level2name = N'SourceSystemDescriptorId';
GO

--  Extended Properties [edfi].[Student]---
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a person.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Student', @level2type = N'COLUMN', @level2name = N'PersonId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the originating record source system for the person.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Student', @level2type = N'COLUMN', @level2name = N'SourceSystemDescriptorId';
GO