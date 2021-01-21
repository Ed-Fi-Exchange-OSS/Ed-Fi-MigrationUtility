-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE tracked_deletes_edfi.IndicatorDescriptor
(
    IndicatorDescriptorId INT NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT IndicatorDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.IndicatorGroupDescriptor
(
    IndicatorGroupDescriptorId INT NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT IndicatorGroupDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.IndicatorLevelDescriptor
(
    IndicatorLevelDescriptorId INT NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT IndicatorLevelDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.Person
(
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT Person_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.QuestionFormDescriptor
(
    QuestionFormDescriptorId INT NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT QuestionFormDescriptor_PK PRIMARY KEY (ChangeVersion)
);


CREATE TABLE tracked_deletes_edfi.SourceSystemDescriptor
(
    SourceSystemDescriptorId INT NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SourceSystemDescriptor_PK PRIMARY KEY (ChangeVersion)
);


CREATE TABLE tracked_deletes_edfi.Survey
(
    Namespace VARCHAR(255) NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT Survey_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveyCategoryDescriptor
(
    SurveyCategoryDescriptorId INT NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveyCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveyCourseAssociation
(
    CourseCode VARCHAR(60) NOT NULL,
    EducationOrganizationId INT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveyCourseAssociation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveyLevelDescriptor
(
    SurveyLevelDescriptorId INT NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveyLevelDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveyProgramAssociation
(
    EducationOrganizationId INT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveyProgramAssociation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveyQuestion
(
    Namespace VARCHAR(255) NOT NULL,
    QuestionCode VARCHAR(60) NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveyQuestion_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveyQuestionResponse
(
    Namespace VARCHAR(255) NOT NULL,
    QuestionCode VARCHAR(60) NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    SurveyResponseIdentifier VARCHAR(60) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveyQuestionResponse_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveyResponse
(
    Namespace VARCHAR(255) NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    SurveyResponseIdentifier VARCHAR(60) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveyResponse_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveyResponseEducationOrganizationTargetAssociation
(
    EducationOrganizationId INT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    SurveyResponseIdentifier VARCHAR(60) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveyResponseEducationOrganizationTargetAssociation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveyResponseStaffTargetAssociation
(
    Namespace VARCHAR(255) NOT NULL,
    StaffUSI INT NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    SurveyResponseIdentifier VARCHAR(60) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveyResponseStaffTargetAssociation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveySection
(
    Namespace VARCHAR(255) NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    SurveySectionTitle VARCHAR(255) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveySection_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveySectionAssociation
(
    LocalCourseCode VARCHAR(60) NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveySectionAssociation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveySectionResponse
(
    Namespace VARCHAR(255) NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    SurveyResponseIdentifier VARCHAR(60) NOT NULL,
    SurveySectionTitle VARCHAR(255) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveySectionResponse_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveySectionResponseEducationOrganizationTargetAssociation
(
    EducationOrganizationId INT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    SurveyResponseIdentifier VARCHAR(60) NOT NULL,
    SurveySectionTitle VARCHAR(255) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveySectionResponseEducationOrganizationTargetAssociation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.SurveySectionResponseStaffTargetAssociation
(
    Namespace VARCHAR(255) NOT NULL,
    StaffUSI INT NOT NULL,
    SurveyIdentifier VARCHAR(60) NOT NULL,
    SurveyResponseIdentifier VARCHAR(60) NOT NULL,
    SurveySectionTitle VARCHAR(255) NOT NULL,
    Id UUID NOT NULL,
    ChangeVersion BIGINT NOT NULL,
    CONSTRAINT SurveySectionResponseStaffTargetAssociation_PK PRIMARY KEY (ChangeVersion)
);



