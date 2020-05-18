-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffVisa_PK] on [edfi].[StaffVisa]'
GO
ALTER TABLE [edfi].[StaffVisa] ADD CONSTRAINT [StaffVisa_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [VisaTypeId])
GO
PRINT N'Creating index [FK_StaffVisa_Staff] on [edfi].[StaffVisa]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffVisa_Staff] ON [edfi].[StaffVisa] ([StaffUSI])
GO
PRINT N'Creating index [FK_StaffVisa_VisaType] on [edfi].[StaffVisa]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffVisa_VisaType] ON [edfi].[StaffVisa] ([VisaTypeId])
GO

PRINT N'Adding constraints to [edfi].[StaffVisa]'
GO
ALTER TABLE [edfi].[StaffVisa] ADD CONSTRAINT [StaffVisa_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

