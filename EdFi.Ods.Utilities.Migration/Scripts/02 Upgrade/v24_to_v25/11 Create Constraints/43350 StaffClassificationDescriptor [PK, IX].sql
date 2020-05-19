-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffClassificationDescriptor_PK] on [edfi].[StaffClassificationDescriptor]'
GO
ALTER TABLE [edfi].[StaffClassificationDescriptor] ADD CONSTRAINT [StaffClassificationDescriptor_PK] PRIMARY KEY CLUSTERED  ([StaffClassificationDescriptorId])
GO
PRINT N'Creating index [FK_StaffClassificationDescriptor_Descriptor] on [edfi].[StaffClassificationDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffClassificationDescriptor_Descriptor] ON [edfi].[StaffClassificationDescriptor] ([StaffClassificationDescriptorId])
GO
PRINT N'Creating index [FK_StaffClassificationDescriptor_StaffClassificationType] on [edfi].[StaffClassificationDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffClassificationDescriptor_StaffClassificationType] ON [edfi].[StaffClassificationDescriptor] ([StaffClassificationTypeId])
GO

