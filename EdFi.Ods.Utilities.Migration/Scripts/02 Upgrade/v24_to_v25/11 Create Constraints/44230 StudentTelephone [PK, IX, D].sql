-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentTelephone_PK] on [edfi].[StudentTelephone]'
GO
ALTER TABLE [edfi].[StudentTelephone] ADD CONSTRAINT [StudentTelephone_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [TelephoneNumberTypeId])
GO
PRINT N'Creating index [FK_StudentTelephone_Student] on [edfi].[StudentTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentTelephone_Student] ON [edfi].[StudentTelephone] ([StudentUSI])
GO
PRINT N'Creating index [FK_StudentTelephone_TelephoneNumberType] on [edfi].[StudentTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentTelephone_TelephoneNumberType] ON [edfi].[StudentTelephone] ([TelephoneNumberTypeId])
GO

PRINT N'Adding constraints to [edfi].[StudentTelephone]'
GO
ALTER TABLE [edfi].[StudentTelephone] ADD CONSTRAINT [StudentTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

