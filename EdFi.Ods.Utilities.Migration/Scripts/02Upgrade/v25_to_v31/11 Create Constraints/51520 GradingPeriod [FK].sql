-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GradingPeriod]'
GO
ALTER TABLE [edfi].[GradingPeriod] ADD CONSTRAINT [FK_GradingPeriod_GradingPeriodDescriptor] FOREIGN KEY ([GradingPeriodDescriptorId]) REFERENCES [edfi].[GradingPeriodDescriptor] ([GradingPeriodDescriptorId])
GO
ALTER TABLE [edfi].[GradingPeriod] ADD CONSTRAINT [FK_GradingPeriod_School] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
ALTER TABLE [edfi].[GradingPeriod] ADD CONSTRAINT [FK_GradingPeriod_SchoolYearType] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
