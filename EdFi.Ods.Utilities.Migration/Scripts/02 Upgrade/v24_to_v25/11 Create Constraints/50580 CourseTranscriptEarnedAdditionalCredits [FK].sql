-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO
ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits] ADD CONSTRAINT [FK_CourseTranscriptEarnedAdditionalCredits_AdditionalCreditType] FOREIGN KEY ([AdditionalCreditTypeId]) REFERENCES [edfi].[AdditionalCreditType] ([AdditionalCreditTypeId])
GO
ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits] ADD CONSTRAINT [FK_CourseTranscriptEarnedAdditionalCredits_CourseTranscript] FOREIGN KEY ([CourseAttemptResultTypeId], [StudentUSI], [EducationOrganizationId], [CourseEducationOrganizationId], [SchoolYear], [TermDescriptorId], [CourseCode]) REFERENCES [edfi].[CourseTranscript] ([CourseAttemptResultTypeId], [StudentUSI], [EducationOrganizationId], [CourseEducationOrganizationId], [SchoolYear], [TermDescriptorId], [CourseCode]) ON DELETE CASCADE
GO
