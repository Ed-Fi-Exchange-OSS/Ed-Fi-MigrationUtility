-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- Table edfi.EducationOrganizationIndicator --
CREATE TABLE edfi.EducationOrganizationIndicator (
    EducationOrganizationId    INT          NOT NULL,
    IndicatorDescriptorId      INT          NOT NULL,
    DesignatedBy               VARCHAR (60) NULL,
    IndicatorValue             VARCHAR (35) NULL,
    IndicatorLevelDescriptorId INT          NULL,
    IndicatorGroupDescriptorId INT          NULL,
    CreateDate                 TIMESTAMP NOT NULL,
    CONSTRAINT EducationOrganizationIndicator_PK PRIMARY KEY (EducationOrganizationId, IndicatorDescriptorId),
    CONSTRAINT FK_EducationOrganizationIndicator_EducationOrganization FOREIGN KEY (EducationOrganizationId) REFERENCES edfi.EducationOrganization (EducationOrganizationId) ON DELETE CASCADE,
    CONSTRAINT FK_EducationOrganizationIndicator_IndicatorDescriptor FOREIGN KEY (IndicatorDescriptorId) REFERENCES edfi.IndicatorDescriptor (IndicatorDescriptorId),
    CONSTRAINT FK_EducationOrganizationIndicator_IndicatorGroupDescriptor FOREIGN KEY (IndicatorGroupDescriptorId) REFERENCES edfi.IndicatorGroupDescriptor (IndicatorGroupDescriptorId),
    CONSTRAINT FK_EducationOrganizationIndicator_IndicatorLevelDescriptor FOREIGN KEY (IndicatorLevelDescriptorId) REFERENCES edfi.IndicatorLevelDescriptor (IndicatorLevelDescriptorId)
);

ALTER TABLE edfi.EducationOrganizationIndicator ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

CREATE INDEX FK_EducationOrganizationIndicator_EducationOrganization
    ON edfi.EducationOrganizationIndicator(EducationOrganizationId);

CREATE INDEX FK_EducationOrganizationIndicator_IndicatorDescriptor
    ON edfi.EducationOrganizationIndicator(IndicatorDescriptorId);

CREATE INDEX FK_EducationOrganizationIndicator_IndicatorGroupDescriptor
    ON edfi.EducationOrganizationIndicator(IndicatorGroupDescriptorId);

CREATE INDEX FK_EducationOrganizationIndicator_IndicatorLevelDescriptor
    ON edfi.EducationOrganizationIndicator(IndicatorLevelDescriptorId);

-- Table edfi.EducationOrganizationIndicatorPeriod --
CREATE TABLE edfi.EducationOrganizationIndicatorPeriod (
    BeginDate               DATE          NOT NULL,
    EducationOrganizationId INT           NOT NULL,
    IndicatorDescriptorId   INT           NOT NULL,
    EndDate                 DATE          NULL,
    CreateDate              TIMESTAMP NOT NULL,
    CONSTRAINT EducationOrganizationIndicatorPeriod_PK PRIMARY KEY (BeginDate, EducationOrganizationId, IndicatorDescriptorId),
    CONSTRAINT FK_EducationOrganizationIndicatorPeriod_EducationOrganizationIndicator FOREIGN KEY (EducationOrganizationId, IndicatorDescriptorId) REFERENCES edfi.EducationOrganizationIndicator (EducationOrganizationId, IndicatorDescriptorId) ON DELETE CASCADE
);

ALTER TABLE edfi.EducationOrganizationIndicatorPeriod ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

CREATE INDEX FK_EducationOrganizationIndicatorPeriod_EducationOrganizationIndicator
    ON edfi.EducationOrganizationIndicatorPeriod(EducationOrganizationId, IndicatorDescriptorId);

-- Table edfi.Person --
CREATE TABLE edfi.Person (
    PersonId                 VARCHAR (32)    NOT NULL,
    SourceSystemDescriptorId INT             NOT NULL,
    Discriminator            VARCHAR (128)   NULL,
    CreateDate               TIMESTAMP NOT NULL,
    LastModifiedDate         TIMESTAMP NOT NULL,
    Id                       UUID CONSTRAINT Person_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT Person_PK PRIMARY KEY (PersonId, SourceSystemDescriptorId),
    CONSTRAINT FK_Person_SourceSystemDescriptor FOREIGN KEY (SourceSystemDescriptorId) REFERENCES edfi.SourceSystemDescriptor (SourceSystemDescriptorId)
);


ALTER TABLE edfi.Person ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.Person ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_Person_SourceSystemDescriptor
    ON edfi.Person(SourceSystemDescriptorId);


CREATE UNIQUE INDEX UX_Person_Id
    ON edfi.Person(Id);


