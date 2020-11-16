-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[InterventionDiagnosis_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionDiagnosis] DROP CONSTRAINT [InterventionDiagnosis_DF_CreateDate];


GO
PRINT N'Altering [edfi].[InterventionDiagnosis]...';


GO
ALTER TABLE [edfi].[InterventionDiagnosis] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[InterventionDiagnosis_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionDiagnosis]
    ADD CONSTRAINT [InterventionDiagnosis_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
