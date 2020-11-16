-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ObjectiveAssessment_PK] on [edfi].[ObjectiveAssessment]'
GO
ALTER TABLE [edfi].[ObjectiveAssessment] ADD CONSTRAINT [ObjectiveAssessment_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO
PRINT N'Creating index [UX_ObjectiveAssessment_Id] on [edfi].[ObjectiveAssessment]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ObjectiveAssessment_Id] ON [edfi].[ObjectiveAssessment] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_ObjectiveAssessment_Assessment] on [edfi].[ObjectiveAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessment_Assessment] ON [edfi].[ObjectiveAssessment] ([AssessmentIdentifier], [Namespace])
GO
PRINT N'Creating index [FK_ObjectiveAssessment_ObjectiveAssessment] on [edfi].[ObjectiveAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessment_ObjectiveAssessment] ON [edfi].[ObjectiveAssessment] ([AssessmentIdentifier], [ParentIdentificationCode], [Namespace])
GO

PRINT N'Adding constraints to [edfi].[ObjectiveAssessment]'
GO
ALTER TABLE [edfi].[ObjectiveAssessment] ADD CONSTRAINT [ObjectiveAssessment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ObjectiveAssessment] ADD CONSTRAINT [ObjectiveAssessment_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ObjectiveAssessment] ADD CONSTRAINT [ObjectiveAssessment_DF_Id] DEFAULT (newid()) FOR [Id]
GO