-- Table edfi.Survey --
CREATE TABLE edfi.Survey (
    Namespace                  VARCHAR (255)   NOT NULL,
    SurveyIdentifier           VARCHAR (60)    NOT NULL,
    EducationOrganizationId    INT             NULL,
    SurveyTitle                VARCHAR (255)   NOT NULL,
    SessionName                VARCHAR (60)    NULL,
    SchoolYear                 SMALLINT        NOT NULL,
    SchoolId                   INT             NULL,
    SurveyCategoryDescriptorId INT             NULL,
    NumberAdministered         INT             NULL,
    Discriminator              VARCHAR (128)   NULL,
    CreateDate                 TIMESTAMP       CONSTRAINT Survey_DF_CreateDate NOT NULL,
    LastModifiedDate           TIMESTAMP   CONSTRAINT Survey_DF_LastModifiedDate NOT NULL,
    Id                         UUID CONSTRAINT Survey_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT Survey_PK PRIMARY KEY (Namespace, SurveyIdentifier),
    CONSTRAINT FK_Survey_EducationOrganization FOREIGN KEY (EducationOrganizationId) REFERENCES edfi.EducationOrganization (EducationOrganizationId),
    CONSTRAINT FK_Survey_SchoolYearType FOREIGN KEY (SchoolYear) REFERENCES edfi.SchoolYearType (SchoolYear),
    CONSTRAINT FK_Survey_Session FOREIGN KEY (SchoolId, SchoolYear, SessionName) REFERENCES edfi.Session (SchoolId, SchoolYear, SessionName) ON UPDATE CASCADE,
    CONSTRAINT FK_Survey_SurveyCategoryDescriptor FOREIGN KEY (SurveyCategoryDescriptorId) REFERENCES edfi.SurveyCategoryDescriptor (SurveyCategoryDescriptorId)
);

ALTER TABLE edfi.Survey ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.Survey ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_Survey_EducationOrganization
    ON edfi.Survey(EducationOrganizationId);


CREATE INDEX FK_Survey_SchoolYearType
    ON edfi.Survey(SchoolYear);


CREATE INDEX FK_Survey_Session
    ON edfi.Survey(SchoolId, SchoolYear, SessionName);


CREATE INDEX FK_Survey_SurveyCategoryDescriptor
    ON edfi.Survey(SurveyCategoryDescriptorId);


CREATE UNIQUE INDEX UX_Survey_Id
    ON edfi.Survey(Id);


-- Table edfi.SurveySection --
CREATE TABLE edfi.SurveySection (
    Namespace          VARCHAR (255)   NOT NULL,
    SurveyIdentifier   VARCHAR (60)    NOT NULL,
    SurveySectionTitle VARCHAR (255)   NOT NULL,
    Discriminator      VARCHAR (128)   NULL,
    CreateDate         TIMESTAMP       CONSTRAINT SurveySection_DF_CreateDate NOT NULL,
    LastModifiedDate   TIMESTAMP       CONSTRAINT SurveySection_DF_LastModifiedDate NOT NULL,
    Id                 UUID CONSTRAINT SurveySection_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveySection_PK PRIMARY KEY (Namespace, SurveyIdentifier, SurveySectionTitle),
    CONSTRAINT FK_SurveySection_Survey FOREIGN KEY (Namespace, SurveyIdentifier) REFERENCES edfi.Survey (Namespace, SurveyIdentifier)
);

ALTER TABLE edfi.SurveySection ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveySection ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveySection_Survey
    ON edfi.SurveySection(Namespace, SurveyIdentifier);


CREATE UNIQUE INDEX UX_SurveySection_Id
    ON edfi.SurveySection(Id);


-- Table edfi.SurveyCourseAssociation --
CREATE TABLE edfi.SurveyCourseAssociation (
    CourseCode              VARCHAR (60)    NOT NULL,
    EducationOrganizationId INT             NOT NULL,
    Namespace               VARCHAR (255)   NOT NULL,
    SurveyIdentifier        VARCHAR (60)    NOT NULL,
    Discriminator           VARCHAR (128)   NULL,
    CreateDate              TIMESTAMP       CONSTRAINT SurveyCourseAssociation_DF_CreateDate NOT NULL,
    LastModifiedDate        TIMESTAMP       CONSTRAINT SurveyCourseAssociation_DF_LastModifiedDate NOT NULL,
    Id                      UUID CONSTRAINT SurveyCourseAssociation_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveyCourseAssociation_PK PRIMARY KEY (CourseCode, EducationOrganizationId, Namespace, SurveyIdentifier),
    CONSTRAINT FK_SurveyCourseAssociation_Course FOREIGN KEY (CourseCode, EducationOrganizationId) REFERENCES edfi.Course (CourseCode, EducationOrganizationId),
    CONSTRAINT FK_SurveyCourseAssociation_Survey FOREIGN KEY (Namespace, SurveyIdentifier) REFERENCES edfi.Survey (Namespace, SurveyIdentifier)
);

