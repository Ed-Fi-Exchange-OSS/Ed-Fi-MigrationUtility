-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ProgramService]'
GO
ALTER TABLE [edfi].[ProgramService] ADD CONSTRAINT [FK_ProgramService_Program] FOREIGN KEY ([EducationOrganizationId], [ProgramTypeId], [ProgramName]) REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramTypeId], [ProgramName]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[ProgramService] ADD CONSTRAINT [FK_ProgramService_ServiceDescriptor] FOREIGN KEY ([ServiceDescriptorId]) REFERENCES [edfi].[ServiceDescriptor] ([ServiceDescriptorId])
GO
