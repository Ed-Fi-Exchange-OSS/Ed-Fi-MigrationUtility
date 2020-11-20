-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentVisa_PK] on [edfi].[StudentVisa]'
GO
ALTER TABLE [edfi].[StudentVisa] ADD CONSTRAINT [StudentVisa_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [VisaDescriptorId])
GO

PRINT N'Creating index [FK_StudentVisa_Student] on [edfi].[StudentVisa]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentVisa_Student] ON [edfi].[StudentVisa] ([StudentUSI])
GO

PRINT N'Creating index [FK_StudentVisa_VisaDescriptor] on [edfi].[StudentVisa]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentVisa_VisaDescriptor] ON [edfi].[StudentVisa] ([VisaDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentVisa]'
GO
ALTER TABLE [edfi].[StudentVisa] ADD CONSTRAINT [StudentVisa_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