ALTER TABLE edfi.SurveyCourseAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveyCourseAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveyCourseAssociation_Course
    ON edfi.SurveyCourseAssociation(CourseCode, EducationOrganizationId);


CREATE INDEX FK_SurveyCourseAssociation_Survey
    ON edfi.SurveyCourseAssociation(Namespace, SurveyIdentifier);


CREATE UNIQUE INDEX UX_SurveyCourseAssociation_Id
    ON edfi.SurveyCourseAssociation(Id);


-- Table edfi.SurveyProgramAssociation --
CREATE TABLE edfi.SurveyProgramAssociation (
    EducationOrganizationId INT             NOT NULL,
    Namespace               VARCHAR (255)   NOT NULL,
    ProgramName             VARCHAR (60)    NOT NULL,
    ProgramTypeDescriptorId INT             NOT NULL,
    SurveyIdentifier        VARCHAR (60)    NOT NULL,
    Discriminator           VARCHAR (128)   NULL,
    CreateDate              TIMESTAMP   	CONSTRAINT SurveyProgramAssociation_DF_CreateDate NOT NULL,
    LastModifiedDate        TIMESTAMP   	CONSTRAINT SurveyProgramAssociation_DF_LastModifiedDate NOT NULL,
    Id                      UUID CONSTRAINT SurveyProgramAssociation_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveyProgramAssociation_PK PRIMARY KEY (EducationOrganizationId, Namespace, ProgramName, ProgramTypeDescriptorId, SurveyIdentifier),
    CONSTRAINT FK_SurveyProgramAssociation_Program FOREIGN KEY (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId) REFERENCES edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId),
    CONSTRAINT FK_SurveyProgramAssociation_Survey FOREIGN KEY (Namespace, SurveyIdentifier) REFERENCES edfi.Survey (Namespace, SurveyIdentifier)
);

ALTER TABLE edfi.SurveyProgramAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveyProgramAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;


CREATE INDEX FK_SurveyProgramAssociation_Program
    ON edfi.SurveyProgramAssociation(EducationOrganizationId, ProgramName, ProgramTypeDescriptorId);


CREATE INDEX FK_SurveyProgramAssociation_Survey
    ON edfi.SurveyProgramAssociation(Namespace, SurveyIdentifier);


CREATE UNIQUE INDEX UX_SurveyProgramAssociation_Id
    ON edfi.SurveyProgramAssociation(Id);


-- Table edfi.SurveyQuestion --
CREATE TABLE edfi.SurveyQuestion (
    Namespace                VARCHAR (255)   NOT NULL,
    QuestionCode             VARCHAR (60)    NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    QuestionFormDescriptorId INT             NOT NULL,
    QuestionText             VARCHAR (1024)  NOT NULL,
    SurveySectionTitle       VARCHAR (255)   NULL,
    Discriminator            VARCHAR (128)   NULL,
    CreateDate               TIMESTAMP   	 CONSTRAINT SurveyQuestion_DF_CreateDate NOT NULL,
    LastModifiedDate         TIMESTAMP   	 CONSTRAINT SurveyQuestion_DF_LastModifiedDate NOT NULL,
    Id                       UUID CONSTRAINT SurveyQuestion_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveyQuestion_PK PRIMARY KEY (Namespace, QuestionCode, SurveyIdentifier),
    CONSTRAINT FK_SurveyQuestion_QuestionFormDescriptor FOREIGN KEY (QuestionFormDescriptorId) REFERENCES edfi.QuestionFormDescriptor (QuestionFormDescriptorId),
    CONSTRAINT FK_SurveyQuestion_Survey FOREIGN KEY (Namespace, SurveyIdentifier) REFERENCES edfi.Survey (Namespace, SurveyIdentifier),
    CONSTRAINT FK_SurveyQuestion_SurveySection FOREIGN KEY (Namespace, SurveyIdentifier, SurveySectionTitle) REFERENCES edfi.SurveySection (Namespace, SurveyIdentifier, SurveySectionTitle)
);

ALTER TABLE edfi.SurveyQuestion ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveyQuestion ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveyQuestion_QuestionFormDescriptor
    ON edfi.SurveyQuestion(QuestionFormDescriptorId);


CREATE INDEX FK_SurveyQuestion_Survey
    ON edfi.SurveyQuestion(Namespace, SurveyIdentifier);


