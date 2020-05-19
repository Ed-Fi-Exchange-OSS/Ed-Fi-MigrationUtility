-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationStudentIndicator]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicator]
(
[EducationOrganizationId] [int] NOT NULL,
[IndicatorName] [nvarchar] (60) NOT NULL,
[StudentUSI] [int] NOT NULL,
[IndicatorGroup] [nvarchar] (60) NULL,
[Indicator] [nvarchar] (35) NOT NULL,
[DesignatedBy] [nvarchar] (60) NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationStudentIndicator]
(
[EducationOrganizationId],
[IndicatorName],
[StudentUSI],
[IndicatorGroup],
[Indicator],
[DesignatedBy],
[CreateDate]
)
SELECT
a.[EducationOrganizationId],
i.[IndicatorName],
i.[StudentUSI],
i.[IndicatorGroup],
i.[Indicator],
i.[DesignatedBy],
ISNULL(i.[CreateDate], GETDATE())
FROM [edfi].[StudentIndicator] i
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
ON a.[StudentUSI] = i.[StudentUSI]
GO

INSERT [edfi].[StudentEducationOrganizationAssociationStudentIndicator]
(
[EducationOrganizationId],
[IndicatorName],
[StudentUSI],
[Indicator],
[CreateDate]
)
SELECT
a.[EducationOrganizationId],
'VisualLearning',
s.[StudentUSI],
CONVERT([nvarchar](35), s.[VisualLearning]),
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentLearningStyle] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
ON a.[StudentUSI] = s.[StudentUSI]
WHERE NOT EXISTS (SELECT 1 FROM [edfi].[StudentIndicator] WHERE [StudentUSI] = s.[StudentUSI] AND [IndicatorName] = 'VisualLearning')
GO

INSERT [edfi].[StudentEducationOrganizationAssociationStudentIndicator]
(
[EducationOrganizationId],
[IndicatorName],
[StudentUSI],
[Indicator],
[CreateDate]
)
SELECT
a.[EducationOrganizationId],
'AuditoryLearning',
s.[StudentUSI],
CONVERT([nvarchar](35), s.[AuditoryLearning]),
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentLearningStyle] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
ON a.[StudentUSI] = s.[StudentUSI]
WHERE NOT EXISTS (SELECT 1 FROM [edfi].[StudentIndicator] WHERE [StudentUSI] = s.[StudentUSI] AND [IndicatorName] = 'AuditoryLearning')
GO

INSERT [edfi].[StudentEducationOrganizationAssociationStudentIndicator]
(
[EducationOrganizationId],
[IndicatorName],
[StudentUSI],
[Indicator],
[CreateDate]
)
SELECT
a.[EducationOrganizationId],
'TactileLearning',
s.[StudentUSI],
CONVERT([nvarchar](35), s.[TactileLearning]),
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentLearningStyle] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
ON a.[StudentUSI] = s.[StudentUSI]
WHERE NOT EXISTS (SELECT 1 FROM [edfi].[StudentIndicator] WHERE [StudentUSI] = s.[StudentUSI] AND [IndicatorName] = 'TactileLearning')
GO
