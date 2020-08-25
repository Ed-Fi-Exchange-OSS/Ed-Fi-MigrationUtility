-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationIdToCommunityOrganizationId]'))
    DROP VIEW auth.EducationOrganizationIdToCommunityOrganizationId;
GO

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[EducationOrganizationIdToCommunityProviderId]'))
    DROP VIEW auth.EducationOrganizationIdToCommunityProviderId;
GO