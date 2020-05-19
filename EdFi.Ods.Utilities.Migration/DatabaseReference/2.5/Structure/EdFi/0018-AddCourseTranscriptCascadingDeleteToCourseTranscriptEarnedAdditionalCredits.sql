-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE edfi.CourseTranscriptEarnedAdditionalCredits
	DROP CONSTRAINT FK_CourseTranscriptEarnedAdditionalCredits_CourseTranscript
GO
ALTER TABLE edfi.CourseTranscript SET (LOCK_ESCALATION = TABLE)
GO
ALTER TABLE edfi.CourseTranscriptEarnedAdditionalCredits ADD CONSTRAINT
	FK_CourseTranscriptEarnedAdditionalCredits_CourseTranscript FOREIGN KEY
	(
	CourseAttemptResultTypeId,
	StudentUSI,
	EducationOrganizationId,
	CourseEducationOrganizationId,
	SchoolYear,
	TermDescriptorId,
	CourseCode
	) REFERENCES edfi.CourseTranscript
	(
	CourseAttemptResultTypeId,
	StudentUSI,
	EducationOrganizationId,
	CourseEducationOrganizationId,
	SchoolYear,
	TermDescriptorId,
	CourseCode
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 	
GO
ALTER TABLE edfi.CourseTranscriptEarnedAdditionalCredits SET (LOCK_ESCALATION = TABLE)
GO
