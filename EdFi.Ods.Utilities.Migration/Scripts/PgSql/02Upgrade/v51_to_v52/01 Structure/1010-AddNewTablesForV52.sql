-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE edfi.AssessmentScoreRangeLearningStandard (
    AssessmentIdentifier                  VARCHAR (60)    NOT NULL,
    Namespace                             VARCHAR (255)   NOT NULL,
    ScoreRangeId                          VARCHAR (60)    NOT NULL,
    AssessmentReportingMethodDescriptorId INT              NULL,
    MinimumScore                          VARCHAR (35)    NOT NULL,
    MaximumScore                          VARCHAR (35)    NOT NULL,
    IdentificationCode                    VARCHAR (60)    NULL,
    Discriminator                         VARCHAR (128)   NULL,
    CreateDate                            TIMESTAMP   DEFAULT current_timestamp NOT NULL ,
    LastModifiedDate                      TIMESTAMP   DEFAULT current_timestamp NOT NULL ,
    Id                                    UUID  DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT AssessmentScoreRangeLearningStandard_PK PRIMARY KEY (AssessmentIdentifier, Namespace, ScoreRangeId ),
    CONSTRAINT fk_a20588_assessment FOREIGN KEY (AssessmentIdentifier, Namespace) REFERENCES edfi.Assessment (AssessmentIdentifier, Namespace),
    CONSTRAINT fk_a20588_assessmentreportingmethoddescriptor FOREIGN KEY (AssessmentReportingMethodDescriptorId) REFERENCES edfi.AssessmentReportingMethodDescriptor (AssessmentReportingMethodDescriptorId),
    CONSTRAINT fk_a20588_objectiveassessment FOREIGN KEY (AssessmentIdentifier, IdentificationCode, Namespace) REFERENCES edfi.ObjectiveAssessment (AssessmentIdentifier, IdentificationCode, Namespace)
);

CREATE INDEX fk_a20588_assessment
    ON edfi.AssessmentScoreRangeLearningStandard(AssessmentIdentifier , Namespace);

CREATE  INDEX fk_a20588_assessmentreportingmethoddescriptor
    ON edfi.AssessmentScoreRangeLearningStandard(AssessmentReportingMethodDescriptorId );

CREATE  INDEX fk_a20588_objectiveassessment
    ON edfi.AssessmentScoreRangeLearningStandard(AssessmentIdentifier , IdentificationCode , Namespace );

CREATE UNIQUE INDEX ux_a20588_id
    ON edfi.AssessmentScoreRangeLearningStandard(Id );

CREATE TABLE edfi.AssessmentScoreRangeLearningStandardLearningStandard (
    AssessmentIdentifier VARCHAR (60)  NOT NULL,
    LearningStandardId   VARCHAR (60)  NOT NULL,
    Namespace            VARCHAR (255) NOT NULL,
    ScoreRangeId         VARCHAR (60)  NOT NULL,
    CreateDate           TIMESTAMP   DEFAULT current_timestamp NOT NULL,
    CONSTRAINT AssessmentScoreRangeLearningStandardLearningStandard_PK PRIMARY KEY  (AssessmentIdentifier , LearningStandardId , Namespace , ScoreRangeId ),
    CONSTRAINT fk_9960a9_assessmentscorerangelearningstandard FOREIGN KEY (AssessmentIdentifier, Namespace, ScoreRangeId) REFERENCES edfi.AssessmentScoreRangeLearningStandard (AssessmentIdentifier, Namespace, ScoreRangeId) ON DELETE CASCADE,
    CONSTRAINT fk_9960a9_learningstandard FOREIGN KEY (LearningStandardId) REFERENCES edfi.LearningStandard (LearningStandardId)
);


CREATE  INDEX fk_9960a9_assessmentscorerangelearningstandard
    ON edfi.AssessmentScoreRangeLearningStandardLearningStandard(AssessmentIdentifier , Namespace , ScoreRangeId );


CREATE  INDEX fk_9960a9_learningstandard
    ON edfi.AssessmentScoreRangeLearningStandardLearningStandard(LearningStandardId );



