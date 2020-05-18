-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentElectronicMail]'
GO
ALTER TABLE [edfi].[StudentElectronicMail] ADD CONSTRAINT [FK_StudentElectronicMail_ElectronicMailType] FOREIGN KEY ([ElectronicMailTypeId]) REFERENCES [edfi].[ElectronicMailType] ([ElectronicMailTypeId])
GO
ALTER TABLE [edfi].[StudentElectronicMail] ADD CONSTRAINT [FK_StudentElectronicMail_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]) ON DELETE CASCADE
GO
