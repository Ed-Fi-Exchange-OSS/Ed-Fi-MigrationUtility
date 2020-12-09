-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Student_PK] on [edfi].[Student]'
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [Student_PK] PRIMARY KEY CLUSTERED  ([StudentUSI])
GO

PRINT N'Creating index [UX_Student_Id] on [edfi].[Student]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Student_Id] ON [edfi].[Student] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_Student_CountryDescriptor] on [edfi].[Student]'
GO
CREATE NONCLUSTERED INDEX [FK_Student_CountryDescriptor] ON [edfi].[Student] ([BirthCountryDescriptorId])
GO

PRINT N'Creating index [FK_Student_SexDescriptor] on [edfi].[Student]'
GO
CREATE NONCLUSTERED INDEX [FK_Student_SexDescriptor] ON [edfi].[Student] ([BirthSexDescriptorId])
GO

PRINT N'Creating index [FK_Student_StateAbbreviationDescriptor] on [edfi].[Student]'
GO
CREATE NONCLUSTERED INDEX [FK_Student_StateAbbreviationDescriptor] ON [edfi].[Student] ([BirthStateAbbreviationDescriptorId])
GO

PRINT N'Creating index [FK_Student_CitizenshipStatusDescriptor] on [edfi].[Student]'
GO
CREATE NONCLUSTERED INDEX [FK_Student_CitizenshipStatusDescriptor] ON [edfi].[Student] ([CitizenshipStatusDescriptorId])
GO

PRINT N'Creating index [Student_UI_StudentUniqueId] on [edfi].[Student]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [Student_UI_StudentUniqueId] ON [edfi].[Student] ([StudentUniqueId])
GO

PRINT N'Adding constraints to [edfi].[Student]'
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [Student_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [Student_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [Student_DF_Id] DEFAULT (newid()) FOR [Id]
GO
