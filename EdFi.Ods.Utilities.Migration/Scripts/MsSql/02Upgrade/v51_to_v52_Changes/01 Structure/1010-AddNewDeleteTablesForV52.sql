-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE [tracked_deletes_edfi].[AncestryEthnicOriginDescriptor] (
    [AncestryEthnicOriginDescriptorId] INT              NOT NULL,
    [Id]                               UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]                    BIGINT           NOT NULL,
    CONSTRAINT [PK_AncestryEthnicOriginDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[AssessmentScoreRangeLearningStandard] (
    [AssessmentIdentifier] NVARCHAR (60)    NOT NULL,
    [Namespace]            NVARCHAR (255)   NOT NULL,
    [ScoreRangeId]         NVARCHAR (60)    NOT NULL,
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]        BIGINT           NOT NULL,
    CONSTRAINT [PK_AssessmentScoreRangeLearningStandard] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[OrganizationDepartment] (
    [OrganizationDepartmentId] INT              NOT NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]            BIGINT           NOT NULL,
    CONSTRAINT [PK_OrganizationDepartment] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[StudentDisciplineIncidentBehaviorAssociation] (
    [BehaviorDescriptorId] INT              NOT NULL,
    [IncidentIdentifier]   NVARCHAR (20)    NOT NULL,
    [SchoolId]             INT              NOT NULL,
    [StudentUSI]           INT              NOT NULL,
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]        BIGINT           NOT NULL,
    CONSTRAINT [PK_StudentDisciplineIncidentBehaviorAssociation] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[StudentDisciplineIncidentNonOffenderAssociation] (
    [IncidentIdentifier] NVARCHAR (20)    NOT NULL,
    [SchoolId]           INT              NOT NULL,
    [StudentUSI]         INT              NOT NULL,
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]      BIGINT           NOT NULL,
    CONSTRAINT [PK_StudentDisciplineIncidentNonOffenderAssociation] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO
