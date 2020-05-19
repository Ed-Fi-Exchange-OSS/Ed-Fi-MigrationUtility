-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AccountCode_PK] on [edfi].[AccountCode]'
GO
ALTER TABLE [edfi].[AccountCode] ADD CONSTRAINT [AccountCode_PK] PRIMARY KEY CLUSTERED  ([AccountClassificationDescriptorId], [AccountCodeNumber], [EducationOrganizationId], [FiscalYear])
GO

PRINT N'Creating index [UX_AccountCode_Id] on [edfi].[AccountCode]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AccountCode_Id] ON [edfi].[AccountCode] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_AccountCode_AccountClassificationDescriptor] on [edfi].[AccountCode]'
GO
CREATE NONCLUSTERED INDEX [FK_AccountCode_AccountClassificationDescriptor] ON [edfi].[AccountCode] ([AccountClassificationDescriptorId])
GO

PRINT N'Creating index [FK_AccountCode_EducationOrganization] on [edfi].[AccountCode]'
GO
CREATE NONCLUSTERED INDEX [FK_AccountCode_EducationOrganization] ON [edfi].[AccountCode] ([EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[AccountCode]'
GO
ALTER TABLE [edfi].[AccountCode] ADD CONSTRAINT [AccountCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AccountCode] ADD CONSTRAINT [AccountCode_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AccountCode] ADD CONSTRAINT [AccountCode_DF_Id] DEFAULT (newid()) FOR [Id]
GO
