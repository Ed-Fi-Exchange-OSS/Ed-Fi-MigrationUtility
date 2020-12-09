-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]'
GO

CREATE TABLE [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]
(
[EducationOrganizationId] [int] NOT NULL,
[GraduationPlanTypeDescriptorId] [int] NOT NULL,
[GraduationSchoolYear] [smallint] NOT NULL,
[AssessmentIdentifier] [nvarchar] (60) NOT NULL,
[Namespace] [nvarchar] (255) NOT NULL,
[PerformanceLevelDescriptorId] [int] NOT NULL,
[AssessmentReportingMethodTypeId] [int] NOT NULL,
[MinimumScore] [nvarchar] (35) NULL,
[MaximumScore] [nvarchar] (35) NULL,
[ResultDatatypeTypeId] [int] NULL,
[CreateDate] [datetime] NOT NULL 
)
GO

INSERT [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]
(

[EducationOrganizationId],
[GraduationPlanTypeDescriptorId],
[GraduationSchoolYear],
[AssessmentIdentifier],
[Namespace],
[PerformanceLevelDescriptorId],
[AssessmentReportingMethodTypeId],
[MinimumScore],
[MaximumScore],
[ResultDatatypeTypeId],
[CreateDate]
)
SELECT
[EducationOrganizationId],
[GraduationPlanTypeDescriptorId],
[GraduationSchoolYear],
[AssessmentIdentifier],
[Namespace],
[PerformanceLevelDescriptorId],
[AssessmentReportingMethodTypeId],
[MinimumScore],
[MaximumScore],
[ResultDatatypeTypeId],
ISNULL([CreateDate],GETDATE())
FROM [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]
GO

PRINT N'Converting types to descriptors on [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'GraduationPlanRequiredAssessmentPerformanceLevel',
'edfi', 'AssessmentReportingMethodDescriptor',
'edfi', 'AssessmentReportingMethodType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'GraduationPlanRequiredAssessmentPerformanceLevel',
'edfi', 'ResultDatatypeTypeDescriptor',
'edfi', 'ResultDatatypeType'
GO

ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]
ALTER COLUMN [AssessmentReportingMethodDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]
DROP COLUMN
[AssessmentReportingMethodTypeId]
,[ResultDatatypeTypeId]
GO