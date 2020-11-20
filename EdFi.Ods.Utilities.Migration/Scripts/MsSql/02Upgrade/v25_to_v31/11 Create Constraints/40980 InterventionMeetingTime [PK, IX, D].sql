-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionMeetingTime_PK] on [edfi].[InterventionMeetingTime]'
GO
ALTER TABLE [edfi].[InterventionMeetingTime] ADD CONSTRAINT [InterventionMeetingTime_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [EndTime], [InterventionIdentificationCode], [StartTime])
GO

PRINT N'Creating index [FK_InterventionMeetingTime_Intervention] on [edfi].[InterventionMeetingTime]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionMeetingTime_Intervention] ON [edfi].[InterventionMeetingTime] ([EducationOrganizationId], [InterventionIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionMeetingTime]'
GO
ALTER TABLE [edfi].[InterventionMeetingTime] ADD CONSTRAINT [InterventionMeetingTime_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
