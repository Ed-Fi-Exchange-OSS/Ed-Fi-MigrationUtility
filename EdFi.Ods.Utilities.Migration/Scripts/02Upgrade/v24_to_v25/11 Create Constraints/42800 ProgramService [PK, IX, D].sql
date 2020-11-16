-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProgramService_PK] on [edfi].[ProgramService]'
GO
ALTER TABLE [edfi].[ProgramService] ADD CONSTRAINT [ProgramService_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [ProgramTypeId], [ServiceDescriptorId], [ProgramName])
GO
PRINT N'Creating index [FK_ProgramService_Program] on [edfi].[ProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramService_Program] ON [edfi].[ProgramService] ([EducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
PRINT N'Creating index [FK_ProgramService_ServiceDescriptor] on [edfi].[ProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramService_ServiceDescriptor] ON [edfi].[ProgramService] ([ServiceDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[ProgramService]'
GO
ALTER TABLE [edfi].[ProgramService] ADD CONSTRAINT [ProgramService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

