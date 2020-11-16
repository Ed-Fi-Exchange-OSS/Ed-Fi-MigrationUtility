-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Parent]'
GO
ALTER TABLE [edfi].[Parent] ADD CONSTRAINT [FK_Parent_SexType] FOREIGN KEY ([SexTypeId]) REFERENCES [edfi].[SexType] ([SexTypeId])
GO
