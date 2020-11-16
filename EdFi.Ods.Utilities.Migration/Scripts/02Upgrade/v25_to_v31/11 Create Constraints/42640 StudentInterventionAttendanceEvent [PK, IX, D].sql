-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentInterventionAttendanceEvent_PK] on [edfi].[StudentInterventionAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] ADD CONSTRAINT [StudentInterventionAttendanceEvent_PK] PRIMARY KEY CLUSTERED  ([AttendanceEventCategoryDescriptorId], [EducationOrganizationId], [EventDate], [InterventionIdentificationCode], [StudentUSI])
GO

PRINT N'Creating index [UX_StudentInterventionAttendanceEvent_Id] on [edfi].[StudentInterventionAttendanceEvent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentInterventionAttendanceEvent_Id] ON [edfi].[StudentInterventionAttendanceEvent] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StudentInterventionAttendanceEvent_AttendanceEventCategoryDescriptor] on [edfi].[StudentInterventionAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAttendanceEvent_AttendanceEventCategoryDescriptor] ON [edfi].[StudentInterventionAttendanceEvent] ([AttendanceEventCategoryDescriptorId])
GO

PRINT N'Creating index [FK_StudentInterventionAttendanceEvent_EducationalEnvironmentDescriptor] on [edfi].[StudentInterventionAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAttendanceEvent_EducationalEnvironmentDescriptor] ON [edfi].[StudentInterventionAttendanceEvent] ([EducationalEnvironmentDescriptorId])
GO

PRINT N'Creating index [FK_StudentInterventionAttendanceEvent_Intervention] on [edfi].[StudentInterventionAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAttendanceEvent_Intervention] ON [edfi].[StudentInterventionAttendanceEvent] ([EducationOrganizationId], [InterventionIdentificationCode])
GO

PRINT N'Creating index [FK_StudentInterventionAttendanceEvent_Student] on [edfi].[StudentInterventionAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAttendanceEvent_Student] ON [edfi].[StudentInterventionAttendanceEvent] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentInterventionAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] ADD CONSTRAINT [StudentInterventionAttendanceEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] ADD CONSTRAINT [StudentInterventionAttendanceEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] ADD CONSTRAINT [StudentInterventionAttendanceEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
