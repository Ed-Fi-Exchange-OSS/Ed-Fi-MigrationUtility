-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentIdentificationSystemType_PK] on [edfi].[AssessmentIdentificationSystemType]'
GO
ALTER TABLE [edfi].[AssessmentIdentificationSystemType] ADD CONSTRAINT [AssessmentIdentificationSystemType_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentificationSystemTypeId])
GO
PRINT N'Creating index [UX_AssessmentIdentificationSystemType_Id] on [edfi].[AssessmentIdentificationSystemType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AssessmentIdentificationSystemType_Id] ON [edfi].[AssessmentIdentificationSystemType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AssessmentIdentificationSystemType]'
GO
ALTER TABLE [edfi].[AssessmentIdentificationSystemType] ADD CONSTRAINT [AssessmentIdentificationSystemType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AssessmentIdentificationSystemType] ADD CONSTRAINT [AssessmentIdentificationSystemType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AssessmentIdentificationSystemType] ADD CONSTRAINT [AssessmentIdentificationSystemType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

