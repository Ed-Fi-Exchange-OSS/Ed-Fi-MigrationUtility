-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.



INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/QuestionFormDescriptor', 'Checkbox', 'Checkbox', 'Checkbox');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/QuestionFormDescriptor', 'Dropdown', 'Dropdown', 'Dropdown');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/QuestionFormDescriptor', 'Matrix of numeric ratings', 'Matrix of numeric ratings', 'Matrix of numeric ratings');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/QuestionFormDescriptor', 'Radio box', 'Radio box', 'Radio box');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/QuestionFormDescriptor', 'Matrix of dropdowns', 'Matrix of dropdowns', 'Matrix of dropdowns');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/QuestionFormDescriptor', 'Ranking', 'Ranking', 'Ranking');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/QuestionFormDescriptor', 'Textbox', 'Textbox', 'Textbox');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/QuestionFormDescriptor', 'Matrix of textboxes', 'Matrix of textboxes', 'Matrix of textboxes');

INSERT INTO edfi.QuestionFormDescriptor
SELECT DescriptorId FROM edfi.Descriptor
WHERE Namespace = 'uri://ed-fi.org/QuestionFormDescriptor';

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SourceSystemDescriptor', 'District', 'District', 'District');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SourceSystemDescriptor', 'School', 'School', 'School');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SourceSystemDescriptor', 'State', 'State', 'State');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SourceSystemDescriptor', 'Federal', 'Federal', 'Federal');

INSERT INTO edfi.SourceSystemDescriptor
SELECT DescriptorId FROM edfi.Descriptor
WHERE Namespace = 'uri://ed-fi.org/SourceSystemDescriptor';

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'Applicant', 'Applicant', 'Applicant');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'Administrator', 'Administrator', 'Administrator');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'District', 'District', 'District');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'Community', 'Community', 'Community');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'Other', 'Other', 'Other');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'Exit', 'Exit', 'Exiting staff');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'Parent', 'Parent', 'Parent');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'Principal', 'Principal', 'Principal');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'Student', 'Student', 'Student');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'Teacher', 'Teacher', 'Teacher');

INSERT INTO edfi.SurveyCategoryDescriptor
SELECT DescriptorId FROM edfi.Descriptor
WHERE Namespace = 'uri://ed-fi.org/SurveyCategoryDescriptor';
INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Early Education', 'Early Education', 'Early Education');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Eighth grade', 'Eighth grade', 'Eighth grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Eleventh grade', 'Eleventh grade', 'Eleventh grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Adult Education', 'Adult Education', 'Adult Education');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'First grade', 'First grade', 'First grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Fourth grade', 'Fourth grade', 'Fourth grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Infant/toddler', 'Infant/toddler', 'Infant/toddler');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Fifth grade', 'Fifth grade', 'Fifth grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Grade 13', 'Grade 13', 'Grade 13');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Kindergarten', 'Kindergarten', 'Kindergarten');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Postsecondary', 'Postsecondary', 'Postsecondary');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Other', 'Other', 'Other');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Ninth grade', 'Ninth grade', 'Ninth grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Second grade', 'Second grade', 'Second grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Seventh grade', 'Seventh grade', 'Seventh grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Preschool/Prekindergarten', 'Preschool/Prekindergarten', 'Preschool/Prekindergarten');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Sixth grade', 'Sixth grade', 'Sixth grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Twelfth grade', 'Twelfth grade', 'Twelfth grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Third grade', 'Third grade', 'Third grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Tenth grade', 'Tenth grade', 'Tenth grade');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Master''s', 'Master''s', 'Master''s');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'No grade level', 'No grade level', 'No grade level');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Ungraded', 'Ungraded', 'Ungraded');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Professional Certification', 'Professional Certification', 'Professional Certification');

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Undergraduate', 'Undergraduate', 'Undergraduate');
INSERT INTO edfi.SurveyLevelDescriptor
SELECT DescriptorId FROM edfi.Descriptor
WHERE Namespace = 'uri://ed-fi.org/SurveyLevelDescriptor';
