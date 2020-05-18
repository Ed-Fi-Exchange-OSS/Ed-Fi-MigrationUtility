-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganization_PK] on [edfi].[EducationOrganization]'
GO
ALTER TABLE [edfi].[EducationOrganization] ADD CONSTRAINT [EducationOrganization_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId])
GO
PRINT N'Creating index [UX_EducationOrganization_Id] on [edfi].[EducationOrganization]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EducationOrganization_Id] ON [edfi].[EducationOrganization] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_EducationOrganization_OperationalStatusType] on [edfi].[EducationOrganization]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganization_OperationalStatusType] ON [edfi].[EducationOrganization] ([OperationalStatusTypeId])
GO

PRINT N'Adding constraints to [edfi].[EducationOrganization]'
GO
ALTER TABLE [edfi].[EducationOrganization] ADD CONSTRAINT [EducationOrganization_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EducationOrganization] ADD CONSTRAINT [EducationOrganization_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EducationOrganization] ADD CONSTRAINT [EducationOrganization_DF_Id] DEFAULT (newid()) FOR [Id]
GO

