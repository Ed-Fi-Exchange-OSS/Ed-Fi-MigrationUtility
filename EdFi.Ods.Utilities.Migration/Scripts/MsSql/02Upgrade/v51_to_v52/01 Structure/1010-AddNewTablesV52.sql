-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE [edfi].[AssessmentScoreRangeLearningStandard] (
    [AssessmentIdentifier]                  NVARCHAR (60)    NOT NULL,
    [Namespace]                             NVARCHAR (255)   NOT NULL,
    [ScoreRangeId]                          NVARCHAR (60)    NOT NULL,
    [AssessmentReportingMethodDescriptorId] INT              NULL,
    [MinimumScore]                          NVARCHAR (35)    NOT NULL,
    [MaximumScore]                          NVARCHAR (35)    NOT NULL,
    [IdentificationCode]                    NVARCHAR (60)    NULL,
    [Discriminator]                         NVARCHAR (128)   NULL,
    [CreateDate]                            DATETIME2 (7)    CONSTRAINT [AssessmentScoreRangeLearningStandard_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]                      DATETIME2 (7)    CONSTRAINT [AssessmentScoreRangeLearningStandard_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                                    UNIQUEIDENTIFIER CONSTRAINT [AssessmentScoreRangeLearningStandard_DF_Id] DEFAULT (newid()) NOT NULL,
    [ChangeVersion]                         BIGINT           DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL,
    CONSTRAINT [AssessmentScoreRangeLearningStandard_PK] PRIMARY KEY CLUSTERED ([AssessmentIdentifier] ASC, [Namespace] ASC, [ScoreRangeId] ASC),
    CONSTRAINT [FK_AssessmentScoreRangeLearningStandard_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace]),
    CONSTRAINT [FK_AssessmentScoreRangeLearningStandard_AssessmentReportingMethodDescriptor] FOREIGN KEY ([AssessmentReportingMethodDescriptorId]) REFERENCES [edfi].[AssessmentReportingMethodDescriptor] ([AssessmentReportingMethodDescriptorId]),
    CONSTRAINT [FK_AssessmentScoreRangeLearningStandard_ObjectiveAssessment] FOREIGN KEY ([AssessmentIdentifier], [IdentificationCode], [Namespace]) REFERENCES [edfi].[ObjectiveAssessment] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
);
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentScoreRangeLearningStandard_Assessment]
    ON [edfi].[AssessmentScoreRangeLearningStandard]([AssessmentIdentifier] ASC, [Namespace] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentScoreRangeLearningStandard_AssessmentReportingMethodDescriptor]
    ON [edfi].[AssessmentScoreRangeLearningStandard]([AssessmentReportingMethodDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentScoreRangeLearningStandard_ObjectiveAssessment]
    ON [edfi].[AssessmentScoreRangeLearningStandard]([AssessmentIdentifier] ASC, [IdentificationCode] ASC, [Namespace] ASC);
GO

CREATE NONCLUSTERED INDEX [UX_AssessmentScoreRangeLearningStandard_ChangeVersion]
    ON [edfi].[AssessmentScoreRangeLearningStandard]([ChangeVersion] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_AssessmentScoreRangeLearningStandard_Id]
    ON [edfi].[AssessmentScoreRangeLearningStandard]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

CREATE TABLE [edfi].[AssessmentScoreRangeLearningStandardLearningStandard] (
    [AssessmentIdentifier] NVARCHAR (60)  NOT NULL,
    [LearningStandardId]   NVARCHAR (60)  NOT NULL,
    [Namespace]            NVARCHAR (255) NOT NULL,
    [ScoreRangeId]         NVARCHAR (60)  NOT NULL,
    [CreateDate]           DATETIME2 (7)  CONSTRAINT [AssessmentScoreRangeLearningStandardLearningStandard_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [AssessmentScoreRangeLearningStandardLearningStandard_PK] PRIMARY KEY CLUSTERED ([AssessmentIdentifier] ASC, [LearningStandardId] ASC, [Namespace] ASC, [ScoreRangeId] ASC),
    CONSTRAINT [FK_AssessmentScoreRangeLearningStandardLearningStandard_AssessmentScoreRangeLearningStandard] FOREIGN KEY ([AssessmentIdentifier], [Namespace], [ScoreRangeId]) REFERENCES [edfi].[AssessmentScoreRangeLearningStandard] ([AssessmentIdentifier], [Namespace], [ScoreRangeId]) ON DELETE CASCADE,
    CONSTRAINT [FK_AssessmentScoreRangeLearningStandardLearningStandard_LearningStandard] FOREIGN KEY ([LearningStandardId]) REFERENCES [edfi].[LearningStandard] ([LearningStandardId])
);
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentScoreRangeLearningStandardLearningStandard_AssessmentScoreRangeLearningStandard]
    ON [edfi].[AssessmentScoreRangeLearningStandardLearningStandard]([AssessmentIdentifier] ASC, [Namespace] ASC, [ScoreRangeId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentScoreRangeLearningStandardLearningStandard_LearningStandard]
    ON [edfi].[AssessmentScoreRangeLearningStandardLearningStandard]([LearningStandardId] ASC);
GO

CREATE TABLE [edfi].[DisciplineActionStudentDisciplineIncidentBehaviorAssociation] (
    [BehaviorDescriptorId]       INT           NOT NULL,
    [DisciplineActionIdentifier] NVARCHAR (20) NOT NULL,
    [DisciplineDate]             DATE          NOT NULL,
    [IncidentIdentifier]         NVARCHAR (20) NOT NULL,
    [SchoolId]                   INT           NOT NULL,
    [StudentUSI]                 INT           NOT NULL,
    [CreateDate]                 DATETIME2 (7) CONSTRAINT [DisciplineActionStudentDisciplineIncidentBehaviorAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [DisciplineActionStudentDisciplineIncidentBehaviorAssociation_PK] PRIMARY KEY CLUSTERED ([BehaviorDescriptorId] ASC, [DisciplineActionIdentifier] ASC, [DisciplineDate] ASC, [IncidentIdentifier] ASC, [SchoolId] ASC, [StudentUSI] ASC),
    CONSTRAINT [FK_DisciplineActionStudentDisciplineIncidentBehaviorAssociation_DisciplineAction] FOREIGN KEY ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI]) REFERENCES [edfi].[DisciplineAction] ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI]) ON DELETE CASCADE,
    CONSTRAINT [FK_DisciplineActionStudentDisciplineIncidentBehaviorAssociation_StudentDisciplineIncidentBehaviorAssociation] FOREIGN KEY ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI]) REFERENCES [edfi].[StudentDisciplineIncidentBehaviorAssociation] ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI])
);
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionStudentDisciplineIncidentBehaviorAssociation_DisciplineAction]
    ON [edfi].[DisciplineActionStudentDisciplineIncidentBehaviorAssociation]([DisciplineActionIdentifier] ASC, [DisciplineDate] ASC, [StudentUSI] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionStudentDisciplineIncidentBehaviorAssociation_StudentDisciplineIncidentBehaviorAssociation]
    ON [edfi].[DisciplineActionStudentDisciplineIncidentBehaviorAssociation]([BehaviorDescriptorId] ASC, [IncidentIdentifier] ASC, [SchoolId] ASC, [StudentUSI] ASC);
