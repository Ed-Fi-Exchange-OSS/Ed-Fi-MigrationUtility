-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffEducationOrganizationContactAssociation]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation] ADD CONSTRAINT [FK_StaffEducationOrganizationContactAssociation_ContactTypeDescriptor] FOREIGN KEY ([ContactTypeDescriptorId]) REFERENCES [edfi].[ContactTypeDescriptor] ([ContactTypeDescriptorId])
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation] ADD CONSTRAINT [FK_StaffEducationOrganizationContactAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation] ADD CONSTRAINT [FK_StaffEducationOrganizationContactAssociation_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI])
GO
