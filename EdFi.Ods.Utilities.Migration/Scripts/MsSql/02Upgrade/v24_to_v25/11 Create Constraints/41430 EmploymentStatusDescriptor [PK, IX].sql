-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EmploymentStatusDescriptor_PK] on [edfi].[EmploymentStatusDescriptor]'
GO
ALTER TABLE [edfi].[EmploymentStatusDescriptor] ADD CONSTRAINT [EmploymentStatusDescriptor_PK] PRIMARY KEY CLUSTERED  ([EmploymentStatusDescriptorId])
GO
PRINT N'Creating index [FK_EmploymentStatusDescriptor_Descriptor] on [edfi].[EmploymentStatusDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_EmploymentStatusDescriptor_Descriptor] ON [edfi].[EmploymentStatusDescriptor] ([EmploymentStatusDescriptorId])
GO
PRINT N'Creating index [FK_EmploymentStatusDescriptor_EmploymentStatusType] on [edfi].[EmploymentStatusDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_EmploymentStatusDescriptor_EmploymentStatusType] ON [edfi].[EmploymentStatusDescriptor] ([EmploymentStatusTypeId])
GO

