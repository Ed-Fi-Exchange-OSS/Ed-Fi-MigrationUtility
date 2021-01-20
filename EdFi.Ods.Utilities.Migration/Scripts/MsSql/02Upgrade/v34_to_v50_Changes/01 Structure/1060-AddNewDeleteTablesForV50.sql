-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE [tracked_deletes_edfi].[IndicatorDescriptor] (
    [IndicatorDescriptorId] INT              NOT NULL,
    [Id]                    UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]         BIGINT           NOT NULL,
    CONSTRAINT [PK_IndicatorDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[IndicatorGroupDescriptor] (
    [IndicatorGroupDescriptorId] INT              NOT NULL,
    [Id]                         UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]              BIGINT           NOT NULL,
    CONSTRAINT [PK_IndicatorGroupDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[IndicatorLevelDescriptor] (
    [IndicatorLevelDescriptorId] INT              NOT NULL,
    [Id]                         UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]              BIGINT           NOT NULL,
    CONSTRAINT [PK_IndicatorLevelDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[Person] (
    [PersonId]                 NVARCHAR (32)    NOT NULL,
    [SourceSystemDescriptorId] INT              NOT NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]            BIGINT           NOT NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[QuestionFormDescriptor] (
    [QuestionFormDescriptorId] INT              NOT NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]            BIGINT           NOT NULL,
    CONSTRAINT [PK_QuestionFormDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SourceSystemDescriptor] (
    [SourceSystemDescriptorId] INT              NOT NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]            BIGINT           NOT NULL,
    CONSTRAINT [PK_SourceSystemDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[Survey] (
    [Namespace]        NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier] NVARCHAR (60)    NOT NULL,
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]    BIGINT           NOT NULL,
    CONSTRAINT [PK_Survey] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveyCategoryDescriptor] (
    [SurveyCategoryDescriptorId] INT              NOT NULL,
    [Id]                         UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]              BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveyCategoryDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveyCourseAssociation] (
    [CourseCode]              NVARCHAR (60)    NOT NULL,
    [EducationOrganizationId] INT              NOT NULL,
    [Namespace]               NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]        NVARCHAR (60)    NOT NULL,
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]           BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveyCourseAssociation] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveyLevelDescriptor] (
    [SurveyLevelDescriptorId] INT              NOT NULL,
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]           BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveyLevelDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveyProgramAssociation] (
    [EducationOrganizationId] INT              NOT NULL,
    [Namespace]               NVARCHAR (255)   NOT NULL,
    [ProgramName]             NVARCHAR (60)    NOT NULL,
    [ProgramTypeDescriptorId] INT              NOT NULL,
    [SurveyIdentifier]        NVARCHAR (60)    NOT NULL,
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]           BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveyProgramAssociation] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveyQuestion] (
    [Namespace]        NVARCHAR (255)   NOT NULL,
    [QuestionCode]     NVARCHAR (60)    NOT NULL,
    [SurveyIdentifier] NVARCHAR (60)    NOT NULL,
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]    BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveyQuestion] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveyQuestionResponse] (
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [QuestionCode]             NVARCHAR (60)    NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]            BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveyQuestionResponse] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveyResponse] (
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]            BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveyResponse] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveyResponseEducationOrganizationTargetAssociation] (
    [EducationOrganizationId]  INT              NOT NULL,
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]            BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveyResponseEducationOrganizationTargetAssociation] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveyResponseStaffTargetAssociation] (
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [StaffUSI]                 INT              NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]            BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveyResponseStaffTargetAssociation] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveySection] (
    [Namespace]          NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]   NVARCHAR (60)    NOT NULL,
    [SurveySectionTitle] NVARCHAR (255)   NOT NULL,
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]      BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveySection] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveySectionAssociation] (
    [LocalCourseCode]   NVARCHAR (60)    NOT NULL,
    [Namespace]         NVARCHAR (255)   NOT NULL,
    [SchoolId]          INT              NOT NULL,
    [SchoolYear]        SMALLINT         NOT NULL,
    [SectionIdentifier] NVARCHAR (255)   NOT NULL,
    [SessionName]       NVARCHAR (60)    NOT NULL,
    [SurveyIdentifier]  NVARCHAR (60)    NOT NULL,
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]     BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveySectionAssociation] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveySectionResponse] (
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [SurveySectionTitle]       NVARCHAR (255)   NOT NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]            BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveySectionResponse] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveySectionResponseEducationOrganizationTargetAssociation] (
    [EducationOrganizationId]  INT              NOT NULL,
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [SurveySectionTitle]       NVARCHAR (255)   NOT NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]            BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveySectionResponseEducationOrganizationTargetAssociation] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[SurveySectionResponseStaffTargetAssociation] (
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [StaffUSI]                 INT              NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [SurveySectionTitle]       NVARCHAR (255)   NOT NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]            BIGINT           NOT NULL,
    CONSTRAINT [PK_SurveySectionResponseStaffTargetAssociation] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO


