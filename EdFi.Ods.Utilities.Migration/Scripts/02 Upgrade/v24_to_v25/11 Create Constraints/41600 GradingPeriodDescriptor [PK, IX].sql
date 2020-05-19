-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GradingPeriodDescriptor_PK] on [edfi].[GradingPeriodDescriptor]'
GO
ALTER TABLE [edfi].[GradingPeriodDescriptor] ADD CONSTRAINT [GradingPeriodDescriptor_PK] PRIMARY KEY CLUSTERED  ([GradingPeriodDescriptorId])
GO
PRINT N'Creating index [FK_GradingPeriodDescriptor_Descriptor] on [edfi].[GradingPeriodDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_GradingPeriodDescriptor_Descriptor] ON [edfi].[GradingPeriodDescriptor] ([GradingPeriodDescriptorId])
GO
PRINT N'Creating index [FK_GradingPeriodDescriptor_GradingPeriodType] on [edfi].[GradingPeriodDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_GradingPeriodDescriptor_GradingPeriodType] ON [edfi].[GradingPeriodDescriptor] ([GradingPeriodTypeId])
GO

