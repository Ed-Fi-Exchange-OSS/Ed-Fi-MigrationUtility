-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE tracked_deletes_edfi.AncestryEthnicOriginDescriptor (
    AncestryEthnicOriginDescriptorId INT              NOT NULL,
    Id                               UUID CONSTRAINT AncestryEthnicOriginDescriptor_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    ChangeVersion                    BIGINT           NOT NULL,
    CONSTRAINT PK_AncestryEthnicOriginDescriptor PRIMARY KEY  (ChangeVersion )
);


CREATE TABLE tracked_deletes_edfi.AssessmentScoreRangeLearningStandard (
    AssessmentIdentifier VARCHAR (60)    NOT NULL,
    Namespace            VARCHAR (255)   NOT NULL,
    ScoreRangeId         VARCHAR (60)    NOT NULL,
    Id                   UUID CONSTRAINT AssessmentScoreRangeLearningStandard_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    ChangeVersion        BIGINT           NOT NULL,
    CONSTRAINT PK_AssessmentScoreRangeLearningStandard PRIMARY KEY  (ChangeVersion )
);


CREATE TABLE tracked_deletes_edfi.OrganizationDepartment (
    OrganizationDepartmentId INT              NOT NULL,
    Id                       UUID CONSTRAINT OrganizationDepartment_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    ChangeVersion            BIGINT           NOT NULL,
    CONSTRAINT PK_OrganizationDepartment PRIMARY KEY  (ChangeVersion )
);


CREATE TABLE tracked_deletes_edfi.StudentDisciplineIncidentBehaviorAssociation (
    BehaviorDescriptorId INT              NOT NULL,
    IncidentIdentifier   VARCHAR (20)    NOT NULL,
    SchoolId             INT              NOT NULL,
    StudentUSI           INT              NOT NULL,
    Id                   UUID CONSTRAINT StudentDisciplineIncidentBehaviorAssociation_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    ChangeVersion        BIGINT           NOT NULL,
    CONSTRAINT PK_StudentDisciplineIncidentBehaviorAssociation PRIMARY KEY  (ChangeVersion )
);


CREATE TABLE tracked_deletes_edfi.StudentDisciplineIncidentNonOffenderAssociation (
    IncidentIdentifier VARCHAR (20)    NOT NULL,
    SchoolId           INT              NOT NULL,
    StudentUSI         INT              NOT NULL,
    Id                                UUID CONSTRAINT StudentDisciplineIncidentNonOffenderAssociation_DF_Id DEFAULT gen_random_uuid() NOT NULL,
    ChangeVersion      BIGINT           NOT NULL,
    CONSTRAINT PK_StudentDisciplineIncidentNonOffenderAssociation PRIMARY KEY  (ChangeVersion )
);

