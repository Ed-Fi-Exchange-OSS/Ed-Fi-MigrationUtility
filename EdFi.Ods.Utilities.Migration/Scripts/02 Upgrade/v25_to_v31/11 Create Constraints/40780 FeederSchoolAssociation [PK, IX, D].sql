-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [FeederSchoolAssociation_PK] on [edfi].[FeederSchoolAssociation]'
GO
ALTER TABLE [edfi].[FeederSchoolAssociation] ADD CONSTRAINT [FeederSchoolAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [FeederSchoolId], [SchoolId])
GO

PRINT N'Creating index [UX_FeederSchoolAssociation_Id] on [edfi].[FeederSchoolAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_FeederSchoolAssociation_Id] ON [edfi].[FeederSchoolAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_FeederSchoolAssociation_School] on [edfi].[FeederSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_FeederSchoolAssociation_School] ON [edfi].[FeederSchoolAssociation] ([FeederSchoolId])
GO

PRINT N'Creating index [FK_FeederSchoolAssociation_School1] on [edfi].[FeederSchoolAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_FeederSchoolAssociation_School1] ON [edfi].[FeederSchoolAssociation] ([SchoolId])
GO

PRINT N'Adding constraints to [edfi].[FeederSchoolAssociation]'
GO
ALTER TABLE [edfi].[FeederSchoolAssociation] ADD CONSTRAINT [FeederSchoolAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[FeederSchoolAssociation] ADD CONSTRAINT [FeederSchoolAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[FeederSchoolAssociation] ADD CONSTRAINT [FeederSchoolAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
