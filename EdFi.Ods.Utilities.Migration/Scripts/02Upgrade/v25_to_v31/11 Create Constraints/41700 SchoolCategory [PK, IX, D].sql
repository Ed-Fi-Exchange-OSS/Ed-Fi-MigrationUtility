-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SchoolCategory_PK] on [edfi].[SchoolCategory]'
GO
ALTER TABLE [edfi].[SchoolCategory] ADD CONSTRAINT [SchoolCategory_PK] PRIMARY KEY CLUSTERED  ([SchoolCategoryDescriptorId], [SchoolId])
GO

PRINT N'Creating index [FK_SchoolCategory_SchoolCategoryDescriptor] on [edfi].[SchoolCategory]'
GO
CREATE NONCLUSTERED INDEX [FK_SchoolCategory_SchoolCategoryDescriptor] ON [edfi].[SchoolCategory] ([SchoolCategoryDescriptorId])
GO

PRINT N'Creating index [FK_SchoolCategory_School] on [edfi].[SchoolCategory]'
GO
CREATE NONCLUSTERED INDEX [FK_SchoolCategory_School] ON [edfi].[SchoolCategory] ([SchoolId])
GO

PRINT N'Adding constraints to [edfi].[SchoolCategory]'
GO
ALTER TABLE [edfi].[SchoolCategory] ADD CONSTRAINT [SchoolCategory_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
