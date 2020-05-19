-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[LocalEducationAgencyFederalFunds]'
GO

ALTER TABLE [edfi].[LocalEducationAgencyFederalFunds] ADD
[InnovativeDollarsSpentStrategicPriorities] [money] NULL
GO

UPDATE [edfi].[LocalEducationAgencyFederalFunds]
SET [InnovativeDollarsSpentStrategicPriorities] = [InnovativeDollarsSpentOnStrategicPriorities]
GO

ALTER TABLE [edfi].[LocalEducationAgencyFederalFunds] DROP
COLUMN [InnovativeDollarsSpentOnStrategicPriorities],
COLUMN [Id],
COLUMN [LastModifiedDate]
GO
