-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ProgramSponsor]'
GO
ALTER TABLE [edfi].[ProgramSponsor] ADD CONSTRAINT [FK_ProgramSponsor_Program] FOREIGN KEY ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId]) REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[ProgramSponsor] ADD CONSTRAINT [FK_ProgramSponsor_ProgramSponsorDescriptor] FOREIGN KEY ([ProgramSponsorDescriptorId]) REFERENCES [edfi].[ProgramSponsorDescriptor] ([ProgramSponsorDescriptorId])
GO
