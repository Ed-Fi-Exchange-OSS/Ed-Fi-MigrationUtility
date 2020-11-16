-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentMigrantEducationProgramAssociation_PK] on [edfi].[StudentMigrantEducationProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentMigrantEducationProgramAssociation] ADD CONSTRAINT [StudentMigrantEducationProgramAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentMigrantEducationProgramAssociation_ContinuationOfServicesReasonDescriptor] on [edfi].[StudentMigrantEducationProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentMigrantEducationProgramAssociation_ContinuationOfServicesReasonDescriptor] ON [edfi].[StudentMigrantEducationProgramAssociation] ([ContinuationOfServicesReasonDescriptorId])
GO
