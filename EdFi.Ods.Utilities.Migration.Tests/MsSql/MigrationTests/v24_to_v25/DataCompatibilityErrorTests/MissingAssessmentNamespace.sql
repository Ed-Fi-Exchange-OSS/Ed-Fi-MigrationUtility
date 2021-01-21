-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS
 (
     SELECT 1
     FROM [edfi].[AcademicSubjectType]
     WHERE [AcademicSubjectTypeId] = 1
 )
BEGIN
    SET IDENTITY_INSERT [edfi].[AcademicSubjectType] ON
    INSERT [edfi].[AcademicSubjectType] ([AcademicSubjectTypeId], [CodeValue], [Description], [ShortDescription])
    VALUES (1, 'n/a', 'n/a', 'n/a')
    SET IDENTITY_INSERT [edfi].[AcademicSubjectType] OFF
END

IF NOT EXISTS
(
    SELECT 1
    FROM [edfi].[GradeLevelType]
    WHERE [GradeLevelTypeId] = 1
)
BEGIN
    SET IDENTITY_INSERT [edfi].[GradeLevelType] ON
    INSERT [edfi].[GradeLevelType] ([GradeLevelTypeId], [CodeValue], [Description], [ShortDescription])
    VALUES (1, 'n/a', 'n/a', 'n/a')
    SET IDENTITY_INSERT [edfi].[GradeLevelType] OFF
END


IF NOT EXISTS
 (
     SELECT 1
     FROM [edfi].[AssessmentCategoryType]
     WHERE [AssessmentCategoryTypeId] = 1
 )
BEGIN
    SET IDENTITY_INSERT [edfi].[AssessmentCategoryType] ON
    INSERT [edfi].[AssessmentCategoryType] ([AssessmentCategoryTypeId], [CodeValue], [Description], [ShortDescription])
    VALUES (1, 'n/a', 'n/a', 'n/a')
    SET IDENTITY_INSERT [edfi].[AssessmentCategoryType] OFF
END

SET IDENTITY_INSERT [edfi].[Descriptor] ON
INSERT [edfi].[Descriptor]([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description])
VALUES (1, 'n/a', 'AcademicSubjectDescriptor', 'n/a', 'n/a')
INSERT [edfi].[Descriptor]([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description])
VALUES (2, 'n/a','GradeLevelDescriptor', 'n/a', 'n/a')
INSERT [edfi].[Descriptor]([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description])
VALUES (3, 'n/a', 'AssessmentCategoryDescriptor', 'n/a', 'n/a')
SET IDENTITY_INSERT [edfi].[Descriptor] OFF

INSERT [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId], [AcademicSubjectTypeId])
VALUES (1, 1)
INSERT [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId], [GradeLevelTypeId])
VALUES (2, 1)
INSERT [edfi].[AssessmentCategoryDescriptor] ([AssessmentCategoryDescriptorId], [AssessmentCategoryTypeId])
VALUES (3, 1)


INSERT [edfi].[Assessment]
    ([AssessmentTitle], [AssessedGradeLevelDescriptorId], [AssessmentCategoryDescriptorId], [AcademicSubjectDescriptorId], [Version], [Namespace])
VALUES
    ('Compatibility Error: No Namespace', 2, 3, 1, 1, null)
