-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentSpecialEducationProgramAssociation_PK] on [edfi].[StudentSpecialEducationProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] ADD CONSTRAINT [StudentSpecialEducationProgramAssociation_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate])
GO
PRINT N'Creating index [FK_StudentSpecialEducationProgramAssociation_SpecialEducationSettingDescriptor] on [edfi].[StudentSpecialEducationProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociation_SpecialEducationSettingDescriptor] ON [edfi].[StudentSpecialEducationProgramAssociation] ([SpecialEducationSettingDescriptorId])
GO
PRINT N'Creating index [FK_StudentSpecialEducationProgramAssociation_StudentProgramAssociation] on [edfi].[StudentSpecialEducationProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociation_StudentProgramAssociation] ON [edfi].[StudentSpecialEducationProgramAssociation] ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate])
GO

