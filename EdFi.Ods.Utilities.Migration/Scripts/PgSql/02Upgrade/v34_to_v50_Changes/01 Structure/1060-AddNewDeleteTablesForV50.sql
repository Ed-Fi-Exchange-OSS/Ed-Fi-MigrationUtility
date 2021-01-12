-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE tracked_deletes_edfi.IndicatorDescriptor (
    IndicatorDescriptorId INT              NOT NULL,
    Id                    CHAR(36) NOT NULL,
    ChangeVersion         BIGINT           NOT NULL,
    CONSTRAINT PK_IndicatorDescriptor PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.IndicatorGroupDescriptor (
    IndicatorGroupDescriptorId INT              NOT NULL,
    Id                         CHAR(36) NOT NULL,
    ChangeVersion              BIGINT           NOT NULL,
    CONSTRAINT PK_IndicatorGroupDescriptor PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.IndicatorLevelDescriptor (
    IndicatorLevelDescriptorId INT              NOT NULL,
    Id                         CHAR(36) NOT NULL,
    ChangeVersion              BIGINT           NOT NULL,
    CONSTRAINT PK_IndicatorLevelDescriptor PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.Person (
    PersonId                 VARCHAR (32)    NOT NULL,
    SourceSystemDescriptorId INT              NOT NULL,
    Id                       CHAR(36) NOT NULL,
    ChangeVersion            BIGINT           NOT NULL,
    CONSTRAINT PK_Person PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.QuestionFormDescriptor (
    QuestionFormDescriptorId INT              NOT NULL,
    Id                       CHAR(36) NOT NULL,
    ChangeVersion            BIGINT           NOT NULL,
    CONSTRAINT PK_QuestionFormDescriptor PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SourceSystemDescriptor (
    SourceSystemDescriptorId INT              NOT NULL,
    Id                       CHAR(36) NOT NULL,
    ChangeVersion            BIGINT           NOT NULL,
    CONSTRAINT PK_SourceSystemDescriptor PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.Survey (
    Namespace        VARCHAR (255)   NOT NULL,
    SurveyIdentifier VARCHAR (60)    NOT NULL,
    Id               CHAR(36) NOT NULL,
    ChangeVersion    BIGINT           NOT NULL,
    CONSTRAINT PK_Survey PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveyCateryDescriptor (
    SurveyCateryDescriptorId INT              NOT NULL,
    Id                         CHAR(36) NOT NULL,
    ChangeVersion              BIGINT           NOT NULL,
    CONSTRAINT PK_SurveyCateryDescriptor PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveyCourseAssociation (
    CourseCode              VARCHAR (60)    NOT NULL,
    EducationOrganizationId INT              NOT NULL,
    Namespace               VARCHAR (255)   NOT NULL,
    SurveyIdentifier        VARCHAR (60)    NOT NULL,
    Id                      CHAR(36) NOT NULL,
    ChangeVersion           BIGINT           NOT NULL,
    CONSTRAINT PK_SurveyCourseAssociation PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveyLevelDescriptor (
    SurveyLevelDescriptorId INT              NOT NULL,
    Id                      CHAR(36) NOT NULL,
    ChangeVersion           BIGINT           NOT NULL,
    CONSTRAINT PK_SurveyLevelDescriptor PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveyProgramAssociation (
    EducationOrganizationId INT              NOT NULL,
    Namespace               VARCHAR (255)   NOT NULL,
    ProgramName             VARCHAR (60)    NOT NULL,
    ProgramTypeDescriptorId INT              NOT NULL,
    SurveyIdentifier        VARCHAR (60)    NOT NULL,
    Id                      CHAR(36) NOT NULL,
    ChangeVersion           BIGINT           NOT NULL,
    CONSTRAINT PK_SurveyProgramAssociation PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveyQuestion (
    Namespace        VARCHAR (255)   NOT NULL,
    QuestionCode     VARCHAR (60)    NOT NULL,
    SurveyIdentifier VARCHAR (60)    NOT NULL,
    Id               CHAR(36) NOT NULL,
    ChangeVersion    BIGINT           NOT NULL,
    CONSTRAINT PK_SurveyQuestion PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveyQuestionResponse (
    Namespace                VARCHAR (255)   NOT NULL,
    QuestionCode             VARCHAR (60)    NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    Id                       CHAR(36) NOT NULL,
    ChangeVersion            BIGINT           NOT NULL,
    CONSTRAINT PK_SurveyQuestionResponse PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveyResponse (
    Namespace                VARCHAR (255)   NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    Id                       CHAR(36) NOT NULL,
    ChangeVersion            BIGINT           NOT NULL,
    CONSTRAINT PK_SurveyResponse PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveyResponseEducationOrganizationTargetAssociation (
    EducationOrganizationId  INT              NOT NULL,
    Namespace                VARCHAR (255)   NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    Id                       CHAR(36) NOT NULL,
    ChangeVersion            BIGINT           NOT NULL,
    CONSTRAINT PK_SurveyResponseEducationOrganizationTargetAssociation PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveyResponseStaffTargetAssociation (
    Namespace                VARCHAR (255)   NOT NULL,
    StaffUSI                 INT              NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    Id                       CHAR(36) NOT NULL,
    ChangeVersion            BIGINT           NOT NULL,
    CONSTRAINT PK_SurveyResponseStaffTargetAssociation PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveySection (
    Namespace          VARCHAR (255)   NOT NULL,
    SurveyIdentifier   VARCHAR (60)    NOT NULL,
    SurveySectionTitle VARCHAR (255)   NOT NULL,
    Id                 CHAR(36) NOT NULL,
    ChangeVersion      BIGINT           NOT NULL,
    CONSTRAINT PK_SurveySection PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveySectionAssociation (
    LocalCourseCode   VARCHAR (60)    NOT NULL,
    Namespace         VARCHAR (255)   NOT NULL,
    SchoolId          INT              NOT NULL,
    SchoolYear        SMALLINT         NOT NULL,
    SectionIdentifier VARCHAR (255)   NOT NULL,
    SessionName       VARCHAR (60)    NOT NULL,
    SurveyIdentifier  VARCHAR (60)    NOT NULL,
    Id                CHAR(36) NOT NULL,
    ChangeVersion     BIGINT           NOT NULL,
    CONSTRAINT PK_SurveySectionAssociation PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveySectionResponse (
    Namespace                VARCHAR (255)   NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    SurveySectionTitle       VARCHAR (255)   NOT NULL,
    Id                       CHAR(36) NOT NULL,
    ChangeVersion            BIGINT           NOT NULL,
    CONSTRAINT PK_SurveySectionResponse PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveySectionResponseEducationOrganizationTargetAssociation (
    EducationOrganizationId  INT              NOT NULL,
    Namespace                VARCHAR (255)   NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    SurveySectionTitle       VARCHAR (255)   NOT NULL,
    Id                       CHAR(36) NOT NULL,
    ChangeVersion            BIGINT           NOT NULL,
    CONSTRAINT PK_SurveySectionResponseEducationOrganizationTargetAssociation PRIMARY KEY (ChangeVersion ASC)
);


CREATE TABLE tracked_deletes_edfi.SurveySectionResponseStaffTargetAssociation (
    Namespace                VARCHAR (255)   NOT NULL,
    StaffUSI                 INT              NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    SurveySectionTitle       VARCHAR (255)   NOT NULL,
    Id                       CHAR(36) NOT NULL,
    ChangeVersion            BIGINT           NOT NULL,
    CONSTRAINT PK_SurveySectionResponseStaffTargetAssociation PRIMARY KEY (ChangeVersion ASC)
);



