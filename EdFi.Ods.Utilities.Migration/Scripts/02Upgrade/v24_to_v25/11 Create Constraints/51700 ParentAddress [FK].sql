-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ParentAddress]'
GO
ALTER TABLE [edfi].[ParentAddress] ADD CONSTRAINT [FK_ParentAddress_AddressType] FOREIGN KEY ([AddressTypeId]) REFERENCES [edfi].[AddressType] ([AddressTypeId])
GO
ALTER TABLE [edfi].[ParentAddress] ADD CONSTRAINT [FK_ParentAddress_Parent] FOREIGN KEY ([ParentUSI]) REFERENCES [edfi].[Parent] ([ParentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[ParentAddress] ADD CONSTRAINT [FK_ParentAddress_StateAbbreviationType] FOREIGN KEY ([StateAbbreviationTypeId]) REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId])
GO