CREATE INDEX FK_SurveyQuestion_SurveySection
    ON edfi.SurveyQuestion(Namespace, SurveyIdentifier, SurveySectionTitle);


CREATE UNIQUE INDEX UX_SurveyQuestion_Id
    ON edfi.SurveyQuestion(Id);


-- Table edfi.SurveyQuestionMatrix --
CREATE TABLE edfi.SurveyQuestionMatrix (
    MatrixElement    VARCHAR (255) NOT NULL,
    Namespace        VARCHAR (255) NOT NULL,
    QuestionCode     VARCHAR (60)  NOT NULL,
    SurveyIdentifier VARCHAR (60)  NOT NULL,
    MinRawScore      INT           NULL,
    MaxRawScore      INT           NULL,
    CreateDate       TIMESTAMP    CONSTRAINT SurveyQuestionMatrix_DF_CreateDate NOT NULL,
    CONSTRAINT SurveyQuestionMatrix_PK PRIMARY KEY (MatrixElement, Namespace, QuestionCode, SurveyIdentifier),
    CONSTRAINT FK_SurveyQuestionMatrix_SurveyQuestion FOREIGN KEY (Namespace, QuestionCode, SurveyIdentifier) REFERENCES edfi.SurveyQuestion (Namespace, QuestionCode, SurveyIdentifier) ON DELETE CASCADE
);

ALTER TABLE edfi.SurveyQuestionMatrix ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveyQuestionMatrix_SurveyQuestion
    ON edfi.SurveyQuestionMatrix(Namespace, QuestionCode, SurveyIdentifier);


-- Table edfi.SurveyResponse --
CREATE TABLE edfi.SurveyResponse (
    Namespace                VARCHAR (255)   NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    ResponseDate             DATE            NOT NULL,
    ResponseTime             INT             NULL,
    ElectronicMailAddress    VARCHAR (128)   NULL,
    FullName                 VARCHAR (80)    NULL,
    Location                 VARCHAR (75)    NULL,
    StudentUSI               INT             NULL,
    ParentUSI                INT             NULL,
    StaffUSI                 INT             NULL,
    Discriminator            VARCHAR (128)   NULL,
    CreateDate               TIMESTAMP       CONSTRAINT SurveyResponse_DF_CreateDate NOT NULL,
    LastModifiedDate         TIMESTAMP       CONSTRAINT SurveyResponse_DF_LastModifiedDate NOT NULL,
    Id                       UUID CONSTRAINT SurveyResponse_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveyResponse_PK PRIMARY KEY (Namespace, SurveyIdentifier, SurveyResponseIdentifier),
    CONSTRAINT FK_SurveyResponse_Parent FOREIGN KEY (ParentUSI) REFERENCES edfi.Parent (ParentUSI),
    CONSTRAINT FK_SurveyResponse_Staff FOREIGN KEY (StaffUSI) REFERENCES edfi.Staff (StaffUSI),
    CONSTRAINT FK_SurveyResponse_Student FOREIGN KEY (StudentUSI) REFERENCES edfi.Student (StudentUSI),
    CONSTRAINT FK_SurveyResponse_Survey FOREIGN KEY (Namespace, SurveyIdentifier) REFERENCES edfi.Survey (Namespace, SurveyIdentifier)
);

ALTER TABLE edfi.SurveyResponse ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveyResponse ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveyResponse_Parent
    ON edfi.SurveyResponse(ParentUSI);


CREATE INDEX FK_SurveyResponse_Staff
    ON edfi.SurveyResponse(StaffUSI);


CREATE INDEX FK_SurveyResponse_Student
    ON edfi.SurveyResponse(StudentUSI);


CREATE INDEX FK_SurveyResponse_Survey
    ON edfi.SurveyResponse(Namespace, SurveyIdentifier);


CREATE UNIQUE INDEX UX_SurveyResponse_Id
    ON edfi.SurveyResponse(Id);

-- Table edfi.SurveyQuestionResponse --
CREATE TABLE edfi.SurveyQuestionResponse (
    Namespace                VARCHAR (255)   NOT NULL,
    QuestionCode             VARCHAR (60)    NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    NoResponse               BIT             NULL,
    Comment                  VARCHAR (1024)  NULL,
    Discriminator            VARCHAR (128)   NULL,
    CreateDate               TIMESTAMP       CONSTRAINT SurveyQuestionResponse_DF_CreateDate NOT NULL,
    LastModifiedDate         TIMESTAMP       CONSTRAINT SurveyQuestionResponse_DF_LastModifiedDate NOT NULL,
    Id                       UUID CONSTRAINT SurveyQuestionResponse_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveyQuestionResponse_PK PRIMARY KEY (Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier),
    CONSTRAINT FK_SurveyQuestionResponse_SurveyQuestion FOREIGN KEY (Namespace, QuestionCode, SurveyIdentifier) REFERENCES edfi.SurveyQuestion (Namespace, QuestionCode, SurveyIdentifier),
    CONSTRAINT FK_SurveyQuestionResponse_SurveyResponse FOREIGN KEY (Namespace, SurveyIdentifier, SurveyResponseIdentifier) REFERENCES edfi.SurveyResponse (Namespace, SurveyIdentifier, SurveyResponseIdentifier)
);

