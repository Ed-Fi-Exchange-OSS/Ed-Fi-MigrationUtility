-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LocalEducationAgency]'
GO
ALTER TABLE [edfi].[LocalEducationAgency] ADD CONSTRAINT [FK_LocalEducationAgency_CharterStatusDescriptor] FOREIGN KEY ([CharterStatusDescriptorId]) REFERENCES [edfi].[CharterStatusDescriptor] ([CharterStatusDescriptorId])
GO
ALTER TABLE [edfi].[LocalEducationAgency] ADD CONSTRAINT [FK_LocalEducationAgency_EducationOrganization] FOREIGN KEY ([LocalEducationAgencyId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[LocalEducationAgency] ADD CONSTRAINT [FK_LocalEducationAgency_EducationServiceCenter] FOREIGN KEY ([EducationServiceCenterId]) REFERENCES [edfi].[EducationServiceCenter] ([EducationServiceCenterId])
GO
ALTER TABLE [edfi].[LocalEducationAgency] ADD CONSTRAINT [FK_LocalEducationAgency_LocalEducationAgency] FOREIGN KEY ([ParentLocalEducationAgencyId]) REFERENCES [edfi].[LocalEducationAgency] ([LocalEducationAgencyId])
GO
ALTER TABLE [edfi].[LocalEducationAgency] ADD CONSTRAINT [FK_LocalEducationAgency_LocalEducationAgencyCategoryDescriptor] FOREIGN KEY ([LocalEducationAgencyCategoryDescriptorId]) REFERENCES [edfi].[LocalEducationAgencyCategoryDescriptor] ([LocalEducationAgencyCategoryDescriptorId])
GO
ALTER TABLE [edfi].[LocalEducationAgency] ADD CONSTRAINT [FK_LocalEducationAgency_StateEducationAgency] FOREIGN KEY ([StateEducationAgencyId]) REFERENCES [edfi].[StateEducationAgency] ([StateEducationAgencyId])
GO
