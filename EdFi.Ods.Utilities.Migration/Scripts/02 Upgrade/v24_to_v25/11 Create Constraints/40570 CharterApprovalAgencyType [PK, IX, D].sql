-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CharterApprovalAgencyType_PK] on [edfi].[CharterApprovalAgencyType]'
GO
ALTER TABLE [edfi].[CharterApprovalAgencyType] ADD CONSTRAINT [CharterApprovalAgencyType_PK] PRIMARY KEY CLUSTERED  ([CharterApprovalAgencyTypeId])
GO
PRINT N'Creating index [UX_CharterApprovalAgencyType_Id] on [edfi].[CharterApprovalAgencyType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CharterApprovalAgencyType_Id] ON [edfi].[CharterApprovalAgencyType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CharterApprovalAgencyType]'
GO
ALTER TABLE [edfi].[CharterApprovalAgencyType] ADD CONSTRAINT [CharterApprovalAgencyType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CharterApprovalAgencyType] ADD CONSTRAINT [CharterApprovalAgencyType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CharterApprovalAgencyType] ADD CONSTRAINT [CharterApprovalAgencyType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

