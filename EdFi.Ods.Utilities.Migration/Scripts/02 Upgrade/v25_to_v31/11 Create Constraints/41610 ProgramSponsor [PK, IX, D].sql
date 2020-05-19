-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProgramSponsor_PK] on [edfi].[ProgramSponsor]'
GO
ALTER TABLE [edfi].[ProgramSponsor] ADD CONSTRAINT [ProgramSponsor_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [ProgramName], [ProgramSponsorDescriptorId], [ProgramTypeDescriptorId])
GO

PRINT N'Creating index [FK_ProgramSponsor_Program] on [edfi].[ProgramSponsor]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramSponsor_Program] ON [edfi].[ProgramSponsor] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO

PRINT N'Creating index [FK_ProgramSponsor_ProgramSponsorDescriptor] on [edfi].[ProgramSponsor]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramSponsor_ProgramSponsorDescriptor] ON [edfi].[ProgramSponsor] ([ProgramSponsorDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[ProgramSponsor]'
GO
ALTER TABLE [edfi].[ProgramSponsor] ADD CONSTRAINT [ProgramSponsor_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
