-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[LearningStandardAcademicSubject]'
GO

CREATE TABLE [edfi].[LearningStandardAcademicSubject] (
    [AcademicSubjectDescriptorId] [INT] NOT NULL,
    [LearningStandardId] [NVARCHAR](60) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL    
)
GO

INSERT INTO [edfi].[LearningStandardAcademicSubject] ([AcademicSubjectDescriptorId], [LearningStandardId], [CreateDate])
SELECT [AcademicSubjectDescriptorId], [LearningStandardId], [CreateDate]
FROM [edfi].[LearningStandard]
GO