GO

CREATE TABLE [edfi].[GeneralStudentProgramAssociationProgramParticipationStatus] (
    [BeginDate]                       DATE          NOT NULL,
    [EducationOrganizationId]         INT           NOT NULL,
    [ParticipationStatusDescriptorId] INT           NOT NULL,
    [ProgramEducationOrganizationId]  INT           NOT NULL,
    [ProgramName]                     NVARCHAR (60) NOT NULL,
    [ProgramTypeDescriptorId]         INT           NOT NULL,
    [StatusBeginDate]                 DATE          NOT NULL,
    [StudentUSI]                      INT           NOT NULL,
    [StatusEndDate]                   DATE          NULL,
    [DesignatedBy]                    NVARCHAR (60) NULL,
    [CreateDate]                      DATETIME2 (7) CONSTRAINT [GeneralStudentProgramAssociationProgramParticipationStatus_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [GeneralStudentProgramAssociationProgramParticipationStatus_PK] PRIMARY KEY CLUSTERED ([BeginDate] ASC, [EducationOrganizationId] ASC, [ParticipationStatusDescriptorId] ASC, [ProgramEducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC, [StatusBeginDate] ASC, [StudentUSI] ASC),
    CONSTRAINT [FK_GeneralStudentProgramAssociationProgramParticipationStatus_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE,
    CONSTRAINT [FK_GeneralStudentProgramAssociationProgramParticipationStatus_ParticipationStatusDescriptor] FOREIGN KEY ([ParticipationStatusDescriptorId]) REFERENCES [edfi].[ParticipationStatusDescriptor] ([ParticipationStatusDescriptorId])
);
GO

CREATE NONCLUSTERED INDEX [FK_GeneralStudentProgramAssociationProgramParticipationStatus_GeneralStudentProgramAssociation]
    ON [edfi].[GeneralStudentProgramAssociationProgramParticipationStatus]([BeginDate] ASC, [EducationOrganizationId] ASC, [ProgramEducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC, [StudentUSI] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_GeneralStudentProgramAssociationProgramParticipationStatus_ParticipationStatusDescriptor]
    ON [edfi].[GeneralStudentProgramAssociationProgramParticipationStatus]([ParticipationStatusDescriptorId] ASC);
GO

CREATE TABLE [edfi].[OrganizationDepartment] (
    [OrganizationDepartmentId]      INT NOT NULL,
    [AcademicSubjectDescriptorId]   INT NULL,
    [ParentEducationOrganizationId] INT NULL,
    CONSTRAINT [OrganizationDepartment_PK] PRIMARY KEY CLUSTERED ([OrganizationDepartmentId] ASC),
    CONSTRAINT [FK_OrganizationDepartment_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId]),
    CONSTRAINT [FK_OrganizationDepartment_EducationOrganization] FOREIGN KEY ([OrganizationDepartmentId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]) ON DELETE CASCADE,
    CONSTRAINT [FK_OrganizationDepartment_EducationOrganization1] FOREIGN KEY ([ParentEducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
);
GO

CREATE NONCLUSTERED INDEX [FK_OrganizationDepartment_AcademicSubjectDescriptor]
    ON [edfi].[OrganizationDepartment]([AcademicSubjectDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_OrganizationDepartment_EducationOrganization1]
    ON [edfi].[OrganizationDepartment]([ParentEducationOrganizationId] ASC);
GO

CREATE TABLE [edfi].[StaffAncestryEthnicOrigin] (
    [AncestryEthnicOriginDescriptorId] INT           NOT NULL,
    [StaffUSI]                         INT           NOT NULL,
    [CreateDate]                       DATETIME2 (7) CONSTRAINT [StaffAncestryEthnicOrigin_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [StaffAncestryEthnicOrigin_PK] PRIMARY KEY CLUSTERED ([AncestryEthnicOriginDescriptorId] ASC, [StaffUSI] ASC),
    CONSTRAINT [FK_StaffAncestryEthnicOrigin_AncestryEthnicOriginDescriptor] FOREIGN KEY ([AncestryEthnicOriginDescriptorId]) REFERENCES [edfi].[AncestryEthnicOriginDescriptor] ([AncestryEthnicOriginDescriptorId]),
    CONSTRAINT [FK_StaffAncestryEthnicOrigin_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE
);
GO

CREATE NONCLUSTERED INDEX [FK_StaffAncestryEthnicOrigin_AncestryEthnicOriginDescriptor]
    ON [edfi].[StaffAncestryEthnicOrigin]([AncestryEthnicOriginDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StaffAncestryEthnicOrigin_Staff]
    ON [edfi].[StaffAncestryEthnicOrigin]([StaffUSI] ASC);
GO

CREATE TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociation] (
    [BehaviorDescriptorId]        INT              NOT NULL,
    [IncidentIdentifier]          NVARCHAR (20)    NOT NULL,
    [SchoolId]                    INT              NOT NULL,
    [StudentUSI]                  INT              NOT NULL,
    [BehaviorDetailedDescription] NVARCHAR (1024)  NULL,
    [Discriminator]               NVARCHAR (128)   NULL,
    [CreateDate]                  DATETIME2 (7)    CONSTRAINT [StudentDisciplineIncidentBehaviorAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]            DATETIME2 (7)    CONSTRAINT [StudentDisciplineIncidentBehaviorAssociation_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                          UNIQUEIDENTIFIER CONSTRAINT [StudentDisciplineIncidentBehaviorAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    [ChangeVersion]               BIGINT           DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL,
    CONSTRAINT [StudentDisciplineIncidentBehaviorAssociation_PK] PRIMARY KEY CLUSTERED ([BehaviorDescriptorId] ASC, [IncidentIdentifier] ASC, [SchoolId] ASC, [StudentUSI] ASC),
    CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociation_BehaviorDescriptor] FOREIGN KEY ([BehaviorDescriptorId]) REFERENCES [edfi].[BehaviorDescriptor] ([BehaviorDescriptorId]),
    CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociation_DisciplineIncident] FOREIGN KEY ([IncidentIdentifier], [SchoolId]) REFERENCES [edfi].[DisciplineIncident] ([IncidentIdentifier], [SchoolId]),
    CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
);
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentBehaviorAssociation_BehaviorDescriptor]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociation]([BehaviorDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentBehaviorAssociation_DisciplineIncident]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociation]([IncidentIdentifier] ASC, [SchoolId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentBehaviorAssociation_Student]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociation]([StudentUSI] ASC);
GO

CREATE NONCLUSTERED INDEX [UX_StudentDisciplineIncidentBehaviorAssociation_ChangeVersion]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociation]([ChangeVersion] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentDisciplineIncidentBehaviorAssociation_Id]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

CREATE TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode] (
    [BehaviorDescriptorId]                            INT           NOT NULL,
    [DisciplineIncidentParticipationCodeDescriptorId] INT           NOT NULL,
    [IncidentIdentifier]                              NVARCHAR (20) NOT NULL,
    [SchoolId]                                        INT           NOT NULL,
    [StudentUSI]                                      INT           NOT NULL,
    [CreateDate]                                      DATETIME2 (7) CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode_PK] PRIMARY KEY CLUSTERED ([BehaviorDescriptorId] ASC, [DisciplineIncidentParticipationCodeDescriptorId] ASC, [IncidentIdentifier] ASC, [SchoolId] ASC, [StudentUSI] ASC),
    CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode_DisciplineIncidentParticipationCodeDescriptor] FOREIGN KEY ([DisciplineIncidentParticipationCodeDescriptorId]) REFERENCES [edfi].[DisciplineIncidentParticipationCodeDescriptor] ([DisciplineIncidentParticipationCodeDescriptorId]),
    CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode_StudentDisciplineIncidentBehaviorAssociation] FOREIGN KEY ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI]) REFERENCES [edfi].[StudentDisciplineIncidentBehaviorAssociation] ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI]) ON DELETE CASCADE
);
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode_DisciplineIncidentParticipationCodeDescriptor]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode]([DisciplineIncidentParticipationCodeDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode_StudentDisciplineIncidentBehaviorAssociation]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode]([BehaviorDescriptorId] ASC, [IncidentIdentifier] ASC, [SchoolId] ASC, [StudentUSI] ASC);
GO

