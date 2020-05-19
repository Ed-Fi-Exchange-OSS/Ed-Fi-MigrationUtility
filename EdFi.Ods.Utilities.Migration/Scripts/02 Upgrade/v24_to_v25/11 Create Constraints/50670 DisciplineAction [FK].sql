-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[DisciplineAction]'
GO
ALTER TABLE [edfi].[DisciplineAction] ADD CONSTRAINT [FK_DisciplineAction_DisciplineActionLengthDifferenceReasonType] FOREIGN KEY ([DisciplineActionLengthDifferenceReasonTypeId]) REFERENCES [edfi].[DisciplineActionLengthDifferenceReasonType] ([DisciplineActionLengthDifferenceReasonTypeId])
GO
ALTER TABLE [edfi].[DisciplineAction] ADD CONSTRAINT [FK_DisciplineAction_School] FOREIGN KEY ([ResponsibilitySchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
ALTER TABLE [edfi].[DisciplineAction] ADD CONSTRAINT [FK_DisciplineAction_School1] FOREIGN KEY ([AssignmentSchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
ALTER TABLE [edfi].[DisciplineAction] ADD CONSTRAINT [FK_DisciplineAction_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
