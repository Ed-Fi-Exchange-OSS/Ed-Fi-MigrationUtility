-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentOtherName_PK] on [edfi].[StudentOtherName]'
GO
ALTER TABLE [edfi].[StudentOtherName] ADD CONSTRAINT [StudentOtherName_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [OtherNameTypeId])
GO
PRINT N'Creating index [FK_StudentOtherName_OtherNameType] on [edfi].[StudentOtherName]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentOtherName_OtherNameType] ON [edfi].[StudentOtherName] ([OtherNameTypeId])
GO
PRINT N'Creating index [FK_StudentOtherName_Student] on [edfi].[StudentOtherName]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentOtherName_Student] ON [edfi].[StudentOtherName] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentOtherName]'
GO
ALTER TABLE [edfi].[StudentOtherName] ADD CONSTRAINT [StudentOtherName_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

