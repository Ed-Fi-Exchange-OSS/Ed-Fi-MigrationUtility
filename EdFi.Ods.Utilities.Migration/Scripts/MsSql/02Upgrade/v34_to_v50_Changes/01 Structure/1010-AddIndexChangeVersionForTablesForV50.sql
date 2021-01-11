-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

--  Alter Table [edfi].[Person]---
ALTER TABLE [edfi].[Person]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_Person_ChangeVersion]
    ON [edfi].[Person]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[Survey]---
ALTER TABLE [edfi].[Survey]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_Survey_ChangeVersion]
    ON [edfi].[Survey]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[SurveyCourseAssociation]---
ALTER TABLE [edfi].[SurveyCourseAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_SurveyCourseAssociation_ChangeVersion]
    ON [edfi].[SurveyCourseAssociation]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[[SurveyProgramAssociation]]---
ALTER TABLE [edfi].[SurveyProgramAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_SurveyProgramAssociation_ChangeVersion]
    ON [edfi].[SurveyProgramAssociation]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[[[SurveyQuestion]]]---
ALTER TABLE [edfi].[SurveyQuestion]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_SurveyQuestion_ChangeVersion]
    ON [edfi].[SurveyQuestion]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[[SurveyQuestionResponse]]---
ALTER TABLE [edfi].[SurveyQuestionResponse]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_SurveyQuestionResponse_ChangeVersion]
    ON [edfi].[SurveyQuestionResponse]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[SurveyResponse]---
ALTER TABLE [edfi].[SurveyResponse]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_SurveyResponse_ChangeVersion]
    ON [edfi].[SurveyResponse]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[SurveyResponse]---
ALTER TABLE [edfi].[SurveyResponseEducationOrganizationTargetAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_SurveyResponseEducationOrganizationTargetAssociation_ChangeVersion]
    ON [edfi].[SurveyResponseEducationOrganizationTargetAssociation]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[SurveyResponseStaffTargetAssociation]---
ALTER TABLE [edfi].[SurveyResponseStaffTargetAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO


CREATE NONCLUSTERED INDEX [UX_SurveyResponseStaffTargetAssociation_ChangeVersion]
    ON [edfi].[SurveyResponseStaffTargetAssociation]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[[SurveySection]]---
ALTER TABLE [edfi].[SurveySection]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_SurveySection_ChangeVersion]
    ON [edfi].[SurveySection]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[SurveySectionAssociation]---
ALTER TABLE [edfi].[SurveySectionAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_SurveySectionAssociation_ChangeVersion]
    ON [edfi].[SurveySectionAssociation]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[SurveySectionResponse]---
ALTER TABLE [edfi].[SurveySectionResponse]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_SurveySectionResponse_ChangeVersion]
    ON [edfi].[SurveySectionResponse]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]---
ALTER TABLE [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_SurveySectionResponseEducationOrganizationTargetAssociation_ChangeVersion]
    ON [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]([ChangeVersion] ASC);
GO

--  Alter Table [edfi].[SurveySectionResponseStaffTargetAssociation]---
ALTER TABLE [edfi].[SurveySectionResponseStaffTargetAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_SurveySectionResponseStaffTargetAssociation_ChangeVersion]
    ON [edfi].[SurveySectionResponseStaffTargetAssociation]([ChangeVersion] ASC);
GO