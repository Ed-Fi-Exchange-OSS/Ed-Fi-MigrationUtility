-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentTelephone]'
GO
ALTER TABLE [edfi].[StudentTelephone] ADD CONSTRAINT [FK_StudentTelephone_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StudentTelephone] ADD CONSTRAINT [FK_StudentTelephone_TelephoneNumberType] FOREIGN KEY ([TelephoneNumberTypeId]) REFERENCES [edfi].[TelephoneNumberType] ([TelephoneNumberTypeId])
GO
