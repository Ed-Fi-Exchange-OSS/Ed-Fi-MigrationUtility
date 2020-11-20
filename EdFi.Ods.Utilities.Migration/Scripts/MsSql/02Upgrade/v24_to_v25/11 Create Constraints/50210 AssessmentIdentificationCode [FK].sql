-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[AssessmentIdentificationCode]'
GO
ALTER TABLE [edfi].[AssessmentIdentificationCode] ADD CONSTRAINT [FK_AssessmentIdentificationCode_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[AssessmentIdentificationCode] ADD CONSTRAINT [FK_AssessmentIdentificationCode_AssessmentIdentificationSystemDescriptor] FOREIGN KEY ([AssessmentIdentificationSystemDescriptorId]) REFERENCES [edfi].[AssessmentIdentificationSystemDescriptor] ([AssessmentIdentificationSystemDescriptorId])
GO
