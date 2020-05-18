-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GraduationPlanTypeDescriptor_PK] on [edfi].[GraduationPlanTypeDescriptor]'
GO
ALTER TABLE [edfi].[GraduationPlanTypeDescriptor] ADD CONSTRAINT [GraduationPlanTypeDescriptor_PK] PRIMARY KEY CLUSTERED  ([GraduationPlanTypeDescriptorId])
GO
PRINT N'Creating index [FK_GraduationPlanTypeDescriptor_Descriptor] on [edfi].[GraduationPlanTypeDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanTypeDescriptor_Descriptor] ON [edfi].[GraduationPlanTypeDescriptor] ([GraduationPlanTypeDescriptorId])
GO
PRINT N'Creating index [FK_GraduationPlanTypeDescriptor_GraduationPlanType] on [edfi].[GraduationPlanTypeDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanTypeDescriptor_GraduationPlanType] ON [edfi].[GraduationPlanTypeDescriptor] ([GraduationPlanTypeId])
GO

