-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseTranscriptEarnedAdditionalCredits_PK] on [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO
ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits] ADD CONSTRAINT [CourseTranscriptEarnedAdditionalCredits_PK] PRIMARY KEY CLUSTERED  ([AdditionalCreditTypeDescriptorId], [CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
GO

PRINT N'Creating index [FK_CourseTranscriptEarnedAdditionalCredits_AdditionalCreditTypeDescriptor] on [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscriptEarnedAdditionalCredits_AdditionalCreditTypeDescriptor] ON [edfi].[CourseTranscriptEarnedAdditionalCredits] ([AdditionalCreditTypeDescriptorId])
GO

PRINT N'Creating index [FK_CourseTranscriptEarnedAdditionalCredits_CourseTranscript] on [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseTranscriptEarnedAdditionalCredits_CourseTranscript] ON [edfi].[CourseTranscriptEarnedAdditionalCredits] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO
ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits] ADD CONSTRAINT [CourseTranscriptEarnedAdditionalCredits_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