CREATE TABLE edfi.StudentDisciplineIncidentBehaviorAssociation (
    BehaviorDescriptorId        INT              NOT NULL,
    IncidentIdentifier          VARCHAR (20)    NOT NULL,
    SchoolId                    INT              NOT NULL,
    StudentUSI                  INT              NOT NULL,
    BehaviorDetailedDescription VARCHAR (1024)  NULL,
    Discriminator               VARCHAR (128)   NULL,
    CreateDate                  TIMESTAMP    DEFAULT current_timestamp NOT NULL,
    LastModifiedDate            TIMESTAMP    DEFAULT current_timestamp NOT NULL,
    Id                          UUID DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT StudentDisciplineIncidentBehaviorAssociation_PK PRIMARY KEY (BehaviorDescriptorId , IncidentIdentifier , SchoolId , StudentUSI ),
    CONSTRAINT FK_StudentDisciplineIncidentBehaviorAssociation_BehaviorDescriptor FOREIGN KEY (BehaviorDescriptorId) REFERENCES edfi.BehaviorDescriptor (BehaviorDescriptorId),
    CONSTRAINT FK_StudentDisciplineIncidentBehaviorAssociation_DisciplineIncident FOREIGN KEY (IncidentIdentifier, SchoolId) REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId),
    CONSTRAINT FK_StudentDisciplineIncidentBehaviorAssociation_Student FOREIGN KEY (StudentUSI) REFERENCES edfi.Student (StudentUSI)
);


CREATE  INDEX FK_StudentDisciplineIncidentBehaviorAssociation_BehaviorDescriptor
    ON edfi.StudentDisciplineIncidentBehaviorAssociation(BehaviorDescriptorId );

CREATE  INDEX FK_StudentDisciplineIncidentBehaviorAssociation_DisciplineIncident
    ON edfi.StudentDisciplineIncidentBehaviorAssociation(IncidentIdentifier , SchoolId );

CREATE  INDEX FK_StudentDisciplineIncidentBehaviorAssociation_Student
    ON edfi.StudentDisciplineIncidentBehaviorAssociation(StudentUSI );

CREATE  INDEX UX_StudentDisciplineIncidentBehaviorAssociation_Id
    ON edfi.StudentDisciplineIncidentBehaviorAssociation(Id );

CREATE TABLE edfi.DisciplineActionStudentDisciplineIncidentBehaviorAssociation (
    BehaviorDescriptorId       INT           NOT NULL,
    DisciplineActionIdentifier VARCHAR (20) NOT NULL,
    DisciplineDate             DATE          NOT NULL,
    IncidentIdentifier         VARCHAR (20) NOT NULL,
    SchoolId                   INT           NOT NULL,
    StudentUSI                 INT           NOT NULL,
    CreateDate                 TIMESTAMP    DEFAULT current_timestamp NOT NULL,
    CONSTRAINT DisciplineActionStudentDisciplineIncidentBehaviorAssociation_PK PRIMARY KEY (BehaviorDescriptorId , DisciplineActionIdentifier , DisciplineDate , IncidentIdentifier , SchoolId , StudentUSI ),
    CONSTRAINT fk_2c4cdb_disciplineaction FOREIGN KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI) REFERENCES edfi.DisciplineAction (DisciplineActionIdentifier, DisciplineDate, StudentUSI) ON DELETE CASCADE,
    CONSTRAINT fk_2c4cdb_studentdisciplineincidentbehaviorassociation FOREIGN KEY (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI) REFERENCES edfi.StudentDisciplineIncidentBehaviorAssociation (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI)
);

CREATE  INDEX fk_2c4cdb_disciplineaction
    ON edfi.DisciplineActionStudentDisciplineIncidentBehaviorAssociation(DisciplineActionIdentifier , DisciplineDate , StudentUSI );

CREATE  INDEX fk_2c4cdb_studentdisciplineincidentbehaviorassociation
    ON edfi.DisciplineActionStudentDisciplineIncidentBehaviorAssociation(BehaviorDescriptorId , IncidentIdentifier , SchoolId , StudentUSI );

CREATE TABLE edfi.GeneralStudentProgramAssociationProgramParticipationStatus (
    BeginDate                       DATE          NOT NULL,
    EducationOrganizationId         INT           NOT NULL,
    ParticipationStatusDescriptorId INT           NOT NULL,
    ProgramEducationOrganizationId  INT           NOT NULL,
    ProgramName                     VARCHAR (60) NOT NULL,
    ProgramTypeDescriptorId         INT           NOT NULL,
    StatusBeginDate                 DATE          NOT NULL,
    StudentUSI                      INT           NOT NULL,
    StatusEndDate                   DATE          NULL,
    DesignatedBy                    VARCHAR (60) NULL,
    CreateDate                      TIMESTAMP    DEFAULT current_timestamp NOT NULL,
    CONSTRAINT GeneralStudentProgramAssociationProgramParticipationStatus_PK PRIMARY KEY (BeginDate , EducationOrganizationId , ParticipationStatusDescriptorId , ProgramEducationOrganizationId , ProgramName , ProgramTypeDescriptorId , StatusBeginDate , StudentUSI ),
    CONSTRAINT fk_0855d2_generalstudentprogramassociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI) REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI) ON DELETE CASCADE,
    CONSTRAINT fk_0855d2_participationstatusdescriptor FOREIGN KEY (ParticipationStatusDescriptorId) REFERENCES edfi.ParticipationStatusDescriptor (ParticipationStatusDescriptorId)
);


