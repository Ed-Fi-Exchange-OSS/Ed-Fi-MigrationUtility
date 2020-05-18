-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LevelOfEducationDescriptor_PK] on [edfi].[LevelOfEducationDescriptor]'
GO
ALTER TABLE [edfi].[LevelOfEducationDescriptor] ADD CONSTRAINT [LevelOfEducationDescriptor_PK] PRIMARY KEY CLUSTERED  ([LevelOfEducationDescriptorId])
GO
PRINT N'Creating index [FK_LevelOfEducationDescriptor_Descriptor] on [edfi].[LevelOfEducationDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_LevelOfEducationDescriptor_Descriptor] ON [edfi].[LevelOfEducationDescriptor] ([LevelOfEducationDescriptorId])
GO
PRINT N'Creating index [FK_LevelOfEducationDescriptor_LevelOfEducationType] on [edfi].[LevelOfEducationDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_LevelOfEducationDescriptor_LevelOfEducationType] ON [edfi].[LevelOfEducationDescriptor] ([LevelOfEducationTypeId])
GO

