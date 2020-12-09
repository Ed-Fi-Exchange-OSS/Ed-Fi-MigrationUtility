-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Student]'
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [FK_Student_CitizenshipStatusDescriptor] FOREIGN KEY ([CitizenshipStatusDescriptorId]) REFERENCES [edfi].[CitizenshipStatusDescriptor] ([CitizenshipStatusDescriptorId])
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [FK_Student_CountryDescriptor] FOREIGN KEY ([BirthCountryDescriptorId]) REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [FK_Student_SexDescriptor] FOREIGN KEY ([BirthSexDescriptorId]) REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO
ALTER TABLE [edfi].[Student] ADD CONSTRAINT [FK_Student_StateAbbreviationDescriptor] FOREIGN KEY ([BirthStateAbbreviationDescriptorId]) REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO
