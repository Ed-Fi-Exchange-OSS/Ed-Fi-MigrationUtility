-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationIdentificationCode_PK] on [edfi].[EducationOrganizationIdentificationCode]'
GO
ALTER TABLE [edfi].[EducationOrganizationIdentificationCode] ADD CONSTRAINT [EducationOrganizationIdentificationCode_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [EducationOrganizationIdentificationSystemDescriptorId])
GO

PRINT N'Creating index [FK_EducationOrganizationIdentificationCode_EducationOrganization] on [edfi].[EducationOrganizationIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationIdentificationCode_EducationOrganization] ON [edfi].[EducationOrganizationIdentificationCode] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_EducationOrganizationIdentificationCode_EducationOrganizationIdentificationSystemDescriptor] on [edfi].[EducationOrganizationIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationIdentificationCode_EducationOrganizationIdentificationSystemDescriptor] ON [edfi].[EducationOrganizationIdentificationCode] ([EducationOrganizationIdentificationSystemDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationIdentificationCode]'
GO
ALTER TABLE [edfi].[EducationOrganizationIdentificationCode] ADD CONSTRAINT [EducationOrganizationIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
