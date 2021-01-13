-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

UPDATE edfi.StaffCredential SET StateOfIssueStateAbbreviationTypeId = 1 WHERE StateOfIssueStateAbbreviationTypeId IS NULL;

INSERT edfi.StudentEducationOrganizationAssociation
(
    StudentUSI,
    EducationOrganizationId,
    ResponsibilityDescriptorId
)
VALUES
(1, 255901, 618),
(962, 255901, 618);

UPDATE edfi.Assessment
SET Namespace = 'uri://ed-fi.org'
WHERE Namespace IS NULL;

UPDATE edfi.LearningObjective
SET Namespace = 'http://ed-fi.org/LearningObjective/LearningObjective.xml';

