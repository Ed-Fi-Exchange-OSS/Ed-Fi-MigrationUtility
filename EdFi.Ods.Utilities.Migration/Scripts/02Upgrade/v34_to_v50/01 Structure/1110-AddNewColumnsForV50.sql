-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

--  Alter Table [edfi].[Parent]---
ALTER TABLE [edfi].[Parent]
    ADD [PersonId] [NVARCHAR](32) NULL,
        [SourceSystemDescriptorId] INT NULL;
GO

--  Alter Table [edfi].[Staff]---
ALTER TABLE [edfi].[Staff]
    ADD [PersonId] [NVARCHAR](32) NULL,
        [SourceSystemDescriptorId] INT NULL;
GO

--  Alter Table [edfi].[Student]---
ALTER TABLE [edfi].[Student]
    ADD [PersonId] [NVARCHAR](32) NULL,
        [SourceSystemDescriptorId] INT NULL;
GO