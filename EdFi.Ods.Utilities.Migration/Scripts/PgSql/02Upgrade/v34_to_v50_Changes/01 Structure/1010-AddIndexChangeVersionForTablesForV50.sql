-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE SEQUENCE IF NOT EXISTS changes.ChangeVersionSequence  START  WITH  1  ;


ALTER TABLE edfi.Person
ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

CREATE  INDEX UX_Person_ChangeVersion
ON edfi.Person(ChangeVersion ASC);


ALTER TABLE edfi.Survey
ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE INDEX UX_Survey_ChangeVersion
 ON edfi.Survey(ChangeVersion ASC);


-- edfi.SurveyCourseAssociation---
ALTER TABLE edfi.SurveyCourseAssociation
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX UX_SurveyCourseAssociation_ChangeVersion
    ON edfi.SurveyCourseAssociation(ChangeVersion ASC);


-- edfi.SurveyProgramAssociation---
ALTER TABLE edfi.SurveyProgramAssociation
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX UX_SurveyProgramAssociation_ChangeVersion
    ON edfi.SurveyProgramAssociation(ChangeVersion ASC);


-- edfi.SurveyQuestion---
ALTER TABLE edfi.SurveyQuestion
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX UX_SurveyQuestion_ChangeVersion
    ON edfi.SurveyQuestion(ChangeVersion ASC);


-- edfi.SurveyQuestionResponse---
ALTER TABLE edfi.SurveyQuestionResponse
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX UX_SurveyQuestionResponse_ChangeVersion
    ON edfi.SurveyQuestionResponse(ChangeVersion ASC);


-- edfi.SurveyResponse---
ALTER TABLE edfi.SurveyResponse
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX UX_SurveyResponse_ChangeVersion
    ON edfi.SurveyResponse(ChangeVersion ASC);


-- edfi.SurveyResponse---
ALTER TABLE edfi.SurveyResponseEducationOrganizationTargetAssociation
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX UX_SurveyResponseEducationOrganizationTargetAssociation_ChangeVersion
    ON edfi.SurveyResponseEducationOrganizationTargetAssociation(ChangeVersion ASC);


-- edfi.SurveyResponseStaffTargetAssociation---
ALTER TABLE edfi.SurveyResponseStaffTargetAssociation
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;



CREATE  INDEX UX_SurveyResponseStaffTargetAssociation_ChangeVersion
    ON edfi.SurveyResponseStaffTargetAssociation(ChangeVersion ASC);


-- edfi.SurveySection---
ALTER TABLE edfi.SurveySection
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX UX_SurveySection_ChangeVersion
    ON edfi.SurveySection(ChangeVersion ASC);


-- edfi.SurveySectionAssociation---
ALTER TABLE edfi.SurveySectionAssociation
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX UX_SurveySectionAssociation_ChangeVersion
    ON edfi.SurveySectionAssociation(ChangeVersion ASC);


-- edfi.SurveySectionResponse---
ALTER TABLE edfi.SurveySectionResponse
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX UX_SurveySectionResponse_ChangeVersion
    ON edfi.SurveySectionResponse(ChangeVersion ASC);


-- edfi.SurveySectionResponseEducationOrganizationTargetAssociation---
ALTER TABLE edfi.SurveySectionResponseEducationOrganizationTargetAssociation
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX UX_SurveySectionResponseEduOrgTargetAssociation_ChangeVersion
    ON edfi.SurveySectionResponseEducationOrganizationTargetAssociation(ChangeVersion ASC);


-- edfi.SurveySectionResponseStaffTargetAssociation---
ALTER TABLE edfi.SurveySectionResponseStaffTargetAssociation
    ADD ChangeVersion BIGINT  DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX UX_SurveySectionResponseStaffTargetAssociation_ChangeVersion
    ON edfi.SurveySectionResponseStaffTargetAssociation(ChangeVersion ASC);
