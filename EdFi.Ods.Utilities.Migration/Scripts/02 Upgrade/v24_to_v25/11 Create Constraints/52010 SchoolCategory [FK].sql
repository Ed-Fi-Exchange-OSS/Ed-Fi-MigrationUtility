-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[SchoolCategory]'
GO
ALTER TABLE [edfi].[SchoolCategory] ADD CONSTRAINT [FK_SchoolCategory_School] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[School] ([SchoolId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[SchoolCategory] ADD CONSTRAINT [FK_SchoolCategory_SchoolCategoryType] FOREIGN KEY ([SchoolCategoryTypeId]) REFERENCES [edfi].[SchoolCategoryType] ([SchoolCategoryTypeId])
GO
