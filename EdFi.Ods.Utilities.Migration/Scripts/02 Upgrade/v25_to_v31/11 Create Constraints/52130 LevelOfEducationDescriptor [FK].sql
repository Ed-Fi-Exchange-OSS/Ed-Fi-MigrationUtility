-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LevelOfEducationDescriptor]'
GO
ALTER TABLE [edfi].[LevelOfEducationDescriptor] ADD CONSTRAINT [FK_LevelOfEducationDescriptor_Descriptor] FOREIGN KEY ([LevelOfEducationDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
GO