CREATE TABLE [edfi].[StudentDisciplineIncidentNonOffenderAssociation] (
    [IncidentIdentifier] NVARCHAR (20)    NOT NULL,
    [SchoolId]           INT              NOT NULL,
    [StudentUSI]         INT              NOT NULL,
    [Discriminator]      NVARCHAR (128)   NULL,
    [CreateDate]         DATETIME2 (7)    CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]   DATETIME2 (7)    CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociation_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                 UNIQUEIDENTIFIER CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    [ChangeVersion]      BIGINT           DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL,
    CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociation_PK] PRIMARY KEY CLUSTERED ([IncidentIdentifier] ASC, [SchoolId] ASC, [StudentUSI] ASC),
    CONSTRAINT [FK_StudentDisciplineIncidentNonOffenderAssociation_DisciplineIncident] FOREIGN KEY ([IncidentIdentifier], [SchoolId]) REFERENCES [edfi].[DisciplineIncident] ([IncidentIdentifier], [SchoolId]),
    CONSTRAINT [FK_StudentDisciplineIncidentNonOffenderAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
);
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentNonOffenderAssociation_DisciplineIncident]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation]([IncidentIdentifier] ASC, [SchoolId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentNonOffenderAssociation_Student]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation]([StudentUSI] ASC);
GO

