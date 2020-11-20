-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentInterventionAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] ADD CONSTRAINT [FK_StudentInterventionAttendanceEvent_AttendanceEventCategoryDescriptor] FOREIGN KEY ([AttendanceEventCategoryDescriptorId]) REFERENCES [edfi].[AttendanceEventCategoryDescriptor] ([AttendanceEventCategoryDescriptorId])
GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] ADD CONSTRAINT [FK_StudentInterventionAttendanceEvent_EducationalEnvironmentType] FOREIGN KEY ([EducationalEnvironmentTypeId]) REFERENCES [edfi].[EducationalEnvironmentType] ([EducationalEnvironmentTypeId])
GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] ADD CONSTRAINT [FK_StudentInterventionAttendanceEvent_Intervention] FOREIGN KEY ([InterventionIdentificationCode], [EducationOrganizationId]) REFERENCES [edfi].[Intervention] ([InterventionIdentificationCode], [EducationOrganizationId])
GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] ADD CONSTRAINT [FK_StudentInterventionAttendanceEvent_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
