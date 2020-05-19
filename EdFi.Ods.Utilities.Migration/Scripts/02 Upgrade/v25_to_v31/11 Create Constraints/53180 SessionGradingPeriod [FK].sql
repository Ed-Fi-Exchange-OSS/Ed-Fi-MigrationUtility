-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[SessionGradingPeriod]'
GO
ALTER TABLE [edfi].[SessionGradingPeriod] ADD CONSTRAINT [FK_SessionGradingPeriod_GradingPeriod] FOREIGN KEY ([GradingPeriodDescriptorId], [PeriodSequence], [SchoolId], [SchoolYear]) REFERENCES [edfi].[GradingPeriod] ([GradingPeriodDescriptorId], [PeriodSequence], [SchoolId], [SchoolYear])
GO
ALTER TABLE [edfi].[SessionGradingPeriod] ADD CONSTRAINT [FK_SessionGradingPeriod_Session] FOREIGN KEY ([SchoolId], [SchoolYear], [SessionName]) REFERENCES [edfi].[Session] ([SchoolId], [SchoolYear], [SessionName]) ON DELETE CASCADE
GO