ALTER TABLE edfi.SurveyQuestionResponse ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveyQuestionResponse ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveyQuestionResponse_SurveyQuestion
    ON edfi.SurveyQuestionResponse(Namespace, QuestionCode, SurveyIdentifier);


CREATE INDEX FK_SurveyQuestionResponse_SurveyResponse
    ON edfi.SurveyQuestionResponse(Namespace, SurveyIdentifier, SurveyResponseIdentifier);


CREATE UNIQUE INDEX UX_SurveyQuestionResponse_Id
    ON edfi.SurveyQuestionResponse(Id);


-- Table edfi.SurveyQuestionResponseChoice --
CREATE TABLE edfi.SurveyQuestionResponseChoice (
    Namespace        VARCHAR (255) NOT NULL,
    QuestionCode     VARCHAR (60)  NOT NULL,
    SortOrder        INT           NOT NULL,
    SurveyIdentifier VARCHAR (60)  NOT NULL,
    NumericValue     INT           NULL,
    TextValue        VARCHAR (255) NULL,
    CreateDate       TIMESTAMP     CONSTRAINT SurveyQuestionResponseChoice_DF_CreateDate NOT NULL,
    CONSTRAINT SurveyQuestionResponseChoice_PK PRIMARY KEY (Namespace, QuestionCode, SortOrder, SurveyIdentifier),
    CONSTRAINT FK_SurveyQuestionResponseChoice_SurveyQuestion FOREIGN KEY (Namespace, QuestionCode, SurveyIdentifier) REFERENCES edfi.SurveyQuestion (Namespace, QuestionCode, SurveyIdentifier) ON DELETE CASCADE
);

ALTER TABLE edfi.SurveyQuestionResponseChoice ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveyQuestionResponseChoice_SurveyQuestion
    ON edfi.SurveyQuestionResponseChoice(Namespace, QuestionCode, SurveyIdentifier);


-- Table edfi.SurveyQuestionResponseSurveyQuestionMatrixElementResponse --
CREATE TABLE edfi.SurveyQuestionResponseSurveyQuestionMatrixElementResponse (
    MatrixElement            VARCHAR (255)  NOT NULL,
    Namespace                VARCHAR (255)  NOT NULL,
    QuestionCode             VARCHAR (60)   NOT NULL,
    SurveyIdentifier         VARCHAR (60)   NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)   NOT NULL,
    NumericResponse          INT            NULL,
    TextResponse             VARCHAR (2048) NULL,
    NoResponse               BIT            NULL,
    MinNumericResponse       INT            NULL,
    MaxNumericResponse       INT            NULL,
    CreateDate               TIMESTAMP      CONSTRAINT SurveyQuestionResponseSurveyQuestionMatrixElementResponse_DF_CreateDate NOT NULL,
    CONSTRAINT SurveyQuestionResponseSurveyQuestionMatrixElementResponse_PK PRIMARY KEY (MatrixElement, Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier),
    CONSTRAINT FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse FOREIGN KEY (Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier) REFERENCES edfi.SurveyQuestionResponse (Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier) ON DELETE CASCADE
);

ALTER TABLE edfi.SurveyQuestionResponseSurveyQuestionMatrixElementResponse ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse
    ON edfi.SurveyQuestionResponseSurveyQuestionMatrixElementResponse(Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier);


-- Table edfi.SurveyQuestionResponseValue --
CREATE TABLE edfi.SurveyQuestionResponseValue (
    Namespace                             VARCHAR (255)  NOT NULL,
    QuestionCode                          VARCHAR (60)   NOT NULL,
    SurveyIdentifier                      VARCHAR (60)   NOT NULL,
    SurveyQuestionResponseValueIdentifier INT            NOT NULL,
    SurveyResponseIdentifier              VARCHAR (60)   NOT NULL,
    NumericResponse                       INT            NULL,
    TextResponse                          VARCHAR (2048) NULL,
    CreateDate                            TIMESTAMP      CONSTRAINT SurveyQuestionResponseValue_DF_CreateDate NOT NULL,
    CONSTRAINT SurveyQuestionResponseValue_PK PRIMARY KEY (Namespace, QuestionCode, SurveyIdentifier, SurveyQuestionResponseValueIdentifier, SurveyResponseIdentifier),
    CONSTRAINT FK_SurveyQuestionResponseValue_SurveyQuestionResponse FOREIGN KEY (Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier) REFERENCES edfi.SurveyQuestionResponse (Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier) ON DELETE CASCADE
);

