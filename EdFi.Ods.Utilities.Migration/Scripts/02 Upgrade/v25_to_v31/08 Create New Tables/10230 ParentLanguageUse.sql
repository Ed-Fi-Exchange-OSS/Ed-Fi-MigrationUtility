-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[ParentLanguageUse]'
GO

CREATE TABLE [edfi].[ParentLanguageUse]
(
[LanguageDescriptorId] [int] NOT NULL,
[LanguageUseDescriptorId] [int] NOT NULL,
[ParentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

