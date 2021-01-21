-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.


ALTER TABLE edfi.Person
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.Survey
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveyCourseAssociation
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveyProgramAssociation
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveyQuestion
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveyQuestionResponse
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveyResponse
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveyResponseEducationOrganizationTargetAssociation
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveyResponseStaffTargetAssociation
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveySection
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveySectionAssociation
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveySectionResponse
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveySectionResponseEducationOrganizationTargetAssociation
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE edfi.SurveySectionResponseStaffTargetAssociation
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

CREATE INDEX IF NOT EXISTS UX_6007db_ChangeVersion ON edfi.Person(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_211bb3_ChangeVersion ON edfi.Survey(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_9f1246_ChangeVersion ON edfi.SurveyCourseAssociation(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_e3e5a4_ChangeVersion ON edfi.SurveyProgramAssociation(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_1bb88c_ChangeVersion ON edfi.SurveyQuestion(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_eddd02_ChangeVersion ON edfi.SurveyQuestionResponse(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_8d6383_ChangeVersion ON edfi.SurveyResponse(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_b2bd0a_ChangeVersion ON edfi.SurveyResponseEducationOrganizationTargetAssociation(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_f9457e_ChangeVersion ON edfi.SurveyResponseStaffTargetAssociation(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_e5572a_ChangeVersion ON edfi.SurveySection(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_c16804_ChangeVersion ON edfi.SurveySectionAssociation(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_2189c3_ChangeVersion ON edfi.SurveySectionResponse(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_730be1_ChangeVersion ON edfi.SurveySectionResponseEducationOrganizationTargetAssociation(ChangeVersion);

CREATE INDEX IF NOT EXISTS UX_39073d_ChangeVersion ON edfi.SurveySectionResponseStaffTargetAssociation(ChangeVersion);