ALTER TABLE edfi.SurveyQuestionResponseValue ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveyQuestionResponseValue_SurveyQuestionResponse
    ON edfi.SurveyQuestionResponseValue(Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier);

-- Table edfi.SurveyResponseEducationOrganizationTargetAssociation --
CREATE TABLE edfi.SurveyResponseEducationOrganizationTargetAssociation (
    EducationOrganizationId  INT             NOT NULL,
    Namespace                VARCHAR (255)   NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    Discriminator            VARCHAR (128)   NULL,
    CreateDate               TIMESTAMP       CONSTRAINT SurveyResponseEducationOrganizationTargetAssociation_DF_CreateDate NOT NULL,
    LastModifiedDate         TIMESTAMP   	 CONSTRAINT SurveyResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate NOT NULL,
    Id                       UUID CONSTRAINT SurveyResponseEducationOrganizationTargetAssociation_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveyResponseEducationOrganizationTargetAssociation_PK PRIMARY KEY (EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier),
    CONSTRAINT FK_SurveyResponseEducationOrganizationTargetAssociation_EducationOrganization FOREIGN KEY (EducationOrganizationId) REFERENCES edfi.EducationOrganization (EducationOrganizationId),
    CONSTRAINT FK_SurveyResponseEducationOrganizationTargetAssociation_SurveyResponse FOREIGN KEY (Namespace, SurveyIdentifier, SurveyResponseIdentifier) REFERENCES edfi.SurveyResponse (Namespace, SurveyIdentifier, SurveyResponseIdentifier)
);

ALTER TABLE edfi.SurveyResponseEducationOrganizationTargetAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveyResponseEducationOrganizationTargetAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveyResponseEducationOrganizationTargetAssociation_EducationOrganization
    ON edfi.SurveyResponseEducationOrganizationTargetAssociation(EducationOrganizationId);


CREATE INDEX FK_SurveyResponseEducationOrganizationTargetAssociation_SurveyResponse
    ON edfi.SurveyResponseEducationOrganizationTargetAssociation(Namespace, SurveyIdentifier, SurveyResponseIdentifier);


CREATE UNIQUE INDEX UX_SurveyResponseEducationOrganizationTargetAssociation_Id
    ON edfi.SurveyResponseEducationOrganizationTargetAssociation(Id);


-- Table edfi.SurveyResponseStaffTargetAssociation --
CREATE TABLE edfi.SurveyResponseStaffTargetAssociation (
    Namespace                VARCHAR (255)   NOT NULL,
    StaffUSI                 INT             NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    Discriminator            VARCHAR (128)   NULL,
    CreateDate               TIMESTAMP       CONSTRAINT SurveyResponseStaffTargetAssociation_DF_CreateDate NOT NULL,
    LastModifiedDate         TIMESTAMP       CONSTRAINT SurveyResponseStaffTargetAssociation_DF_LastModifiedDate NOT NULL,
    Id                       UUID CONSTRAINT SurveyResponseStaffTargetAssociation_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveyResponseStaffTargetAssociation_PK PRIMARY KEY (Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier),
    CONSTRAINT FK_SurveyResponseStaffTargetAssociation_Staff FOREIGN KEY (StaffUSI) REFERENCES edfi.Staff (StaffUSI),
    CONSTRAINT FK_SurveyResponseStaffTargetAssociation_SurveyResponse FOREIGN KEY (Namespace, SurveyIdentifier, SurveyResponseIdentifier) REFERENCES edfi.SurveyResponse (Namespace, SurveyIdentifier, SurveyResponseIdentifier)
);

ALTER TABLE edfi.SurveyResponseStaffTargetAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveyResponseStaffTargetAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveyResponseStaffTargetAssociation_Staff
    ON edfi.SurveyResponseStaffTargetAssociation(StaffUSI);


CREATE INDEX FK_SurveyResponseStaffTargetAssociation_SurveyResponse
    ON edfi.SurveyResponseStaffTargetAssociation(Namespace, SurveyIdentifier, SurveyResponseIdentifier);


CREATE UNIQUE INDEX UX_SurveyResponseStaffTargetAssociation_Id
    ON edfi.SurveyResponseStaffTargetAssociation(Id);


