-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentIdentificationCode_PK] on [edfi].[AssessmentIdentificationCode]'
GO
ALTER TABLE [edfi].[AssessmentIdentificationCode] ADD CONSTRAINT [AssessmentIdentificationCode_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentificationSystemDescriptorId], [AssessmentIdentifier], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentIdentificationCode_AssessmentIdentificationSystemDescriptor] on [edfi].[AssessmentIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentIdentificationCode_AssessmentIdentificationSystemDescriptor] ON [edfi].[AssessmentIdentificationCode] ([AssessmentIdentificationSystemDescriptorId])
GO

PRINT N'Creating index [FK_AssessmentIdentificationCode_Assessment] on [edfi].[AssessmentIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentIdentificationCode_Assessment] ON [edfi].[AssessmentIdentificationCode] ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Adding constraints to [edfi].[AssessmentIdentificationCode]'
GO
ALTER TABLE [edfi].[AssessmentIdentificationCode] ADD CONSTRAINT [AssessmentIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