CREATE  INDEX fk_0855d2_generalstudentprogramassociation
    ON edfi.GeneralStudentProgramAssociationProgramParticipationStatus(BeginDate , EducationOrganizationId , ProgramEducationOrganizationId , ProgramName , ProgramTypeDescriptorId , StudentUSI );


CREATE  INDEX fk_0855d2_participationstatusdescriptor
    ON edfi.GeneralStudentProgramAssociationProgramParticipationStatus(ParticipationStatusDescriptorId );


CREATE TABLE edfi.OrganizationDepartment (
    OrganizationDepartmentId      INT NOT NULL,
    AcademicSubjectDescriptorId   INT NULL,
    ParentEducationOrganizationId INT NULL,
    CONSTRAINT OrganizationDepartment_PK PRIMARY KEY  (OrganizationDepartmentId ),
    CONSTRAINT fk_13b924_academicsubjectdescriptor FOREIGN KEY (AcademicSubjectDescriptorId) REFERENCES edfi.AcademicSubjectDescriptor (AcademicSubjectDescriptorId),
    CONSTRAINT fk_13b924_educationorganization FOREIGN KEY (OrganizationDepartmentId) REFERENCES edfi.EducationOrganization (EducationOrganizationId) ON DELETE CASCADE,
    CONSTRAINT fk_13b924_educationorganization1 FOREIGN KEY (ParentEducationOrganizationId) REFERENCES edfi.EducationOrganization (EducationOrganizationId)
);

CREATE  INDEX fk_13b924_academicsubjectdescriptor
    ON edfi.OrganizationDepartment(AcademicSubjectDescriptorId );


CREATE  INDEX fk_13b924_educationorganization1
    ON edfi.OrganizationDepartment(ParentEducationOrganizationId );

CREATE TABLE edfi.StaffAncestryEthnicOrigin (
    AncestryEthnicOriginDescriptorId INT           NOT NULL,
    StaffUSI                         INT           NOT NULL,
    CreateDate                      TIMESTAMP    DEFAULT current_timestamp NOT NULL,
    CONSTRAINT StaffAncestryEthnicOrigin_PK PRIMARY KEY  (AncestryEthnicOriginDescriptorId , StaffUSI ),
    CONSTRAINT fk_a4a6ae_ancestryethnicorigindescriptor FOREIGN KEY (AncestryEthnicOriginDescriptorId) REFERENCES edfi.AncestryEthnicOriginDescriptor (AncestryEthnicOriginDescriptorId),
    CONSTRAINT fk_a4a6ae_staff FOREIGN KEY (StaffUSI) REFERENCES edfi.Staff (StaffUSI) ON DELETE CASCADE
);


CREATE  INDEX fk_a4a6ae_ancestryethnicorigindescriptor
    ON edfi.StaffAncestryEthnicOrigin(AncestryEthnicOriginDescriptorId );


CREATE  INDEX fk_a4a6ae_staff
    ON edfi.StaffAncestryEthnicOrigin(StaffUSI );


CREATE TABLE edfi.StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode (
    BehaviorDescriptorId                            INT           NOT NULL,
    DisciplineIncidentParticipationCodeDescriptorId INT           NOT NULL,
    IncidentIdentifier                              VARCHAR (20) NOT NULL,
    SchoolId                                        INT           NOT NULL,
    StudentUSI                                      INT           NOT NULL,
    CreateDate                                      TIMESTAMP    DEFAULT current_timestamp NOT NULL,
    CONSTRAINT DisciplineIncidentParticipationCode_PK PRIMARY KEY  (BehaviorDescriptorId , DisciplineIncidentParticipationCodeDescriptorId , IncidentIdentifier , SchoolId , StudentUSI ),
    CONSTRAINT FK_DisciplineIncidentParticipationCode_DisciplineIncidentParticipationCodeDescriptor FOREIGN KEY (DisciplineIncidentParticipationCodeDescriptorId) REFERENCES edfi.DisciplineIncidentParticipationCodeDescriptor (DisciplineIncidentParticipationCodeDescriptorId),
    CONSTRAINT FK_DisciplineIncidentParticipationCode_StudentDisciplineIncidentBehaviorAssociation FOREIGN KEY (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI) REFERENCES edfi.StudentDisciplineIncidentBehaviorAssociation (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI) ON DELETE CASCADE
);


CREATE  INDEX FK_DisciplineIncidentParticipationCode_DisciplineIncidentParticipationCodeDescriptor
    ON edfi.StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode(DisciplineIncidentParticipationCodeDescriptorId );