CREATE NONCLUSTERED INDEX [UX_StudentDisciplineIncidentNonOffenderAssociation_ChangeVersion]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation]([ChangeVersion] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentDisciplineIncidentNonOffenderAssociation_Id]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO


CREATE TABLE [edfi].[StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode] (
    [DisciplineIncidentParticipationCodeDescriptorId] INT           NOT NULL,
    [IncidentIdentifier]                              NVARCHAR (20) NOT NULL,
    [SchoolId]                                        INT           NOT NULL,
    [StudentUSI]                                      INT           NOT NULL,
    [CreateDate]                                      DATETIME2 (7) CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode_PK] PRIMARY KEY CLUSTERED ([DisciplineIncidentParticipationCodeDescriptorId] ASC, [IncidentIdentifier] ASC, [SchoolId] ASC, [StudentUSI] ASC),
    CONSTRAINT [FK_StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode_DisciplineIncidentParticipationCodeDescrip] FOREIGN KEY ([DisciplineIncidentParticipationCodeDescriptorId]) REFERENCES [edfi].[DisciplineIncidentParticipationCodeDescriptor] ([DisciplineIncidentParticipationCodeDescriptorId]),
    CONSTRAINT [FK_StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode_StudentDisciplineIncidentNonOffenderAssoci] FOREIGN KEY ([IncidentIdentifier], [SchoolId], [StudentUSI]) REFERENCES [edfi].[StudentDisciplineIncidentNonOffenderAssociation] ([IncidentIdentifier], [SchoolId], [StudentUSI]) ON DELETE CASCADE
);
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode_DisciplineIncidentParticipationCodeDescrip]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode]([DisciplineIncidentParticipationCodeDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode_StudentDisciplineIncidentNonOffenderAssoci]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode]([IncidentIdentifier] ASC, [SchoolId] ASC, [StudentUSI] ASC);
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationAncestryEthnicOrigin] (
    [AncestryEthnicOriginDescriptorId] INT           NOT NULL,
    [EducationOrganizationId]          INT           NOT NULL,
    [StudentUSI]                       INT           NOT NULL,
    [CreateDate]                       DATETIME2 (7) CONSTRAINT [StudentEducationOrganizationAssociationAncestryEthnicOrigin_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationAncestryEthnicOrigin_PK] PRIMARY KEY CLUSTERED ([AncestryEthnicOriginDescriptorId] ASC, [EducationOrganizationId] ASC, [StudentUSI] ASC),
    CONSTRAINT [FK_StudentEducationOrganizationAssociationAncestryEthnicOrigin_AncestryEthnicOriginDescriptor] FOREIGN KEY ([AncestryEthnicOriginDescriptorId]) REFERENCES [edfi].[AncestryEthnicOriginDescriptor] ([AncestryEthnicOriginDescriptorId]),
    CONSTRAINT [FK_StudentEducationOrganizationAssociationAncestryEthnicOrigin_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE
);
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationAncestryEthnicOrigin_AncestryEthnicOriginDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociationAncestryEthnicOrigin]([AncestryEthnicOriginDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationAncestryEthnicOrigin_StudentEducationOrganizationAssociation]
    ON [edfi].[StudentEducationOrganizationAssociationAncestryEthnicOrigin]([EducationOrganizationId] ASC, [StudentUSI] ASC);
GO




