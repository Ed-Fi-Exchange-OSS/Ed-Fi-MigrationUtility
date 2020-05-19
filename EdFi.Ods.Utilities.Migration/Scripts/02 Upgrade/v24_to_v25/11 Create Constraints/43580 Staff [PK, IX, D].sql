-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Staff_PK] on [edfi].[Staff]'
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [Staff_PK] PRIMARY KEY CLUSTERED  ([StaffUSI])
GO
PRINT N'Creating index [UX_Staff_Id] on [edfi].[Staff]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Staff_Id] ON [edfi].[Staff] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_Staff_CitizenshipStatusType] on [edfi].[Staff]'
GO
CREATE NONCLUSTERED INDEX [FK_Staff_CitizenshipStatusType] ON [edfi].[Staff] ([CitizenshipStatusTypeId])
GO
PRINT N'Creating index [FK_Staff_LevelOfEducationDescriptor] on [edfi].[Staff]'
GO
CREATE NONCLUSTERED INDEX [FK_Staff_LevelOfEducationDescriptor] ON [edfi].[Staff] ([HighestCompletedLevelOfEducationDescriptorId])
GO
PRINT N'Creating index [FK_Staff_OldEthnicityType] on [edfi].[Staff]'
GO
CREATE NONCLUSTERED INDEX [FK_Staff_OldEthnicityType] ON [edfi].[Staff] ([OldEthnicityTypeId])
GO
PRINT N'Creating index [FK_Staff_SexType] on [edfi].[Staff]'
GO
CREATE NONCLUSTERED INDEX [FK_Staff_SexType] ON [edfi].[Staff] ([SexTypeId])
GO
PRINT N'Creating index [Staff_UI_StaffUniqueId] on [edfi].[Staff]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [Staff_UI_StaffUniqueId] ON [edfi].[Staff] ([StaffUniqueId])
GO

PRINT N'Adding constraints to [edfi].[Staff]'
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [Staff_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [Staff_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Staff] ADD CONSTRAINT [Staff_DF_Id] DEFAULT (newid()) FOR [Id]
GO

