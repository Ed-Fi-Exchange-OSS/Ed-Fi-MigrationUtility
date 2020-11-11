-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[PostSecondaryEvent]'
GO
ALTER TABLE [edfi].[PostSecondaryEvent] ADD CONSTRAINT [FK_PostSecondaryEvent_PostSecondaryEventCategoryDescriptor] FOREIGN KEY ([PostSecondaryEventCategoryDescriptorId]) REFERENCES [edfi].[PostSecondaryEventCategoryDescriptor] ([PostSecondaryEventCategoryDescriptorId])
GO
ALTER TABLE [edfi].[PostSecondaryEvent] ADD CONSTRAINT [FK_PostSecondaryEvent_PostSecondaryInstitution] FOREIGN KEY ([PostSecondaryInstitutionId]) REFERENCES [edfi].[PostSecondaryInstitution] ([PostSecondaryInstitutionId])
GO
ALTER TABLE [edfi].[PostSecondaryEvent] ADD CONSTRAINT [FK_PostSecondaryEvent_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
