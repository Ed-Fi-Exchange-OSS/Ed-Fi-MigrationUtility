-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentFamilyIdentificationCode_PK] on [edfi].[AssessmentFamilyIdentificationCode]'
GO
ALTER TABLE [edfi].[AssessmentFamilyIdentificationCode] ADD CONSTRAINT [AssessmentFamilyIdentificationCode_PK] PRIMARY KEY CLUSTERED  ([AssessmentFamilyTitle], [AssessmentIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_AssessmentFamilyIdentificationCode_AssessmentFamily] on [edfi].[AssessmentFamilyIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamilyIdentificationCode_AssessmentFamily] ON [edfi].[AssessmentFamilyIdentificationCode] ([AssessmentFamilyTitle])
GO
PRINT N'Creating index [FK_AssessmentFamilyIdentificationCode_AssessmentIdentificationSystemDescriptor] on [edfi].[AssessmentFamilyIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamilyIdentificationCode_AssessmentIdentificationSystemDescriptor] ON [edfi].[AssessmentFamilyIdentificationCode] ([AssessmentIdentificationSystemDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentFamilyIdentificationCode]'
GO
ALTER TABLE [edfi].[AssessmentFamilyIdentificationCode] ADD CONSTRAINT [AssessmentFamilyIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

