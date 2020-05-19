-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

INSERT INTO [interop].[OperationalContext] ([OperationalContextUri], [DisplayName], [OrganizationName]) 
VALUES ('uri://ed-fi-api-host.org', 'Default', 'Ed-Fi')
GO

MERGE [interop].[OperationalContextDescriptorUsage] as [TARGET]
--Exclude descriptors considered to be vendor managed from the operational context
USING (  
    SELECT [d].* FROM [edfi].[Descriptor] [d]
    WHERE [d].[DescriptorId] NOT IN (
        SELECT AccommodationDescriptorId FROM [edfi].[AccommodationDescriptor]
        UNION SELECT AssessmentPeriodDescriptorId FROM [edfi].[AssessmentPeriodDescriptor]
        UNION SELECT CompetencyLevelDescriptorId FROM [edfi].[CompetencyLevelDescriptor]
        UNION SELECT DiagnosisDescriptorId FROM [edfi].[DiagnosisDescriptor]
        UNION SELECT PerformanceLevelDescriptorId FROM [edfi].[PerformanceLevelDescriptor])) AS [SOURCE]
ON ([TARGET].[DescriptorId] = [SOURCE].[DescriptorId])
WHEN NOT MATCHED BY TARGET THEN
    INSERT (OperationalContextUri, DescriptorId)
    VALUES ('uri://ed-fi-api-host.org', [SOURCE].[DescriptorId]);