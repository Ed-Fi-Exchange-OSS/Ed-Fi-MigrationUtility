-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffTribalAffiliation_PK] on [edfi].[StaffTribalAffiliation]'
GO
ALTER TABLE [edfi].[StaffTribalAffiliation] ADD CONSTRAINT [StaffTribalAffiliation_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [TribalAffiliationDescriptorId])
GO

PRINT N'Creating index [FK_StaffTribalAffiliation_Staff] on [edfi].[StaffTribalAffiliation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffTribalAffiliation_Staff] ON [edfi].[StaffTribalAffiliation] ([StaffUSI])
GO

PRINT N'Creating index [FK_StaffTribalAffiliation_TribalAffiliationDescriptor] on [edfi].[StaffTribalAffiliation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffTribalAffiliation_TribalAffiliationDescriptor] ON [edfi].[StaffTribalAffiliation] ([TribalAffiliationDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StaffTribalAffiliation]'
GO
ALTER TABLE [edfi].[StaffTribalAffiliation] ADD CONSTRAINT [StaffTribalAffiliation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
