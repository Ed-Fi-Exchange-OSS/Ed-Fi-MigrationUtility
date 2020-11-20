-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentMigrantEducationProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentMigrantEducationProgramAssociation] ADD CONSTRAINT [FK_StudentMigrantEducationProgramAssociation_ContinuationOfServicesReasonDescriptor] FOREIGN KEY ([ContinuationOfServicesReasonDescriptorId]) REFERENCES [edfi].[ContinuationOfServicesReasonDescriptor] ([ContinuationOfServicesReasonDescriptorId])
GO
ALTER TABLE [edfi].[StudentMigrantEducationProgramAssociation] ADD CONSTRAINT [FK_StudentMigrantEducationProgramAssociation_StudentProgramAssociation] FOREIGN KEY ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate]) REFERENCES [edfi].[StudentProgramAssociation] ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate]) ON DELETE CASCADE
GO
