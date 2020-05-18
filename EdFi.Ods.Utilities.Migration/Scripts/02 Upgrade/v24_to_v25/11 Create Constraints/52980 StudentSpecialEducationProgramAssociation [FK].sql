-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentSpecialEducationProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociation_SpecialEducationSettingDescriptor] FOREIGN KEY ([SpecialEducationSettingDescriptorId]) REFERENCES [edfi].[SpecialEducationSettingDescriptor] ([SpecialEducationSettingDescriptorId])
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociation_StudentProgramAssociation] FOREIGN KEY ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate]) REFERENCES [edfi].[StudentProgramAssociation] ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate]) ON DELETE CASCADE
GO
