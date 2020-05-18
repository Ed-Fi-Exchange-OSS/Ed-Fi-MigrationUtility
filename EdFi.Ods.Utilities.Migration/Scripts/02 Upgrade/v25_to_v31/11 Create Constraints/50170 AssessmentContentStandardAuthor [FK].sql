-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[AssessmentContentStandardAuthor]'
GO
ALTER TABLE [edfi].[AssessmentContentStandardAuthor] ADD CONSTRAINT [FK_AssessmentContentStandardAuthor_AssessmentContentStandard] FOREIGN KEY ([AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[AssessmentContentStandard] ([AssessmentIdentifier], [Namespace]) ON DELETE CASCADE
GO
