-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[AssessmentFamilyIdentificationCode]'
GO
ALTER TABLE [edfi].[AssessmentFamilyIdentificationCode] ADD CONSTRAINT [FK_AssessmentFamilyIdentificationCode_AssessmentFamily] FOREIGN KEY ([AssessmentFamilyTitle]) REFERENCES [edfi].[AssessmentFamily] ([AssessmentFamilyTitle]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[AssessmentFamilyIdentificationCode] ADD CONSTRAINT [FK_AssessmentFamilyIdentificationCode_AssessmentIdentificationSystemDescriptor] FOREIGN KEY ([AssessmentIdentificationSystemDescriptorId]) REFERENCES [edfi].[AssessmentIdentificationSystemDescriptor] ([AssessmentIdentificationSystemDescriptorId])
GO
