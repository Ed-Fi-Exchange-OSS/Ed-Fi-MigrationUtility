-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [NetworkPurposeDescriptor_PK] on [edfi].[NetworkPurposeDescriptor]'
GO
ALTER TABLE [edfi].[NetworkPurposeDescriptor] ADD CONSTRAINT [NetworkPurposeDescriptor_PK] PRIMARY KEY CLUSTERED  ([NetworkPurposeDescriptorId])
GO
