-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ParentTelephone_PK] on [edfi].[ParentTelephone]'
GO
ALTER TABLE [edfi].[ParentTelephone] ADD CONSTRAINT [ParentTelephone_PK] PRIMARY KEY CLUSTERED  ([ParentUSI], [TelephoneNumberTypeId])
GO
PRINT N'Creating index [FK_ParentTelephone_Parent] on [edfi].[ParentTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentTelephone_Parent] ON [edfi].[ParentTelephone] ([ParentUSI])
GO
PRINT N'Creating index [FK_ParentTelephone_TelephoneNumberType] on [edfi].[ParentTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentTelephone_TelephoneNumberType] ON [edfi].[ParentTelephone] ([TelephoneNumberTypeId])
GO

PRINT N'Adding constraints to [edfi].[ParentTelephone]'
GO
ALTER TABLE [edfi].[ParentTelephone] ADD CONSTRAINT [ParentTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

