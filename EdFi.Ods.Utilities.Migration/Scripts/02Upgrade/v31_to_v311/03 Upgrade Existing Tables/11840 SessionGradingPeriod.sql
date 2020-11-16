-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[SessionGradingPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SessionGradingPeriod] DROP CONSTRAINT [SessionGradingPeriod_DF_CreateDate];


GO
PRINT N'Altering [edfi].[SessionGradingPeriod]...';


GO
ALTER TABLE [edfi].[SessionGradingPeriod] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[SessionGradingPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SessionGradingPeriod]
    ADD CONSTRAINT [SessionGradingPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
