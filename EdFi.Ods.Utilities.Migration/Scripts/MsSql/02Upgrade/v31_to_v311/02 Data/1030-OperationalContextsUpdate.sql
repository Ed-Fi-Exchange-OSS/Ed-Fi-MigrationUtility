-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- add previously excluded descriptors
MERGE [interop].[OperationalContextDescriptorUsage] as [TARGET]
USING (
    SELECT [d].* FROM [edfi].[Descriptor] [d]
    WHERE [d].[DescriptorId] IN (
        SELECT [CompetencyLevelDescriptorId] FROM [edfi].[CompetencyLevelDescriptor]
        UNION SELECT [DiagnosisDescriptorId] FROM [edfi].[DiagnosisDescriptor])) AS [SOURCE]
ON ([TARGET].[DescriptorId] = [SOURCE].[DescriptorId])
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([OperationalContextUri], [DescriptorId])
    VALUES ('uri://ed-fi-api-host.org', [SOURCE].[DescriptorId]);
GO

-- remove previously included descriptors
MERGE [interop].[OperationalContextDescriptorUsage] as [TARGET]
USING (
    SELECT [d].* FROM [edfi].[Descriptor] [d]
    WHERE [d].[DescriptorId] IN (
        SELECT [AssessmentReportingMethodDescriptorId] FROM [edfi].[AssessmentReportingMethodDescriptor])) AS [SOURCE]
ON ([TARGET].[DescriptorId] = [SOURCE].[DescriptorId])
WHEN MATCHED THEN DELETE;
GO
