-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[PostSecondaryEvent]'
GO
ALTER TABLE [edfi].[PostSecondaryEvent] ADD CONSTRAINT [FK_PostSecondaryEvent_PostSecondaryEventCategoryType] FOREIGN KEY ([PostSecondaryEventCategoryTypeId]) REFERENCES [edfi].[PostSecondaryEventCategoryType] ([PostSecondaryEventCategoryTypeId])
GO
ALTER TABLE [edfi].[PostSecondaryEvent] ADD CONSTRAINT [FK_PostSecondaryEvent_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
