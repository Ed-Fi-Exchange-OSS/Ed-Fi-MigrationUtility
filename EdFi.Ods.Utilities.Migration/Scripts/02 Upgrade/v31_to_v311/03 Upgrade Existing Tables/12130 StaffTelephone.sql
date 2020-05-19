-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[StaffTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffTelephone] DROP CONSTRAINT [StaffTelephone_DF_CreateDate];


GO
PRINT N'Altering [edfi].[StaffTelephone]...';


GO
ALTER TABLE [edfi].[StaffTelephone] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[StaffTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffTelephone]
    ADD CONSTRAINT [StaffTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