-- Table edfi.SurveyResponseSurveyLevel --
CREATE TABLE edfi.SurveyResponseSurveyLevel (
    Namespace                VARCHAR (255) NOT NULL,
    SurveyIdentifier         VARCHAR (60)  NOT NULL,
    SurveyLevelDescriptorId  INT           NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)  NOT NULL,
    CreateDate               TIMESTAMP 	   CONSTRAINT SurveyResponseSurveyLevel_DF_CreateDate NOT NULL,
    CONSTRAINT SurveyResponseSurveyLevel_PK PRIMARY KEY (Namespace, SurveyIdentifier, SurveyLevelDescriptorId, SurveyResponseIdentifier),
    CONSTRAINT FK_SurveyResponseSurveyLevel_SurveyLevelDescriptor FOREIGN KEY (SurveyLevelDescriptorId) REFERENCES edfi.SurveyLevelDescriptor (SurveyLevelDescriptorId),
    CONSTRAINT FK_SurveyResponseSurveyLevel_SurveyResponse FOREIGN KEY (Namespace, SurveyIdentifier, SurveyResponseIdentifier) REFERENCES edfi.SurveyResponse (Namespace, SurveyIdentifier, SurveyResponseIdentifier) ON DELETE CASCADE
);

ALTER TABLE edfi.SurveyResponseSurveyLevel ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveyResponseSurveyLevel_SurveyLevelDescriptor
    ON edfi.SurveyResponseSurveyLevel(SurveyLevelDescriptorId);


CREATE INDEX FK_SurveyResponseSurveyLevel_SurveyResponse
    ON edfi.SurveyResponseSurveyLevel(Namespace, SurveyIdentifier, SurveyResponseIdentifier);



-- Table edfi.SurveySectionAssociation --
CREATE TABLE edfi.SurveySectionAssociation (
    LocalCourseCode   VARCHAR (60)    NOT NULL,
    Namespace         VARCHAR (255)   NOT NULL,
    SchoolId          INT             NOT NULL,
    SchoolYear        SMALLINT        NOT NULL,
    SectionIdentifier VARCHAR (255)   NOT NULL,
    SessionName       VARCHAR (60)    NOT NULL,
    SurveyIdentifier  VARCHAR (60)    NOT NULL,
    Discriminator     VARCHAR (128)   NULL,
    CreateDate        TIMESTAMP       CONSTRAINT SurveySectionAssociation_DF_CreateDate NOT NULL,
    LastModifiedDate  TIMESTAMP       CONSTRAINT SurveySectionAssociation_DF_LastModifiedDate NOT NULL,
    Id                UUID CONSTRAINT SurveySectionAssociation_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveySectionAssociation_PK PRIMARY KEY (LocalCourseCode, Namespace, SchoolId, SchoolYear, SectionIdentifier, SessionName, SurveyIdentifier),
    CONSTRAINT FK_SurveySectionAssociation_Section FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName) REFERENCES edfi.Section (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName) ON UPDATE CASCADE,
    CONSTRAINT FK_SurveySectionAssociation_Survey FOREIGN KEY (Namespace, SurveyIdentifier) REFERENCES edfi.Survey (Namespace, SurveyIdentifier)
);

ALTER TABLE edfi.SurveySectionAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveySectionAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveySectionAssociation_Section
    ON edfi.SurveySectionAssociation(LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName);


CREATE INDEX FK_SurveySectionAssociation_Survey
    ON edfi.SurveySectionAssociation(Namespace, SurveyIdentifier);


CREATE UNIQUE INDEX UX_SurveySectionAssociation_Id
    ON edfi.SurveySectionAssociation(Id);


-- Table edfi.SurveySectionResponse --
CREATE TABLE edfi.SurveySectionResponse (
    Namespace                VARCHAR (255)   NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    SurveySectionTitle       VARCHAR (255)   NOT NULL,
    SectionRating            DECIMAL (9, 3)  NULL,
    Discriminator            VARCHAR (128)   NULL,
    CreateDate               TIMESTAMP       CONSTRAINT SurveySectionResponse_DF_CreateDate NOT NULL,
    LastModifiedDate         TIMESTAMP       CONSTRAINT SurveySectionResponse_DF_LastModifiedDate NOT NULL,
    Id                       UUID CONSTRAINT SurveySectionResponse_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveySectionResponse_PK PRIMARY KEY (Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle),
    CONSTRAINT FK_SurveySectionResponse_SurveyResponse FOREIGN KEY (Namespace, SurveyIdentifier, SurveyResponseIdentifier) REFERENCES edfi.SurveyResponse (Namespace, SurveyIdentifier, SurveyResponseIdentifier),
    CONSTRAINT FK_SurveySectionResponse_SurveySection FOREIGN KEY (Namespace, SurveyIdentifier, SurveySectionTitle) REFERENCES edfi.SurveySection (Namespace, SurveyIdentifier, SurveySectionTitle)
);