CREATE  INDEX FK_DisciplineIncidentParticipationCode_StudentDisciplineIncidentBehaviorAssociation
    ON edfi.StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode(BehaviorDescriptorId , IncidentIdentifier , SchoolId , StudentUSI );


CREATE TABLE edfi.StudentDisciplineIncidentNonOffenderAssociation (
    IncidentIdentifier VARCHAR (20)    NOT NULL,
    SchoolId           INT              NOT NULL,
    StudentUSI         INT              NOT NULL,
    Discriminator      VARCHAR (128)   NULL,
    CreateDate         TIMESTAMP    DEFAULT current_timestamp NOT NULL,
    LastModifiedDate   TIMESTAMP    DEFAULT current_timestamp NOT NULL,
    Id                 UUID  DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT StudentDisciplineIncidentNonOffenderAssociation_PK PRIMARY KEY  (IncidentIdentifier , SchoolId , StudentUSI ),
    CONSTRAINT fk_4b43da_disciplineincident FOREIGN KEY (IncidentIdentifier, SchoolId) REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId),
    CONSTRAINT fk_4b43da_student FOREIGN KEY (StudentUSI) REFERENCES edfi.Student (StudentUSI)
);


CREATE  INDEX fk_4b43da_disciplineincident
    ON edfi.StudentDisciplineIncidentNonOffenderAssociation(IncidentIdentifier , SchoolId );


CREATE  INDEX fk_4b43da_student
    ON edfi.StudentDisciplineIncidentNonOffenderAssociation(StudentUSI );


CREATE UNIQUE INDEX ux_4b43da_id
    ON edfi.StudentDisciplineIncidentNonOffenderAssociation(Id );


CREATE TABLE edfi.StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode (
    DisciplineIncidentParticipationCodeDescriptorId INT           NOT NULL,
    IncidentIdentifier                              VARCHAR (20) NOT NULL,
    SchoolId                                        INT           NOT NULL,
    StudentUSI                                      INT           NOT NULL,
    CreateDate                      TIMESTAMP    DEFAULT current_timestamp NOT NULL,
    CONSTRAINT SDINADIPC_PK PRIMARY KEY  (DisciplineIncidentParticipationCodeDescriptorId , IncidentIdentifier , SchoolId , StudentUSI ),
    CONSTRAINT FK_SDINADIPC_DisciplineIncidentParticipationCodeDescrip FOREIGN KEY (DisciplineIncidentParticipationCodeDescriptorId) REFERENCES edfi.DisciplineIncidentParticipationCodeDescriptor (DisciplineIncidentParticipationCodeDescriptorId),
    CONSTRAINT FK_SDINADIPC_StudentDisciplineIncidentNonOffenderAssoci FOREIGN KEY (IncidentIdentifier, SchoolId, StudentUSI) REFERENCES edfi.StudentDisciplineIncidentNonOffenderAssociation (IncidentIdentifier, SchoolId, StudentUSI) ON DELETE CASCADE
);


CREATE  INDEX FK_SDINADIPC_DisciplineIncidentParticipationCodeDescrip
    ON edfi.StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode(DisciplineIncidentParticipationCodeDescriptorId );

CREATE  INDEX FK_SDINADIPC_StudentDisciplineIncidentNonOffenderAssoci
    ON edfi.StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode(IncidentIdentifier , SchoolId , StudentUSI );

CREATE TABLE edfi.StudentEducationOrganizationAssociationAncestryEthnicOrigin (
    AncestryEthnicOriginDescriptorId INT           NOT NULL,
    EducationOrganizationId          INT           NOT NULL,
    StudentUSI                       INT           NOT NULL,
    CreateDate                      TIMESTAMP    DEFAULT current_timestamp NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationAncestryEthnicOrigin_PK PRIMARY KEY  (AncestryEthnicOriginDescriptorId , EducationOrganizationId , StudentUSI ),
    CONSTRAINT fk_2c2b13_ancestryethnicorigindescriptor FOREIGN KEY (AncestryEthnicOriginDescriptorId) REFERENCES edfi.AncestryEthnicOriginDescriptor (AncestryEthnicOriginDescriptorId),
    CONSTRAINT fk_2c2b13_studenteducationorganizationassociation FOREIGN KEY (EducationOrganizationId, StudentUSI) REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI) ON DELETE CASCADE
);

CREATE  INDEX fk_2c2b13_ancestryethnicorigindescriptor
    ON edfi.StudentEducationOrganizationAssociationAncestryEthnicOrigin(AncestryEthnicOriginDescriptorId );

CREATE  INDEX fk_2c2b13_studenteducationorganizationassociation
    ON edfi.StudentEducationOrganizationAssociationAncestryEthnicOrigin(EducationOrganizationId , StudentUSI );
