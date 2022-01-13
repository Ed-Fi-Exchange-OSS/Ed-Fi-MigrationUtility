-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.


ALTER TABLE [edfi].[AssessmentScoreRangeLearningStandard]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_AssessmentScoreRangeLearningStandard_ChangeVersion]
    ON [edfi].[AssessmentScoreRangeLearningStandard]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_StudentDisciplineIncidentBehaviorAssociation_ChangeVersion]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociation]([ChangeVersion] ASC);
GO

ALTER TABLE [edfi].[StudentDisciplineIncidentNonOffenderAssociation]
    ADD [ChangeVersion] BIGINT  DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;
GO

CREATE NONCLUSTERED INDEX [UX_StudentDisciplineIncidentNonOffenderAssociation_ChangeVersion]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation]([ChangeVersion] ASC);
GO



CREATE TABLE [changes].[Snapshot] (
    [SnapshotIdentifier] NVARCHAR (32)    NOT NULL,
    [SnapshotDateTime]   DATETIME2 (7)    NOT NULL,
    [CreateDate]         DATETIME2 (7)    CONSTRAINT [Snapshot_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]   DATETIME2 (7)    CONSTRAINT [Snapshot_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                 UNIQUEIDENTIFIER CONSTRAINT [Snapshot_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [Snapshot_PK] PRIMARY KEY CLUSTERED ([SnapshotIdentifier] ASC)
);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_Snapshot_Id]
    ON [changes].[Snapshot]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date and time that the snapshot was initiated.', @level0type = N'SCHEMA', @level0name = N'changes', @level1type = N'TABLE', @level1name = N'Snapshot', @level2type = N'COLUMN', @level2name = N'SnapshotDateTime';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique identifier of the snapshot.', @level0type = N'SCHEMA', @level0name = N'changes', @level1type = N'TABLE', @level1name = N'Snapshot', @level2type = N'COLUMN', @level2name = N'SnapshotIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Contains information about a snapshot used to create isolation from ongoing changes for API client synchronization.', @level0type = N'SCHEMA', @level0name = N'changes', @level1type = N'TABLE', @level1name = N'Snapshot';
GO