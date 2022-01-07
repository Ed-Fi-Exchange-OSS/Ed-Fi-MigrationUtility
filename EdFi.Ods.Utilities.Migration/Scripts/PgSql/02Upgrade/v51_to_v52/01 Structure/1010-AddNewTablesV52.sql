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
    Id                                    UUID CONSTRAINT AssessmentScoreRangeLearningStandard_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT AssessmentScoreRangeLearningStandard_PK PRIMARY KEY (AssessmentIdentifier, Namespace, ScoreRangeId ),
    CONSTRAINT FK_AssessmentScoreRangeLearningStandard_Assessment FOREIGN KEY (AssessmentIdentifier, Namespace) REFERENCES edfi.Assessment (AssessmentIdentifier, Namespace),
    CONSTRAINT FK_AssessmentScoreRangeLearningStandard_AssessmentReportingMethodDescriptor FOREIGN KEY (AssessmentReportingMethodDescriptorId) REFERENCES edfi.AssessmentReportingMethodDescriptor (AssessmentReportingMethodDescriptorId),
    CONSTRAINT FK_AssessmentScoreRangeLearningStandard_ObjectiveAssessment FOREIGN KEY (AssessmentIdentifier, IdentificationCode, Namespace) REFERENCES edfi.ObjectiveAssessment (AssessmentIdentifier, IdentificationCode, Namespace)
);

CREATE INDEX FK_AssessmentScoreRangeLearningStandard_Assessment
    ON edfi.AssessmentScoreRangeLearningStandard(AssessmentIdentifier , Namespace);

CREATE  INDEX FK_AssessmentScoreRangeLearningStandard_AssessmentReportingMethodDescriptor
    ON edfi.AssessmentScoreRangeLearningStandard(AssessmentReportingMethodDescriptorId );

CREATE  INDEX FK_AssessmentScoreRangeLearningStandard_ObjectiveAssessment
    ON edfi.AssessmentScoreRangeLearningStandard(AssessmentIdentifier , IdentificationCode , Namespace );

CREATE  INDEX UX_AssessmentScoreRangeLearningStandard_Id
    ON edfi.AssessmentScoreRangeLearningStandard(Id );

CREATE TABLE edfi.AssessmentScoreRangeLearningStandardLearningStandard (
    AssessmentIdentifier VARCHAR (60)  NOT NULL,
    LearningStandardId   VARCHAR (60)  NOT NULL,
    Namespace            VARCHAR (255) NOT NULL,
    ScoreRangeId         VARCHAR (60)  NOT NULL,
    CreateDate           TIMESTAMP   DEFAULT current_timestamp NOT NULL,
    CONSTRAINT AssessmentScoreRangeLearningStandardLearningStandard_PK PRIMARY KEY  (AssessmentIdentifier , LearningStandardId , Namespace , ScoreRangeId ),
    CONSTRAINT FK_AssessmentScoreRangeLearningStandardLearningStandard_AssessmentScoreRangeLearningStandard FOREIGN KEY (AssessmentIdentifier, Namespace, ScoreRangeId) REFERENCES edfi.AssessmentScoreRangeLearningStandard (AssessmentIdentifier, Namespace, ScoreRangeId) ON DELETE CASCADE,
    CONSTRAINT FK_AssessmentScoreRangeLearningStandardLearningStandard_LearningStandard FOREIGN KEY (LearningStandardId) REFERENCES edfi.LearningStandard (LearningStandardId)
);


CREATE  INDEX FK_AssessmentScoreRangeLearningStandardLearningStandard_AssessmentScoreRangeLearningStandard
    ON edfi.AssessmentScoreRangeLearningStandardLearningStandard(AssessmentIdentifier , Namespace , ScoreRangeId );


CREATE  INDEX FK_AssessmentScoreRangeLearningStandardLearningStandard_LearningStandard
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
    Id                          UUID CONSTRAINT StudentDisciplineIncidentBehaviorAssociation_DF_Id DEFAULT gen_random_uuid() NOT NULL,
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
    CONSTRAINT FK_StudentDisciplineIncidentBehaviorAssociation_DisciplineAction FOREIGN KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI) REFERENCES edfi.DisciplineAction (DisciplineActionIdentifier, DisciplineDate, StudentUSI) ON DELETE CASCADE,
    CONSTRAINT FK_StudentDisciplineIncidentBehaviorAssociation FOREIGN KEY (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI) REFERENCES edfi.StudentDisciplineIncidentBehaviorAssociation (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI)
);

CREATE  INDEX FK_StudentDisciplineIncidentBehaviorAssociation_DisciplineAction
    ON edfi.DisciplineActionStudentDisciplineIncidentBehaviorAssociation(DisciplineActionIdentifier , DisciplineDate , StudentUSI );

CREATE  INDEX FK_StudentDisciplineIncidentBehaviorAssociation
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
    CONSTRAINT FK_GeneralStudentProgramAssociationProgramParticipationStatus_GeneralStudentProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI) REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI) ON DELETE CASCADE,
    CONSTRAINT FK_GeneralStudentProgramAssociationProgramParticipationStatus_ParticipationStatusDescriptor FOREIGN KEY (ParticipationStatusDescriptorId) REFERENCES edfi.ParticipationStatusDescriptor (ParticipationStatusDescriptorId)
);


