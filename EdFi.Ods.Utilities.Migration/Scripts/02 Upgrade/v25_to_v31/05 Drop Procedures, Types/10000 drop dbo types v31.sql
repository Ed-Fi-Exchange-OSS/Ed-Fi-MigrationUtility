-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF type_id('dbo.UniqueIdentifierTable') IS NOT NULL
        DROP TYPE [dbo].[UniqueIdentifierTable]

IF type_id('dbo.IntTable') IS NOT NULL
        DROP TYPE [dbo].[IntTable]