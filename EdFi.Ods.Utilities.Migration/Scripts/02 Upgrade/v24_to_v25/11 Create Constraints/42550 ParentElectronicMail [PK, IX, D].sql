-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ParentElectronicMail_PK] on [edfi].[ParentElectronicMail]'
GO
ALTER TABLE [edfi].[ParentElectronicMail] ADD CONSTRAINT [ParentElectronicMail_PK] PRIMARY KEY CLUSTERED  ([ParentUSI], [ElectronicMailTypeId])
GO
PRINT N'Creating index [FK_ParentElectronicMail_ElectronicMailType] on [edfi].[ParentElectronicMail]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentElectronicMail_ElectronicMailType] ON [edfi].[ParentElectronicMail] ([ElectronicMailTypeId])
GO
PRINT N'Creating index [FK_ParentElectronicMail_Parent] on [edfi].[ParentElectronicMail]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentElectronicMail_Parent] ON [edfi].[ParentElectronicMail] ([ParentUSI])
GO

PRINT N'Adding constraints to [edfi].[ParentElectronicMail]'
GO
ALTER TABLE [edfi].[ParentElectronicMail] ADD CONSTRAINT [ParentElectronicMail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

