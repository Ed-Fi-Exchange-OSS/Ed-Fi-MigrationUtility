-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationProgramParticipation_PK] on [edfi].[StudentEducationOrganizationAssociationProgramParticipation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipation] ADD CONSTRAINT [StudentEducationOrganizationAssociationProgramParticipation_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationProgramParticipation_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationProgramParticipation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationProgramParticipation_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationProgramParticipation] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationProgramParticipation_ProgramTypeDescriptor] on [edfi].[StudentEducationOrganizationAssociationProgramParticipation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationProgramParticipation_ProgramTypeDescriptor] ON [edfi].[StudentEducationOrganizationAssociationProgramParticipation] ([ProgramTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationProgramParticipation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipation] ADD CONSTRAINT [StudentEducationOrganizationAssociationProgramParticipation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
