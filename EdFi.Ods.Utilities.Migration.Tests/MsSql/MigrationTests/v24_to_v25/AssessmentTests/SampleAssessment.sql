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
    FROM [edfi].[AcademicSubjectDescriptor]
    WHERE [AcademicSubjectDescriptorId] = @AcademicSubjectDescriptorId
)
BEGIN
    SET IDENTITY_INSERT [edfi].[Descriptor] ON

    INSERT [edfi].[Descriptor]([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description])
    VALUES (@AcademicSubjectDescriptorId, 'n/a', CONCAT('AcademicSubjectDescriptor-',@AcademicSubjectDescriptorId), 'n/a', 'n/a')

    INSERT [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId], [AcademicSubjectTypeId])
    VALUES (@AcademicSubjectDescriptorId, 1)

    SET IDENTITY_INSERT [edfi].[Descriptor] OFF
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
    FROM [edfi].[GradeLevelDescriptor]
    WHERE [GradeLevelDescriptorId] = @GradeLevelDescriptorId
)
BEGIN
    SET IDENTITY_INSERT [edfi].[Descriptor] ON

    INSERT [edfi].[Descriptor]([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description])
    VALUES (@GradeLevelDescriptorId, 'n/a', CONCAT('GradeLevelDescriptor-',@GradeLevelDescriptorId), 'n/a', 'n/a')

    INSERT [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId], [GradeLevelTypeId])
    VALUES (@GradeLevelDescriptorId, 1)

    SET IDENTITY_INSERT [edfi].[Descriptor] OFF
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

IF NOT EXISTS
(
    SELECT 1
    FROM [edfi].[AssessmentCategoryDescriptor]
    WHERE [AssessmentCategoryDescriptorId] = @DefaultSampleAssessmentCategoryDescriptor
)
BEGIN
    SET IDENTITY_INSERT [edfi].[Descriptor] ON

    INSERT [edfi].[Descriptor]([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description])
    VALUES (@DefaultSampleAssessmentCategoryDescriptor, 'n/a', 'Default AssessmentCategoryDescriptor', 'n/a', 'n/a')

    INSERT [edfi].[AssessmentCategoryDescriptor] ([AssessmentCategoryDescriptorId], [AssessmentCategoryTypeId])
    VALUES (@DefaultSampleAssessmentCategoryDescriptor, 1)

    SET IDENTITY_INSERT [edfi].[Descriptor] OFF
END

IF NOT EXISTS
(
    SELECT 1
    FROM [edfi].[AssessmentFamily]
    WHERE [AssessmentFamilyTitle] = @AssessmentFamilyTitle
)
BEGIN
    INSERT [edfi].[AssessmentFamily] ([AssessmentFamilyTitle], [Namespace])
    VALUES (@AssessmentFamilyTitle, @AssessmentFamilyNamespace)
END

IF NOT EXISTS
 (
     SELECT 1
     FROM [edfi].[SexType]
     WHERE [SexTypeId] = 1
 )
BEGIN
    SET IDENTITY_INSERT [edfi].[SexType] ON
    INSERT [edfi].[SexType] ([SexTypeId], [CodeValue], [Description], [ShortDescription])
    VALUES (1, 'n/a', 'n/a', 'n/a')
    SET IDENTITY_INSERT [edfi].[SexType] OFF
END

IF NOT EXISTS
(
    SELECT 1
    FROM [edfi].[Student]
    WHERE [StudentUSI] = 1
)
BEGIN
    SET IDENTITY_INSERT [edfi].[Student] ON
    INSERT [edfi].[Student] ([StudentUSI], [FirstName], [LastSurname], [BirthDate], [StudentUniqueId], [SexTypeId], [HispanicLatinoEthnicity])
    VALUES (1, 'n/a', 'n/a', GETDATE (), '1', 1, 1)
    SET IDENTITY_INSERT [edfi].[Student] OFF
END


INSERT [edfi].[Assessment]
    ([AssessmentTitle], [AssessedGradeLevelDescriptorId], [AssessmentCategoryDescriptorId], [AcademicSubjectDescriptorId], [Version], [Namespace], [AssessmentFamilyTitle], [CreateDate], [Id])
VALUES
    (@AssessmentTitle, @GradeLevelDescriptorId, @DefaultSampleAssessmentCategoryDescriptor, @AcademicSubjectDescriptorId, @AssessmentVersion, @Namespace, @AssessmentFamilyTitle, @CreateDate, @Id)

INSERT [edfi].[StudentAssessment]
    ([StudentUSI], [AssessmentTitle], [AcademicSubjectDescriptorId], [AssessedGradeLevelDescriptorId], [AdministrationDate], [Version], [CreateDate])
VALUES
    (1, @AssessmentTitle, @AcademicSubjectDescriptorId, @GradeLevelDescriptorId, '2000-01-01', @AssessmentVersion, @CreateDate),
    (1, @AssessmentTitle, @AcademicSubjectDescriptorId, @GradeLevelDescriptorId, '2000-01-02', @AssessmentVersion, @CreateDate)

