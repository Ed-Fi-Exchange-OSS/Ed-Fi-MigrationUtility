-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Staff]'
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [FK_Staff_CitizenshipStatusType] FOREIGN KEY ([CitizenshipStatusTypeId]) REFERENCES [edfi].[CitizenshipStatusType] ([CitizenshipStatusTypeId])
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [FK_Staff_LevelOfEducationDescriptor] FOREIGN KEY ([HighestCompletedLevelOfEducationDescriptorId]) REFERENCES [edfi].[LevelOfEducationDescriptor] ([LevelOfEducationDescriptorId])
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [FK_Staff_OldEthnicityType] FOREIGN KEY ([OldEthnicityTypeId]) REFERENCES [edfi].[OldEthnicityType] ([OldEthnicityTypeId])
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [FK_Staff_SexType] FOREIGN KEY ([SexTypeId]) REFERENCES [edfi].[SexType] ([SexTypeId])
GO