ALTER TABLE edfi.SurveySectionResponse ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveySectionResponse ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE  INDEX FK_SurveySectionResponse_SurveyResponse
    ON edfi.SurveySectionResponse(Namespace, SurveyIdentifier, SurveyResponseIdentifier);


CREATE INDEX FK_SurveySectionResponse_SurveySection
    ON edfi.SurveySectionResponse(Namespace, SurveyIdentifier, SurveySectionTitle);


CREATE UNIQUE INDEX UX_SurveySectionResponse_Id
    ON edfi.SurveySectionResponse(Id);


-- Table edfi.SurveySectionResponseEducationOrganizationTargetAssociation --
CREATE TABLE edfi.SurveySectionResponseEducationOrganizationTargetAssociation (
    EducationOrganizationId  INT             NOT NULL,
    Namespace                VARCHAR (255)   NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    SurveySectionTitle       VARCHAR (255)   NOT NULL,
    Discriminator            VARCHAR (128)   NULL,
    CreateDate               TIMESTAMP       CONSTRAINT SurveySectionResponseEducationOrganizationTargetAssociation_DF_CreateDate NOT NULL,
    LastModifiedDate         TIMESTAMP       CONSTRAINT SurveySectionResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate NOT NULL,
    Id                       UUID CONSTRAINT SurveySectionResponseEducationOrganizationTargetAssociation_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveySectionResponseEducationOrganizationTargetAssociation_PK PRIMARY KEY (EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle),
    CONSTRAINT FK_SurveySecRespEdOrgTargetAss_EducationOrganization FOREIGN KEY (EducationOrganizationId) REFERENCES edfi.EducationOrganization (EducationOrganizationId),
    CONSTRAINT FK_SurveySecRespEdOrgTargetAss_SurveySectionResponse FOREIGN KEY (Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle) REFERENCES edfi.SurveySectionResponse (Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle)
);

ALTER TABLE edfi.SurveySectionResponseEducationOrganizationTargetAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveySectionResponseEducationOrganizationTargetAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveySectionResponseEducationOrganizationTargetAssociation_EducationOrganization
    ON edfi.SurveySectionResponseEducationOrganizationTargetAssociation(EducationOrganizationId);


CREATE INDEX FK_SurveySecRespEdOrgTargetAss_SurveySectionResponse
    ON edfi.SurveySectionResponseEducationOrganizationTargetAssociation(Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle);


CREATE UNIQUE INDEX UX_SurveySectionResponseEducationOrganizationTargetAssociation_Id
    ON edfi.SurveySectionResponseEducationOrganizationTargetAssociation(Id);


-- Table edfi.SurveySectionResponseStaffTargetAssociation --
CREATE TABLE edfi.SurveySectionResponseStaffTargetAssociation (
    Namespace                VARCHAR (255)   NOT NULL,
    StaffUSI                 INT             NOT NULL,
    SurveyIdentifier         VARCHAR (60)    NOT NULL,
    SurveyResponseIdentifier VARCHAR (60)    NOT NULL,
    SurveySectionTitle       VARCHAR (255)   NOT NULL,
    Discriminator            VARCHAR (128)   NULL,
    CreateDate               TIMESTAMP   	CONSTRAINT SurveySectionResponseStaffTargetAssociation_DF_CreateDate NOT NULL,
    LastModifiedDate         TIMESTAMP   	CONSTRAINT SurveySectionResponseStaffTargetAssociation_DF_LastModifiedDate NOT NULL,
    Id                       UUID CONSTRAINT SurveySectionResponseStaffTargetAssociation_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT SurveySectionResponseStaffTargetAssociation_PK PRIMARY KEY (Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle),
    CONSTRAINT FK_SurveySecRespStaffTargetAss_Staff FOREIGN KEY (StaffUSI) REFERENCES edfi.Staff (StaffUSI),
    CONSTRAINT FK_SurveySecRespStaffTargetAss_SurveySectionResponse FOREIGN KEY (Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle) REFERENCES edfi.SurveySectionResponse (Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle)
);

ALTER TABLE edfi.SurveySectionResponseStaffTargetAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE edfi.SurveySectionResponseStaffTargetAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

CREATE INDEX FK_SurveySecRespStaffTargetAss_Staff
    ON edfi.SurveySectionResponseStaffTargetAssociation(StaffUSI);


CREATE INDEX FK_SurveySecRespStaffTargetAss_SurveySectionResponse
    ON edfi.SurveySectionResponseStaffTargetAssociation(Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle);


CREATE UNIQUE INDEX UX_SurveySectionResponseStaffTargetAssociation_Id
    ON edfi.SurveySectionResponseStaffTargetAssociation(Id);
