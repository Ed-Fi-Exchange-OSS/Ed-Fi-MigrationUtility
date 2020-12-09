-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Staff]'
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [FK_Staff_CitizenshipStatusDescriptor] FOREIGN KEY ([CitizenshipStatusDescriptorId]) REFERENCES [edfi].[CitizenshipStatusDescriptor] ([CitizenshipStatusDescriptorId])
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [FK_Staff_LevelOfEducationDescriptor] FOREIGN KEY ([HighestCompletedLevelOfEducationDescriptorId]) REFERENCES [edfi].[LevelOfEducationDescriptor] ([LevelOfEducationDescriptorId])
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [FK_Staff_OldEthnicityDescriptor] FOREIGN KEY ([OldEthnicityDescriptorId]) REFERENCES [edfi].[OldEthnicityDescriptor] ([OldEthnicityDescriptorId])
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [FK_Staff_SexDescriptor] FOREIGN KEY ([SexDescriptorId]) REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO
