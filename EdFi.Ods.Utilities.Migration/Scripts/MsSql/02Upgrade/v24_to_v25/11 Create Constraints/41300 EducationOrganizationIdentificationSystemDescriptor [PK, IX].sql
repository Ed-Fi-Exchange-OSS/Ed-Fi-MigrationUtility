-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationIdentificationSystemDescriptor_PK] on [edfi].[EducationOrganizationIdentificationSystemDescriptor]'
GO
ALTER TABLE [edfi].[EducationOrganizationIdentificationSystemDescriptor] ADD CONSTRAINT [EducationOrganizationIdentificationSystemDescriptor_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_EducationOrganizationIdentificationSystemDescriptor_Descriptor] on [edfi].[EducationOrganizationIdentificationSystemDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationIdentificationSystemDescriptor_Descriptor] ON [edfi].[EducationOrganizationIdentificationSystemDescriptor] ([EducationOrganizationIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_EducationOrganizationIdentificationSystemDescriptor_EducationOrganizationIdentificationSystemType] on [edfi].[EducationOrganizationIdentificationSystemDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationIdentificationSystemDescriptor_EducationOrganizationIdentificationSystemType] ON [edfi].[EducationOrganizationIdentificationSystemDescriptor] ([EducationOrganizationIdentificationSystemTypeId])
GO