CREATE  INDEX FK_GeneralStudentProgramAssociationProgramParticipationStatus_GeneralStudentProgramAssociation
    ON edfi.GeneralStudentProgramAssociationProgramParticipationStatus(BeginDate , EducationOrganizationId , ProgramEducationOrganizationId , ProgramName , ProgramTypeDescriptorId , StudentUSI );


CREATE  INDEX FK_GeneralStudentProgramAssociationProgramParticipationStatus_ParticipationStatusDescriptor
    ON edfi.GeneralStudentProgramAssociationProgramParticipationStatus(ParticipationStatusDescriptorId );


CREATE TABLE edfi.OrganizationDepartment (
    OrganizationDepartmentId      INT NOT NULL,
    AcademicSubjectDescriptorId   INT NULL,
    ParentEducationOrganizationId INT NULL,
    CONSTRAINT OrganizationDepartment_PK PRIMARY KEY  (OrganizationDepartmentId ),
    CONSTRAINT FK_OrganizationDepartment_AcademicSubjectDescriptor FOREIGN KEY (AcademicSubjectDescriptorId) REFERENCES edfi.AcademicSubjectDescriptor (AcademicSubjectDescriptorId),
    CONSTRAINT FK_OrganizationDepartment_EducationOrganization FOREIGN KEY (OrganizationDepartmentId) REFERENCES edfi.EducationOrganization (EducationOrganizationId) ON DELETE CASCADE,
    CONSTRAINT FK_OrganizationDepartment_EducationOrganization1 FOREIGN KEY (ParentEducationOrganizationId) REFERENCES edfi.EducationOrganization (EducationOrganizationId)
);

CREATE  INDEX FK_OrganizationDepartment_AcademicSubjectDescriptor
    ON edfi.OrganizationDepartment(AcademicSubjectDescriptorId );


CREATE  INDEX FK_OrganizationDepartment_EducationOrganization1
    ON edfi.OrganizationDepartment(ParentEducationOrganizationId );

CREATE TABLE edfi.StaffAncestryEthnicOrigin (
    AncestryEthnicOriginDescriptorId INT           NOT NULL,
    StaffUSI                         INT           NOT NULL,
    CreateDate                      TIMESTAMP    DEFAULT current_timestamp NOT NULL,
    CONSTRAINT StaffAncestryEthnicOrigin_PK PRIMARY KEY  (AncestryEthnicOriginDescriptorId , StaffUSI ),
    CONSTRAINT FK_StaffAncestryEthnicOrigin_AncestryEthnicOriginDescriptor FOREIGN KEY (AncestryEthnicOriginDescriptorId) REFERENCES edfi.AncestryEthnicOriginDescriptor (AncestryEthnicOriginDescriptorId),
    CONSTRAINT FK_StaffAncestryEthnicOrigin_Staff FOREIGN KEY (StaffUSI) REFERENCES edfi.Staff (StaffUSI) ON DELETE CASCADE
);


CREATE  INDEX FK_StaffAncestryEthnicOrigin_AncestryEthnicOriginDescriptor
    ON edfi.StaffAncestryEthnicOrigin(AncestryEthnicOriginDescriptorId );


CREATE  INDEX FK_StaffAncestryEthnicOrigin_Staff
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
    Id                 UUID CONSTRAINT StudentDisciplineIncidentBehaviorAssociation_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    CONSTRAINT StudentDisciplineIncidentNonOffenderAssociation_PK PRIMARY KEY  (IncidentIdentifier , SchoolId , StudentUSI ),
    CONSTRAINT FK_StudentDisciplineIncidentNonOffenderAssociation_DisciplineIncident FOREIGN KEY (IncidentIdentifier, SchoolId) REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId),
    CONSTRAINT FK_StudentDisciplineIncidentNonOffenderAssociation_Student FOREIGN KEY (StudentUSI) REFERENCES edfi.Student (StudentUSI)
);


CREATE  INDEX FK_StudentDisciplineIncidentNonOffenderAssociation_DisciplineIncident
    ON edfi.StudentDisciplineIncidentNonOffenderAssociation(IncidentIdentifier , SchoolId );


CREATE  INDEX FK_StudentDisciplineIncidentNonOffenderAssociation_Student
    ON edfi.StudentDisciplineIncidentNonOffenderAssociation(StudentUSI );


CREATE  INDEX UX_StudentDisciplineIncidentNonOffenderAssociation_Id
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
    CONSTRAINT FK_SEOAAEO_AncestryEthnicOriginDescriptor FOREIGN KEY (AncestryEthnicOriginDescriptorId) REFERENCES edfi.AncestryEthnicOriginDescriptor (AncestryEthnicOriginDescriptorId),
    CONSTRAINT FK_SEOAAEO_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI) REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI) ON DELETE CASCADE
);

CREATE  INDEX FK_SEOAAEO_AncestryEthnicOriginDescriptor
    ON edfi.StudentEducationOrganizationAssociationAncestryEthnicOrigin(AncestryEthnicOriginDescriptorId );

CREATE  INDEX FK_SEOAAEO_StudentEducationOrganizationAssociation
    ON edfi.StudentEducationOrganizationAssociationAncestryEthnicOrigin(EducationOrganizationId , StudentUSI );
