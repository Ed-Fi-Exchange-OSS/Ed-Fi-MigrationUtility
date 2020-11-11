-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociation_EmploymentStatusDescriptor] FOREIGN KEY ([EmploymentStatusDescriptorId]) REFERENCES [edfi].[EmploymentStatusDescriptor] ([EmploymentStatusDescriptorId])
GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociation_SeparationReasonDescriptor] FOREIGN KEY ([SeparationReasonDescriptorId]) REFERENCES [edfi].[SeparationReasonDescriptor] ([SeparationReasonDescriptorId])
GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociation_SeparationType] FOREIGN KEY ([SeparationTypeId]) REFERENCES [edfi].[SeparationType] ([SeparationTypeId])
GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociation_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI])
GO
