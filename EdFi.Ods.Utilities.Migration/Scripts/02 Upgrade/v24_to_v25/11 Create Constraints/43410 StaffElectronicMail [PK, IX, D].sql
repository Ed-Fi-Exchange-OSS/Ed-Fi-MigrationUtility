-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffElectronicMail_PK] on [edfi].[StaffElectronicMail]'
GO
ALTER TABLE [edfi].[StaffElectronicMail] ADD CONSTRAINT [StaffElectronicMail_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [ElectronicMailTypeId])
GO
PRINT N'Creating index [FK_StaffElectronicMail_ElectronicMailType] on [edfi].[StaffElectronicMail]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffElectronicMail_ElectronicMailType] ON [edfi].[StaffElectronicMail] ([ElectronicMailTypeId])
GO
PRINT N'Creating index [FK_StaffElectronicMail_Staff] on [edfi].[StaffElectronicMail]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffElectronicMail_Staff] ON [edfi].[StaffElectronicMail] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffElectronicMail]'
GO
ALTER TABLE [edfi].[StaffElectronicMail] ADD CONSTRAINT [StaffElectronicMail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

