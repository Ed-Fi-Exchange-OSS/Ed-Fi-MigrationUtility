-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

INSERT INTO edfi.Descriptor ([Namespace], CodeValue, ShortDescription, [Description])
VALUES ('uri://ed-fi.org/QuestionFormDescriptor', 'Checkbox', 'Checkbox', 'Checkbox');

INSERT INTO edfi.Descriptor ([Namespace], CodeValue, ShortDescription, [Description])
VALUES ('uri://ed-fi.org/QuestionFormDescriptor', 'Dropdown', 'Dropdown', 'Dropdown');

INSERT INTO edfi.QuestionFormDescriptor
SELECT DescriptorId FROM edfi.Descriptor
WHERE [Namespace] = 'uri://ed-fi.org/QuestionFormDescriptor';

INSERT INTO edfi.Descriptor ([Namespace], CodeValue, ShortDescription, [Description])
VALUES ('uri://ed-fi.org/SourceSystemDescriptor', 'District', 'District', 'District');

INSERT INTO edfi.Descriptor ([Namespace], CodeValue, ShortDescription, [Description])
VALUES ('uri://ed-fi.org/SourceSystemDescriptor', 'School', 'School', 'School');

INSERT INTO edfi.SourceSystemDescriptor
SELECT DescriptorId FROM edfi.Descriptor
WHERE [Namespace] = 'uri://ed-fi.org/SourceSystemDescriptor';

INSERT INTO edfi.Descriptor ([Namespace], CodeValue, ShortDescription, [Description])
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'Applicant', 'Applicant', 'Applicant');

INSERT INTO edfi.Descriptor ([Namespace], CodeValue, ShortDescription, [Description])
VALUES ('uri://ed-fi.org/SurveyCategoryDescriptor', 'Community', 'Community', 'Community');

INSERT INTO edfi.SurveyCategoryDescriptor
SELECT DescriptorId FROM edfi.Descriptor
WHERE [Namespace] = 'uri://ed-fi.org/SurveyCategoryDescriptor';

INSERT INTO edfi.Descriptor ([Namespace], CodeValue, ShortDescription, [Description])
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Adult Education', 'Adult Education', 'Adult Education');

INSERT INTO edfi.Descriptor ([Namespace], CodeValue, ShortDescription, [Description])
VALUES ('uri://ed-fi.org/SurveyLevelDescriptor', 'Eighth grade', 'Eighth grade', 'Eighth grade');

INSERT INTO edfi.SurveyLevelDescriptor
SELECT DescriptorId FROM edfi.Descriptor
WHERE [Namespace] = 'uri://ed-fi.org/SurveyLevelDescriptor';
