-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseTranscriptEarnedAdditionalCredits_PK] on [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO
ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits] ADD CONSTRAINT [CourseTranscriptEarnedAdditionalCredits_PK] PRIMARY KEY CLUSTERED  ([AdditionalCreditTypeId], [CourseAttemptResultTypeId], [StudentUSI], [EducationOrganizationId], [CourseEducationOrganizationId], [SchoolYear], [TermDescriptorId], [CourseCode])
GO
PRINT N'Creating index [FK_CourseTranscriptEarnedAdditionalCredits_AdditionalCreditType] on [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscriptEarnedAdditionalCredits_AdditionalCreditType] ON [edfi].[CourseTranscriptEarnedAdditionalCredits] ([AdditionalCreditTypeId])
GO
PRINT N'Creating index [FK_CourseTranscriptEarnedAdditionalCredits_CourseTranscript] on [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscriptEarnedAdditionalCredits_CourseTranscript] ON [edfi].[CourseTranscriptEarnedAdditionalCredits] ([CourseAttemptResultTypeId], [StudentUSI], [EducationOrganizationId], [CourseEducationOrganizationId], [SchoolYear], [TermDescriptorId], [CourseCode])
GO

PRINT N'Adding constraints to [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO
ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits] ADD CONSTRAINT [CourseTranscriptEarnedAdditionalCredits_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

