-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Student]'
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [FK_Student_CitizenshipStatusType] FOREIGN KEY ([CitizenshipStatusTypeId]) REFERENCES [edfi].[CitizenshipStatusType] ([CitizenshipStatusTypeId])
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [FK_Student_CountryDescriptor] FOREIGN KEY ([BirthCountryDescriptorId]) REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [FK_Student_LimitedEnglishProficiencyDescriptor] FOREIGN KEY ([LimitedEnglishProficiencyDescriptorId]) REFERENCES [edfi].[LimitedEnglishProficiencyDescriptor] ([LimitedEnglishProficiencyDescriptorId])
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [FK_Student_OldEthnicityType] FOREIGN KEY ([OldEthnicityTypeId]) REFERENCES [edfi].[OldEthnicityType] ([OldEthnicityTypeId])
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [FK_Student_SchoolFoodServicesEligibilityDescriptor] FOREIGN KEY ([SchoolFoodServicesEligibilityDescriptorId]) REFERENCES [edfi].[SchoolFoodServicesEligibilityDescriptor] ([SchoolFoodServicesEligibilityDescriptorId])
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [FK_Student_SexType] FOREIGN KEY ([SexTypeId]) REFERENCES [edfi].[SexType] ([SexTypeId])
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [FK_Student_StateAbbreviationType] FOREIGN KEY ([BirthStateAbbreviationTypeId]) REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId])
GO
