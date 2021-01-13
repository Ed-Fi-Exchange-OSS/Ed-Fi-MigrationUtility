-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- Add RecordOwnership columns for newly added tables
ALTER TABLE edfi.Person
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.Survey
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveyCourseAssociation
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveyProgramAssociation
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveyQuestion
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveyQuestionResponse
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveyResponse
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveyResponseEducationOrganizationTargetAssociation
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveyResponseStaffTargetAssociation
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveySection
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveySectionAssociation
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveySectionResponse
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveySectionResponseEducationOrganizationTargetAssociation
    ADD CreatedByOwnershipTokenId SMALLINT NULL;

ALTER TABLE edfi.SurveySectionResponseStaffTargetAssociation
    ADD CreatedByOwnershipTokenId SMALLINT NULL;