-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ReportCardStudentLearningObjective]'
GO
ALTER TABLE [edfi].[ReportCardStudentLearningObjective] ADD CONSTRAINT [FK_ReportCardStudentLearningObjective_ReportCard] FOREIGN KEY ([StudentUSI], [ReportCardEducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate], [SchoolId]) REFERENCES [edfi].[ReportCard] ([StudentUSI], [EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate], [SchoolId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[ReportCardStudentLearningObjective] ADD CONSTRAINT [FK_ReportCardStudentLearningObjective_StudentLearningObjective] FOREIGN KEY ([GradingPeriodBeginDate], [GradingPeriodDescriptorId], [LearningObjectiveId], [Namespace], [SchoolId], [StudentUSI]) REFERENCES [edfi].[StudentLearningObjective] ([GradingPeriodBeginDate], [GradingPeriodDescriptorId], [LearningObjectiveId], [Namespace], [SchoolId], [StudentUSI])
GO
