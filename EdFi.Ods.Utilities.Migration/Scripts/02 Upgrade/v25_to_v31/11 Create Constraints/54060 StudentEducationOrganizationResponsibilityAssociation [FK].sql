-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentEducationOrganizationResponsibilityAssociation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation] ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation] ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociation_ResponsibilityDescriptor] FOREIGN KEY ([ResponsibilityDescriptorId]) REFERENCES [edfi].[ResponsibilityDescriptor] ([ResponsibilityDescriptorId])
GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation] ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
