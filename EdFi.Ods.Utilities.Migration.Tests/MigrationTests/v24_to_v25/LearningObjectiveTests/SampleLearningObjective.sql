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
    FROM [edfi].[AcademicSubjectDescriptor]
    WHERE (@ParentAcademicSubjectDescriptorId IS NULL) OR (@ParentAcademicSubjectDescriptorId = @InvalidDescriptorId) OR ([AcademicSubjectDescriptorId] = @ParentAcademicSubjectDescriptorId)
)
BEGIN
    SET IDENTITY_INSERT [edfi].[Descriptor] ON

    INSERT [edfi].[Descriptor]([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description])
    VALUES (@ParentAcademicSubjectDescriptorId, 'n/a', CONCAT('AcademicSubjectDescriptor-',@ParentAcademicSubjectDescriptorId), 'n/a', 'n/a')

    INSERT [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId], [AcademicSubjectTypeId])
    VALUES (@ParentAcademicSubjectDescriptorId, 1)

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
    WHERE [GradeLevelDescriptorId] = @ObjectiveGradeLevelDescriptorId
)
BEGIN
    SET IDENTITY_INSERT [edfi].[Descriptor] ON

    INSERT [edfi].[Descriptor]([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description])
    VALUES (@ObjectiveGradeLevelDescriptorId, 'n/a', CONCAT('GradeLevelDescriptor-',@ObjectiveGradeLevelDescriptorId), 'n/a', 'n/a')

    INSERT [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId], [GradeLevelTypeId])
    VALUES (@ObjectiveGradeLevelDescriptorId, 1)

    SET IDENTITY_INSERT [edfi].[Descriptor] OFF
END

IF NOT EXISTS
(
    SELECT 1
    FROM [edfi].[GradeLevelDescriptor]
    WHERE (@ParentObjectiveGradeLevelDescriptorId = @InvalidDescriptorId) OR (@ParentObjectiveGradeLevelDescriptorId IS NULL) OR ([GradeLevelDescriptorId] = @ParentObjectiveGradeLevelDescriptorId)
)
BEGIN
    SET IDENTITY_INSERT [edfi].[Descriptor] ON

    INSERT [edfi].[Descriptor]([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description])
    VALUES (@ParentObjectiveGradeLevelDescriptorId, 'n/a', CONCAT('GradeLevelDescriptor-',@ParentObjectiveGradeLevelDescriptorId), 'n/a', 'n/a')

    INSERT [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId], [GradeLevelTypeId])
    VALUES (@ParentObjectiveGradeLevelDescriptorId, 1)

    SET IDENTITY_INSERT [edfi].[Descriptor] OFF
END

INSERT [edfi].[LearningObjective] 
(
    [Objective],
    [AcademicSubjectDescriptorId],
    [ObjectiveGradeLevelDescriptorId],
    [LearningObjectiveId],
    [Description],
    [ParentObjective],
    [ParentAcademicSubjectDescriptorId],
    [ParentObjectiveGradeLevelDescriptorId],
    [Namespace],
    [CreateDate]
)
VALUES
(
    @Objective,
    @AcademicSubjectDescriptorId,
    @ObjectiveGradeLevelDescriptorId,
    @LearningObjectiveId,
    @Description,
    @ParentObjective,
    @ParentAcademicSubjectDescriptorId,
    @ParentObjectiveGradeLevelDescriptorId,
    @Namespace,
    @CreateDate
)