-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[edfi].[FK_SessionAcademicWeek_Session_SchoolId]'))
	ALTER TABLE edfi.SessionAcademicWeek
		DROP CONSTRAINT FK_SessionAcademicWeek_Session_SchoolId
GO
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[edfi].[FK_SessionAcademicWeek_Session]'))
	ALTER TABLE edfi.SessionAcademicWeek
		DROP CONSTRAINT FK_SessionAcademicWeek_Session
GO
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[edfi].[FK_SessionGradingPeriod_Session_SchoolId]'))
	ALTER TABLE edfi.SessionGradingPeriod
		DROP CONSTRAINT FK_SessionGradingPeriod_Session_SchoolId
GO
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[edfi].[FK_SessionGradingPeriod_Session]'))
	ALTER TABLE edfi.SessionGradingPeriod
		DROP CONSTRAINT FK_SessionGradingPeriod_Session
GO
ALTER TABLE edfi.Session SET (LOCK_ESCALATION = TABLE)
GO
ALTER TABLE edfi.SessionGradingPeriod ADD CONSTRAINT
	FK_SessionGradingPeriod_Session FOREIGN KEY
	(
	SchoolId,
	SchoolYear,
	TermDescriptorId
	) REFERENCES edfi.Session
	(
	SchoolId,
	SchoolYear,
	TermDescriptorId
	) ON UPDATE  CASCADE 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE edfi.SessionGradingPeriod SET (LOCK_ESCALATION = TABLE)
GO
ALTER TABLE edfi.SessionAcademicWeek ADD CONSTRAINT
	FK_SessionAcademicWeek_Session FOREIGN KEY
	(
	SchoolId,
	SchoolYear,
	TermDescriptorId
	) REFERENCES edfi.Session
	(
	SchoolId,
	SchoolYear,
	TermDescriptorId
	) ON UPDATE  CASCADE 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE edfi.SessionAcademicWeek SET (LOCK_ESCALATION = TABLE)
GO
