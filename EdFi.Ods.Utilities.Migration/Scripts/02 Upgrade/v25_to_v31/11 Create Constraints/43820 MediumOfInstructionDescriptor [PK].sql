-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [MediumOfInstructionDescriptor_PK] on [edfi].[MediumOfInstructionDescriptor]'
GO
ALTER TABLE [edfi].[MediumOfInstructionDescriptor] ADD CONSTRAINT [MediumOfInstructionDescriptor_PK] PRIMARY KEY CLUSTERED  ([MediumOfInstructionDescriptorId])
GO
