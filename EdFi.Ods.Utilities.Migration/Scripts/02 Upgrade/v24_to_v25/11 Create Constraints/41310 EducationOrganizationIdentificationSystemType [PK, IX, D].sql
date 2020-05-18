-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationIdentificationSystemType_PK] on [edfi].[EducationOrganizationIdentificationSystemType]'
GO
ALTER TABLE [edfi].[EducationOrganizationIdentificationSystemType] ADD CONSTRAINT [EducationOrganizationIdentificationSystemType_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationIdentificationSystemTypeId])
GO
PRINT N'Creating index [UX_EducationOrganizationIdentificationSystemType_Id] on [edfi].[EducationOrganizationIdentificationSystemType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EducationOrganizationIdentificationSystemType_Id] ON [edfi].[EducationOrganizationIdentificationSystemType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationIdentificationSystemType]'
GO
ALTER TABLE [edfi].[EducationOrganizationIdentificationSystemType] ADD CONSTRAINT [EducationOrganizationIdentificationSystemType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EducationOrganizationIdentificationSystemType] ADD CONSTRAINT [EducationOrganizationIdentificationSystemType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EducationOrganizationIdentificationSystemType] ADD CONSTRAINT [EducationOrganizationIdentificationSystemType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

