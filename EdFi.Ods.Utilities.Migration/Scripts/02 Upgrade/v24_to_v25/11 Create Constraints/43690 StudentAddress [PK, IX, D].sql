-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAddress_PK] on [edfi].[StudentAddress]'
GO
ALTER TABLE [edfi].[StudentAddress] ADD CONSTRAINT [StudentAddress_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [AddressTypeId])
GO
PRINT N'Creating index [FK_StudentAddress_AddressType] on [edfi].[StudentAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAddress_AddressType] ON [edfi].[StudentAddress] ([AddressTypeId])
GO
PRINT N'Creating index [FK_StudentAddress_StateAbbreviationType] on [edfi].[StudentAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAddress_StateAbbreviationType] ON [edfi].[StudentAddress] ([StateAbbreviationTypeId])
GO
PRINT N'Creating index [FK_StudentAddress_Student] on [edfi].[StudentAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAddress_Student] ON [edfi].[StudentAddress] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentAddress]'
GO
ALTER TABLE [edfi].[StudentAddress] ADD CONSTRAINT [StudentAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

