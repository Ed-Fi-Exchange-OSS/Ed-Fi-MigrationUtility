-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentElectronicMail_PK] on [edfi].[StudentElectronicMail]'
GO
ALTER TABLE [edfi].[StudentElectronicMail] ADD CONSTRAINT [StudentElectronicMail_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [ElectronicMailTypeId])
GO
PRINT N'Creating index [FK_StudentElectronicMail_ElectronicMailType] on [edfi].[StudentElectronicMail]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentElectronicMail_ElectronicMailType] ON [edfi].[StudentElectronicMail] ([ElectronicMailTypeId])
GO
PRINT N'Creating index [FK_StudentElectronicMail_Student] on [edfi].[StudentElectronicMail]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentElectronicMail_Student] ON [edfi].[StudentElectronicMail] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentElectronicMail]'
GO
ALTER TABLE [edfi].[StudentElectronicMail] ADD CONSTRAINT [StudentElectronicMail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

