-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [util].[Split]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[util].[Split]') AND (type = 'IF' OR type = 'FN' OR type = 'TF'))
DROP FUNCTION [util].[Split]
GO

PRINT N'Dropping [util].[EdFiPopulationAnalysis]'
GO
IF OBJECT_ID(N'[util].[EdFiPopulationAnalysis]', 'P') IS NOT NULL
DROP PROCEDURE [util].[EdFiPopulationAnalysis]
GO

PRINT N'Dropping [dbo].[sp_ssis_addlogentry]'
GO
IF OBJECT_ID(N'[dbo].[sp_ssis_addlogentry]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[sp_ssis_addlogentry]
GO

PRINT N'Dropping [util].[TeamCityIntegration]'
GO
IF OBJECT_ID(N'[util].[TeamCityIntegration]', 'P') IS NOT NULL
DROP PROCEDURE [util].[TeamCityIntegration]
GO

PRINT N'Dropping [util].[EdFiSanityCheck]'
GO
IF OBJECT_ID(N'[util].[EdFiSanityCheck]', 'P') IS NOT NULL
DROP PROCEDURE [util].[EdFiSanityCheck]
GO

PRINT N'Dropping [util].[DashboardAssociation]'
GO
IF OBJECT_ID(N'[util].[DashboardAssociation]', 'P') IS NOT NULL
DROP PROCEDURE [util].[DashboardAssociation]
GO

PRINT N'Dropping [util].[EdFiReportPersistence]'
GO
IF OBJECT_ID(N'[util].[EdFiReportPersistence]', 'P') IS NOT NULL
DROP PROCEDURE [util].[EdFiReportPersistence]
GO

PRINT N'Dropping [util].[EdFiExceptionEnhancement]'
GO
IF OBJECT_ID(N'[util].[EdFiExceptionEnhancement]', 'P') IS NOT NULL
DROP PROCEDURE [util].[EdFiExceptionEnhancement]
GO

PRINT N'Dropping [util].[BuildSummaryEmail]'
GO
IF OBJECT_ID(N'[util].[BuildSummaryEmail]', 'P') IS NOT NULL
DROP PROCEDURE [util].[BuildSummaryEmail]
GO