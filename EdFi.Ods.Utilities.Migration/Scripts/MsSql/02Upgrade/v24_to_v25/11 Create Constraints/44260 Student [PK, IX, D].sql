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
PRINT N'Creating index [FK_Student_StateAbbreviationType] on [edfi].[Student]'
GO
CREATE NONCLUSTERED INDEX [FK_Student_StateAbbreviationType] ON [edfi].[Student] ([BirthStateAbbreviationTypeId])
GO
PRINT N'Creating index [FK_Student_CitizenshipStatusType] on [edfi].[Student]'
GO
CREATE NONCLUSTERED INDEX [FK_Student_CitizenshipStatusType] ON [edfi].[Student] ([CitizenshipStatusTypeId])
GO
PRINT N'Creating index [FK_Student_LimitedEnglishProficiencyDescriptor] on [edfi].[Student]'
GO
CREATE NONCLUSTERED INDEX [FK_Student_LimitedEnglishProficiencyDescriptor] ON [edfi].[Student] ([LimitedEnglishProficiencyDescriptorId])
GO
PRINT N'Creating index [FK_Student_OldEthnicityType] on [edfi].[Student]'
GO
CREATE NONCLUSTERED INDEX [FK_Student_OldEthnicityType] ON [edfi].[Student] ([OldEthnicityTypeId])
GO
PRINT N'Creating index [FK_Student_SchoolFoodServicesEligibilityDescriptor] on [edfi].[Student]'
GO
CREATE NONCLUSTERED INDEX [FK_Student_SchoolFoodServicesEligibilityDescriptor] ON [edfi].[Student] ([SchoolFoodServicesEligibilityDescriptorId])
GO
PRINT N'Creating index [FK_Student_SexType] on [edfi].[Student]'
GO
CREATE NONCLUSTERED INDEX [FK_Student_SexType] ON [edfi].[Student] ([SexTypeId])
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

