-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- Table [edfi].[EducationOrganizationIndicator] --
CREATE TABLE [edfi].[EducationOrganizationIndicator] (
    [EducationOrganizationId]    INT           NOT NULL,
    [IndicatorDescriptorId]      INT           NOT NULL,
    [DesignatedBy]               NVARCHAR (60) NULL,
    [IndicatorValue]             NVARCHAR (35) NULL,
    [IndicatorLevelDescriptorId] INT           NULL,
    [IndicatorGroupDescriptorId] INT           NULL,
    [CreateDate]                 DATETIME2 (7) CONSTRAINT [EducationOrganizationIndicator_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [EducationOrganizationIndicator_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [IndicatorDescriptorId] ASC),
    CONSTRAINT [FK_EducationOrganizationIndicator_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]) ON DELETE CASCADE,
    CONSTRAINT [FK_EducationOrganizationIndicator_IndicatorDescriptor] FOREIGN KEY ([IndicatorDescriptorId]) REFERENCES [edfi].[IndicatorDescriptor] ([IndicatorDescriptorId]),
    CONSTRAINT [FK_EducationOrganizationIndicator_IndicatorGroupDescriptor] FOREIGN KEY ([IndicatorGroupDescriptorId]) REFERENCES [edfi].[IndicatorGroupDescriptor] ([IndicatorGroupDescriptorId]),
    CONSTRAINT [FK_EducationOrganizationIndicator_IndicatorLevelDescriptor] FOREIGN KEY ([IndicatorLevelDescriptorId]) REFERENCES [edfi].[IndicatorLevelDescriptor] ([IndicatorLevelDescriptorId])
);
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationIndicator_EducationOrganization]
    ON [edfi].[EducationOrganizationIndicator]([EducationOrganizationId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationIndicator_IndicatorDescriptor]
    ON [edfi].[EducationOrganizationIndicator]([IndicatorDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationIndicator_IndicatorGroupDescriptor]
    ON [edfi].[EducationOrganizationIndicator]([IndicatorGroupDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationIndicator_IndicatorLevelDescriptor]
    ON [edfi].[EducationOrganizationIndicator]([IndicatorLevelDescriptorId] ASC);
GO

-- Table [edfi].[EducationOrganizationIndicatorPeriod] --
CREATE TABLE [edfi].[EducationOrganizationIndicatorPeriod] (
    [BeginDate]               DATE          NOT NULL,
    [EducationOrganizationId] INT           NOT NULL,
    [IndicatorDescriptorId]   INT           NOT NULL,
    [EndDate]                 DATE          NULL,
    [CreateDate]              DATETIME2 (7) CONSTRAINT [EducationOrganizationIndicatorPeriod_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [EducationOrganizationIndicatorPeriod_PK] PRIMARY KEY CLUSTERED ([BeginDate] ASC, [EducationOrganizationId] ASC, [IndicatorDescriptorId] ASC),
    CONSTRAINT [FK_EducationOrganizationIndicatorPeriod_EducationOrganizationIndicator] FOREIGN KEY ([EducationOrganizationId], [IndicatorDescriptorId]) REFERENCES [edfi].[EducationOrganizationIndicator] ([EducationOrganizationId], [IndicatorDescriptorId]) ON DELETE CASCADE
);
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationIndicatorPeriod_EducationOrganizationIndicator]
    ON [edfi].[EducationOrganizationIndicatorPeriod]([EducationOrganizationId] ASC, [IndicatorDescriptorId] ASC);
GO

-- Table [edfi].[Person] --
CREATE TABLE [edfi].[Person] (
    [PersonId]                 NVARCHAR (32)    NOT NULL,
    [SourceSystemDescriptorId] INT              NOT NULL,
    [Discriminator]            NVARCHAR (128)   NULL,
    [CreateDate]               DATETIME2 (7)    CONSTRAINT [Person_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]         DATETIME2 (7)    CONSTRAINT [Person_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                       UNIQUEIDENTIFIER CONSTRAINT [Person_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [Person_PK] PRIMARY KEY CLUSTERED ([PersonId] ASC, [SourceSystemDescriptorId] ASC),
    CONSTRAINT [FK_Person_SourceSystemDescriptor] FOREIGN KEY ([SourceSystemDescriptorId]) REFERENCES [edfi].[SourceSystemDescriptor] ([SourceSystemDescriptorId])
);
GO

CREATE NONCLUSTERED INDEX [FK_Person_SourceSystemDescriptor]
    ON [edfi].[Person]([SourceSystemDescriptorId] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_Person_Id]
    ON [edfi].[Person]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[Survey] --
CREATE TABLE [edfi].[Survey] (
    [Namespace]                  NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]           NVARCHAR (60)    NOT NULL,
    [EducationOrganizationId]    INT              NULL,
    [SurveyTitle]                NVARCHAR (255)   NOT NULL,
    [SessionName]                NVARCHAR (60)    NULL,
    [SchoolYear]                 SMALLINT         NOT NULL,
    [SchoolId]                   INT              NULL,
    [SurveyCategoryDescriptorId] INT              NULL,
    [NumberAdministered]         INT              NULL,
    [Discriminator]              NVARCHAR (128)   NULL,
    [CreateDate]                 DATETIME2 (7)    CONSTRAINT [Survey_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]           DATETIME2 (7)    CONSTRAINT [Survey_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                         UNIQUEIDENTIFIER CONSTRAINT [Survey_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [Survey_PK] PRIMARY KEY CLUSTERED ([Namespace] ASC, [SurveyIdentifier] ASC),
    CONSTRAINT [FK_Survey_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]),
    CONSTRAINT [FK_Survey_SchoolYearType] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear]),
    CONSTRAINT [FK_Survey_Session] FOREIGN KEY ([SchoolId], [SchoolYear], [SessionName]) REFERENCES [edfi].[Session] ([SchoolId], [SchoolYear], [SessionName]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Survey_SurveyCategoryDescriptor] FOREIGN KEY ([SurveyCategoryDescriptorId]) REFERENCES [edfi].[SurveyCategoryDescriptor] ([SurveyCategoryDescriptorId])
);
GO

CREATE NONCLUSTERED INDEX [FK_Survey_EducationOrganization]
    ON [edfi].[Survey]([EducationOrganizationId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_Survey_SchoolYearType]
    ON [edfi].[Survey]([SchoolYear] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_Survey_Session]
    ON [edfi].[Survey]([SchoolId] ASC, [SchoolYear] ASC, [SessionName] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_Survey_SurveyCategoryDescriptor]
    ON [edfi].[Survey]([SurveyCategoryDescriptorId] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_Survey_Id]
    ON [edfi].[Survey]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[SurveySection] --
CREATE TABLE [edfi].[SurveySection] (
    [Namespace]          NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]   NVARCHAR (60)    NOT NULL,
    [SurveySectionTitle] NVARCHAR (255)   NOT NULL,
    [Discriminator]      NVARCHAR (128)   NULL,
    [CreateDate]         DATETIME2 (7)    CONSTRAINT [SurveySection_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]   DATETIME2 (7)    CONSTRAINT [SurveySection_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                 UNIQUEIDENTIFIER CONSTRAINT [SurveySection_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveySection_PK] PRIMARY KEY CLUSTERED ([Namespace] ASC, [SurveyIdentifier] ASC, [SurveySectionTitle] ASC),
    CONSTRAINT [FK_SurveySection_Survey] FOREIGN KEY ([Namespace], [SurveyIdentifier]) REFERENCES [edfi].[Survey] ([Namespace], [SurveyIdentifier])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveySection_Survey]
    ON [edfi].[SurveySection]([Namespace] ASC, [SurveyIdentifier] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveySection_Id]
    ON [edfi].[SurveySection]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[SurveyCourseAssociation] --
CREATE TABLE [edfi].[SurveyCourseAssociation] (
    [CourseCode]              NVARCHAR (60)    NOT NULL,
    [EducationOrganizationId] INT              NOT NULL,
    [Namespace]               NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]        NVARCHAR (60)    NOT NULL,
    [Discriminator]           NVARCHAR (128)   NULL,
    [CreateDate]              DATETIME2 (7)    CONSTRAINT [SurveyCourseAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]        DATETIME2 (7)    CONSTRAINT [SurveyCourseAssociation_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                      UNIQUEIDENTIFIER CONSTRAINT [SurveyCourseAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveyCourseAssociation_PK] PRIMARY KEY CLUSTERED ([CourseCode] ASC, [EducationOrganizationId] ASC, [Namespace] ASC, [SurveyIdentifier] ASC),
    CONSTRAINT [FK_SurveyCourseAssociation_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId]) REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId]),
    CONSTRAINT [FK_SurveyCourseAssociation_Survey] FOREIGN KEY ([Namespace], [SurveyIdentifier]) REFERENCES [edfi].[Survey] ([Namespace], [SurveyIdentifier])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyCourseAssociation_Course]
    ON [edfi].[SurveyCourseAssociation]([CourseCode] ASC, [EducationOrganizationId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyCourseAssociation_Survey]
    ON [edfi].[SurveyCourseAssociation]([Namespace] ASC, [SurveyIdentifier] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveyCourseAssociation_Id]
    ON [edfi].[SurveyCourseAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[SurveyProgramAssociation] --
CREATE TABLE [edfi].[SurveyProgramAssociation] (
    [EducationOrganizationId] INT              NOT NULL,
    [Namespace]               NVARCHAR (255)   NOT NULL,
    [ProgramName]             NVARCHAR (60)    NOT NULL,
    [ProgramTypeDescriptorId] INT              NOT NULL,
    [SurveyIdentifier]        NVARCHAR (60)    NOT NULL,
    [Discriminator]           NVARCHAR (128)   NULL,
    [CreateDate]              DATETIME2 (7)    CONSTRAINT [SurveyProgramAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]        DATETIME2 (7)    CONSTRAINT [SurveyProgramAssociation_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                      UNIQUEIDENTIFIER CONSTRAINT [SurveyProgramAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveyProgramAssociation_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [Namespace] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC, [SurveyIdentifier] ASC),
    CONSTRAINT [FK_SurveyProgramAssociation_Program] FOREIGN KEY ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId]) REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId]),
    CONSTRAINT [FK_SurveyProgramAssociation_Survey] FOREIGN KEY ([Namespace], [SurveyIdentifier]) REFERENCES [edfi].[Survey] ([Namespace], [SurveyIdentifier])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyProgramAssociation_Program]
    ON [edfi].[SurveyProgramAssociation]([EducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyProgramAssociation_Survey]
    ON [edfi].[SurveyProgramAssociation]([Namespace] ASC, [SurveyIdentifier] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveyProgramAssociation_Id]
    ON [edfi].[SurveyProgramAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[SurveyQuestion] --
CREATE TABLE [edfi].[SurveyQuestion] (
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [QuestionCode]             NVARCHAR (60)    NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [QuestionFormDescriptorId] INT              NOT NULL,
    [QuestionText]             NVARCHAR (1024)  NOT NULL,
    [SurveySectionTitle]       NVARCHAR (255)   NULL,
    [Discriminator]            NVARCHAR (128)   NULL,
    [CreateDate]               DATETIME2 (7)    CONSTRAINT [SurveyQuestion_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]         DATETIME2 (7)    CONSTRAINT [SurveyQuestion_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                       UNIQUEIDENTIFIER CONSTRAINT [SurveyQuestion_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveyQuestion_PK] PRIMARY KEY CLUSTERED ([Namespace] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC),
    CONSTRAINT [FK_SurveyQuestion_QuestionFormDescriptor] FOREIGN KEY ([QuestionFormDescriptorId]) REFERENCES [edfi].[QuestionFormDescriptor] ([QuestionFormDescriptorId]),
    CONSTRAINT [FK_SurveyQuestion_Survey] FOREIGN KEY ([Namespace], [SurveyIdentifier]) REFERENCES [edfi].[Survey] ([Namespace], [SurveyIdentifier]),
    CONSTRAINT [FK_SurveyQuestion_SurveySection] FOREIGN KEY ([Namespace], [SurveyIdentifier], [SurveySectionTitle]) REFERENCES [edfi].[SurveySection] ([Namespace], [SurveyIdentifier], [SurveySectionTitle])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestion_QuestionFormDescriptor]
    ON [edfi].[SurveyQuestion]([QuestionFormDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestion_Survey]
    ON [edfi].[SurveyQuestion]([Namespace] ASC, [SurveyIdentifier] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestion_SurveySection]
    ON [edfi].[SurveyQuestion]([Namespace] ASC, [SurveyIdentifier] ASC, [SurveySectionTitle] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveyQuestion_Id]
    ON [edfi].[SurveyQuestion]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[SurveyQuestionMatrix] --
CREATE TABLE [edfi].[SurveyQuestionMatrix] (
    [MatrixElement]    NVARCHAR (255) NOT NULL,
    [Namespace]        NVARCHAR (255) NOT NULL,
    [QuestionCode]     NVARCHAR (60)  NOT NULL,
    [SurveyIdentifier] NVARCHAR (60)  NOT NULL,
    [MinRawScore]      INT            NULL,
    [MaxRawScore]      INT            NULL,
    [CreateDate]       DATETIME2 (7)  CONSTRAINT [SurveyQuestionMatrix_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [SurveyQuestionMatrix_PK] PRIMARY KEY CLUSTERED ([MatrixElement] ASC, [Namespace] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC),
    CONSTRAINT [FK_SurveyQuestionMatrix_SurveyQuestion] FOREIGN KEY ([Namespace], [QuestionCode], [SurveyIdentifier]) REFERENCES [edfi].[SurveyQuestion] ([Namespace], [QuestionCode], [SurveyIdentifier]) ON DELETE CASCADE
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionMatrix_SurveyQuestion]
    ON [edfi].[SurveyQuestionMatrix]([Namespace] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC);
GO

-- Table [edfi].[SurveyResponse] --
CREATE TABLE [edfi].[SurveyResponse] (
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [ResponseDate]             DATE             NOT NULL,
    [ResponseTime]             INT              NULL,
    [ElectronicMailAddress]    NVARCHAR (128)   NULL,
    [FullName]                 NVARCHAR (80)    NULL,
    [Location]                 NVARCHAR (75)    NULL,
    [StudentUSI]               INT              NULL,
    [ParentUSI]                INT              NULL,
    [StaffUSI]                 INT              NULL,
    [Discriminator]            NVARCHAR (128)   NULL,
    [CreateDate]               DATETIME2 (7)    CONSTRAINT [SurveyResponse_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]         DATETIME2 (7)    CONSTRAINT [SurveyResponse_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                       UNIQUEIDENTIFIER CONSTRAINT [SurveyResponse_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveyResponse_PK] PRIMARY KEY CLUSTERED ([Namespace] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC),
    CONSTRAINT [FK_SurveyResponse_Parent] FOREIGN KEY ([ParentUSI]) REFERENCES [edfi].[Parent] ([ParentUSI]),
    CONSTRAINT [FK_SurveyResponse_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]),
    CONSTRAINT [FK_SurveyResponse_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]),
    CONSTRAINT [FK_SurveyResponse_Survey] FOREIGN KEY ([Namespace], [SurveyIdentifier]) REFERENCES [edfi].[Survey] ([Namespace], [SurveyIdentifier])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Parent]
    ON [edfi].[SurveyResponse]([ParentUSI] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Staff]
    ON [edfi].[SurveyResponse]([StaffUSI] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Student]
    ON [edfi].[SurveyResponse]([StudentUSI] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Survey]
    ON [edfi].[SurveyResponse]([Namespace] ASC, [SurveyIdentifier] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveyResponse_Id]
    ON [edfi].[SurveyResponse]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO
-- Table [edfi].[SurveyQuestionResponse] --
CREATE TABLE [edfi].[SurveyQuestionResponse] (
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [QuestionCode]             NVARCHAR (60)    NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [NoResponse]               BIT              NULL,
    [Comment]                  NVARCHAR (1024)  NULL,
    [Discriminator]            NVARCHAR (128)   NULL,
    [CreateDate]               DATETIME2 (7)    CONSTRAINT [SurveyQuestionResponse_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]         DATETIME2 (7)    CONSTRAINT [SurveyQuestionResponse_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                       UNIQUEIDENTIFIER CONSTRAINT [SurveyQuestionResponse_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveyQuestionResponse_PK] PRIMARY KEY CLUSTERED ([Namespace] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC),
    CONSTRAINT [FK_SurveyQuestionResponse_SurveyQuestion] FOREIGN KEY ([Namespace], [QuestionCode], [SurveyIdentifier]) REFERENCES [edfi].[SurveyQuestion] ([Namespace], [QuestionCode], [SurveyIdentifier]),
    CONSTRAINT [FK_SurveyQuestionResponse_SurveyResponse] FOREIGN KEY ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier]) REFERENCES [edfi].[SurveyResponse] ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponse_SurveyQuestion]
    ON [edfi].[SurveyQuestionResponse]([Namespace] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponse_SurveyResponse]
    ON [edfi].[SurveyQuestionResponse]([Namespace] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveyQuestionResponse_Id]
    ON [edfi].[SurveyQuestionResponse]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[SurveyQuestionResponseChoice] --
CREATE TABLE [edfi].[SurveyQuestionResponseChoice] (
    [Namespace]        NVARCHAR (255) NOT NULL,
    [QuestionCode]     NVARCHAR (60)  NOT NULL,
    [SortOrder]        INT            NOT NULL,
    [SurveyIdentifier] NVARCHAR (60)  NOT NULL,
    [NumericValue]     INT            NULL,
    [TextValue]        NVARCHAR (255) NULL,
    [CreateDate]       DATETIME2 (7)  CONSTRAINT [SurveyQuestionResponseChoice_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [SurveyQuestionResponseChoice_PK] PRIMARY KEY CLUSTERED ([Namespace] ASC, [QuestionCode] ASC, [SortOrder] ASC, [SurveyIdentifier] ASC),
    CONSTRAINT [FK_SurveyQuestionResponseChoice_SurveyQuestion] FOREIGN KEY ([Namespace], [QuestionCode], [SurveyIdentifier]) REFERENCES [edfi].[SurveyQuestion] ([Namespace], [QuestionCode], [SurveyIdentifier]) ON DELETE CASCADE
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponseChoice_SurveyQuestion]
    ON [edfi].[SurveyQuestionResponseChoice]([Namespace] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC);
GO

-- Table [edfi].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] --
CREATE TABLE [edfi].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] (
    [MatrixElement]            NVARCHAR (255)  NOT NULL,
    [Namespace]                NVARCHAR (255)  NOT NULL,
    [QuestionCode]             NVARCHAR (60)   NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)   NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)   NOT NULL,
    [NumericResponse]          INT             NULL,
    [TextResponse]             NVARCHAR (2048) NULL,
    [NoResponse]               BIT             NULL,
    [MinNumericResponse]       INT             NULL,
    [MaxNumericResponse]       INT             NULL,
    [CreateDate]               DATETIME2 (7)   CONSTRAINT [SurveyQuestionResponseSurveyQuestionMatrixElementResponse_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [SurveyQuestionResponseSurveyQuestionMatrixElementResponse_PK] PRIMARY KEY CLUSTERED ([MatrixElement] ASC, [Namespace] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC),
    CONSTRAINT [FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse] FOREIGN KEY ([Namespace], [QuestionCode], [SurveyIdentifier], [SurveyResponseIdentifier]) REFERENCES [edfi].[SurveyQuestionResponse] ([Namespace], [QuestionCode], [SurveyIdentifier], [SurveyResponseIdentifier]) ON DELETE CASCADE
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse]
    ON [edfi].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse]([Namespace] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC);
GO

-- Table [edfi].[SurveyQuestionResponseValue] --
CREATE TABLE [edfi].[SurveyQuestionResponseValue] (
    [Namespace]                             NVARCHAR (255)  NOT NULL,
    [QuestionCode]                          NVARCHAR (60)   NOT NULL,
    [SurveyIdentifier]                      NVARCHAR (60)   NOT NULL,
    [SurveyQuestionResponseValueIdentifier] INT             NOT NULL,
    [SurveyResponseIdentifier]              NVARCHAR (60)   NOT NULL,
    [NumericResponse]                       INT             NULL,
    [TextResponse]                          NVARCHAR (2048) NULL,
    [CreateDate]                            DATETIME2 (7)   CONSTRAINT [SurveyQuestionResponseValue_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [SurveyQuestionResponseValue_PK] PRIMARY KEY CLUSTERED ([Namespace] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC, [SurveyQuestionResponseValueIdentifier] ASC, [SurveyResponseIdentifier] ASC),
    CONSTRAINT [FK_SurveyQuestionResponseValue_SurveyQuestionResponse] FOREIGN KEY ([Namespace], [QuestionCode], [SurveyIdentifier], [SurveyResponseIdentifier]) REFERENCES [edfi].[SurveyQuestionResponse] ([Namespace], [QuestionCode], [SurveyIdentifier], [SurveyResponseIdentifier]) ON DELETE CASCADE
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponseValue_SurveyQuestionResponse]
    ON [edfi].[SurveyQuestionResponseValue]([Namespace] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC);
GO



-- Table [edfi].[SurveyResponseEducationOrganizationTargetAssociation] --
CREATE TABLE [edfi].[SurveyResponseEducationOrganizationTargetAssociation] (
    [EducationOrganizationId]  INT              NOT NULL,
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [Discriminator]            NVARCHAR (128)   NULL,
    [CreateDate]               DATETIME2 (7)    CONSTRAINT [SurveyResponseEducationOrganizationTargetAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]         DATETIME2 (7)    CONSTRAINT [SurveyResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                       UNIQUEIDENTIFIER CONSTRAINT [SurveyResponseEducationOrganizationTargetAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveyResponseEducationOrganizationTargetAssociation_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [Namespace] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC),
    CONSTRAINT [FK_SurveyResponseEducationOrganizationTargetAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]),
    CONSTRAINT [FK_SurveyResponseEducationOrganizationTargetAssociation_SurveyResponse] FOREIGN KEY ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier]) REFERENCES [edfi].[SurveyResponse] ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponseEducationOrganizationTargetAssociation_EducationOrganization]
    ON [edfi].[SurveyResponseEducationOrganizationTargetAssociation]([EducationOrganizationId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponseEducationOrganizationTargetAssociation_SurveyResponse]
    ON [edfi].[SurveyResponseEducationOrganizationTargetAssociation]([Namespace] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveyResponseEducationOrganizationTargetAssociation_Id]
    ON [edfi].[SurveyResponseEducationOrganizationTargetAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[SurveyResponseStaffTargetAssociation] --
CREATE TABLE [edfi].[SurveyResponseStaffTargetAssociation] (
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [StaffUSI]                 INT              NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [Discriminator]            NVARCHAR (128)   NULL,
    [CreateDate]               DATETIME2 (7)    CONSTRAINT [SurveyResponseStaffTargetAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]         DATETIME2 (7)    CONSTRAINT [SurveyResponseStaffTargetAssociation_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                       UNIQUEIDENTIFIER CONSTRAINT [SurveyResponseStaffTargetAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveyResponseStaffTargetAssociation_PK] PRIMARY KEY CLUSTERED ([Namespace] ASC, [StaffUSI] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC),
    CONSTRAINT [FK_SurveyResponseStaffTargetAssociation_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]),
    CONSTRAINT [FK_SurveyResponseStaffTargetAssociation_SurveyResponse] FOREIGN KEY ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier]) REFERENCES [edfi].[SurveyResponse] ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponseStaffTargetAssociation_Staff]
    ON [edfi].[SurveyResponseStaffTargetAssociation]([StaffUSI] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponseStaffTargetAssociation_SurveyResponse]
    ON [edfi].[SurveyResponseStaffTargetAssociation]([Namespace] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveyResponseStaffTargetAssociation_Id]
    ON [edfi].[SurveyResponseStaffTargetAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[SurveyResponseSurveyLevel] --
CREATE TABLE [edfi].[SurveyResponseSurveyLevel] (
    [Namespace]                NVARCHAR (255) NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)  NOT NULL,
    [SurveyLevelDescriptorId]  INT            NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)  NOT NULL,
    [CreateDate]               DATETIME2 (7)  CONSTRAINT [SurveyResponseSurveyLevel_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [SurveyResponseSurveyLevel_PK] PRIMARY KEY CLUSTERED ([Namespace] ASC, [SurveyIdentifier] ASC, [SurveyLevelDescriptorId] ASC, [SurveyResponseIdentifier] ASC),
    CONSTRAINT [FK_SurveyResponseSurveyLevel_SurveyLevelDescriptor] FOREIGN KEY ([SurveyLevelDescriptorId]) REFERENCES [edfi].[SurveyLevelDescriptor] ([SurveyLevelDescriptorId]),
    CONSTRAINT [FK_SurveyResponseSurveyLevel_SurveyResponse] FOREIGN KEY ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier]) REFERENCES [edfi].[SurveyResponse] ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier]) ON DELETE CASCADE
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponseSurveyLevel_SurveyLevelDescriptor]
    ON [edfi].[SurveyResponseSurveyLevel]([SurveyLevelDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponseSurveyLevel_SurveyResponse]
    ON [edfi].[SurveyResponseSurveyLevel]([Namespace] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC);
GO


-- Table [edfi].[SurveySectionAssociation] --
CREATE TABLE [edfi].[SurveySectionAssociation] (
    [LocalCourseCode]   NVARCHAR (60)    NOT NULL,
    [Namespace]         NVARCHAR (255)   NOT NULL,
    [SchoolId]          INT              NOT NULL,
    [SchoolYear]        SMALLINT         NOT NULL,
    [SectionIdentifier] NVARCHAR (255)   NOT NULL,
    [SessionName]       NVARCHAR (60)    NOT NULL,
    [SurveyIdentifier]  NVARCHAR (60)    NOT NULL,
    [Discriminator]     NVARCHAR (128)   NULL,
    [CreateDate]        DATETIME2 (7)    CONSTRAINT [SurveySectionAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]  DATETIME2 (7)    CONSTRAINT [SurveySectionAssociation_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                UNIQUEIDENTIFIER CONSTRAINT [SurveySectionAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveySectionAssociation_PK] PRIMARY KEY CLUSTERED ([LocalCourseCode] ASC, [Namespace] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC, [SurveyIdentifier] ASC),
    CONSTRAINT [FK_SurveySectionAssociation_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) ON UPDATE CASCADE,
    CONSTRAINT [FK_SurveySectionAssociation_Survey] FOREIGN KEY ([Namespace], [SurveyIdentifier]) REFERENCES [edfi].[Survey] ([Namespace], [SurveyIdentifier])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionAssociation_Section]
    ON [edfi].[SurveySectionAssociation]([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionAssociation_Survey]
    ON [edfi].[SurveySectionAssociation]([Namespace] ASC, [SurveyIdentifier] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveySectionAssociation_Id]
    ON [edfi].[SurveySectionAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[SurveySectionResponse] --
CREATE TABLE [edfi].[SurveySectionResponse] (
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [SurveySectionTitle]       NVARCHAR (255)   NOT NULL,
    [SectionRating]            DECIMAL (9, 3)   NULL,
    [Discriminator]            NVARCHAR (128)   NULL,
    [CreateDate]               DATETIME2 (7)    CONSTRAINT [SurveySectionResponse_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]         DATETIME2 (7)    CONSTRAINT [SurveySectionResponse_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                       UNIQUEIDENTIFIER CONSTRAINT [SurveySectionResponse_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveySectionResponse_PK] PRIMARY KEY CLUSTERED ([Namespace] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC, [SurveySectionTitle] ASC),
    CONSTRAINT [FK_SurveySectionResponse_SurveyResponse] FOREIGN KEY ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier]) REFERENCES [edfi].[SurveyResponse] ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier]),
    CONSTRAINT [FK_SurveySectionResponse_SurveySection] FOREIGN KEY ([Namespace], [SurveyIdentifier], [SurveySectionTitle]) REFERENCES [edfi].[SurveySection] ([Namespace], [SurveyIdentifier], [SurveySectionTitle])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionResponse_SurveyResponse]
    ON [edfi].[SurveySectionResponse]([Namespace] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionResponse_SurveySection]
    ON [edfi].[SurveySectionResponse]([Namespace] ASC, [SurveyIdentifier] ASC, [SurveySectionTitle] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveySectionResponse_Id]
    ON [edfi].[SurveySectionResponse]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation] --
CREATE TABLE [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation] (
    [EducationOrganizationId]  INT              NOT NULL,
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [SurveySectionTitle]       NVARCHAR (255)   NOT NULL,
    [Discriminator]            NVARCHAR (128)   NULL,
    [CreateDate]               DATETIME2 (7)    CONSTRAINT [SurveySectionResponseEducationOrganizationTargetAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]         DATETIME2 (7)    CONSTRAINT [SurveySectionResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                       UNIQUEIDENTIFIER CONSTRAINT [SurveySectionResponseEducationOrganizationTargetAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveySectionResponseEducationOrganizationTargetAssociation_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [Namespace] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC, [SurveySectionTitle] ASC),
    CONSTRAINT [FK_SurveySectionResponseEducationOrganizationTargetAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]),
    CONSTRAINT [FK_SurveySectionResponseEducationOrganizationTargetAssociation_SurveySectionResponse] FOREIGN KEY ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier], [SurveySectionTitle]) REFERENCES [edfi].[SurveySectionResponse] ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier], [SurveySectionTitle])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionResponseEducationOrganizationTargetAssociation_EducationOrganization]
    ON [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]([EducationOrganizationId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionResponseEducationOrganizationTargetAssociation_SurveySectionResponse]
    ON [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]([Namespace] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC, [SurveySectionTitle] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveySectionResponseEducationOrganizationTargetAssociation_Id]
    ON [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO

-- Table [edfi].[SurveySectionResponseStaffTargetAssociation] --
CREATE TABLE [edfi].[SurveySectionResponseStaffTargetAssociation] (
    [Namespace]                NVARCHAR (255)   NOT NULL,
    [StaffUSI]                 INT              NOT NULL,
    [SurveyIdentifier]         NVARCHAR (60)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (60)    NOT NULL,
    [SurveySectionTitle]       NVARCHAR (255)   NOT NULL,
    [Discriminator]            NVARCHAR (128)   NULL,
    [CreateDate]               DATETIME2 (7)    CONSTRAINT [SurveySectionResponseStaffTargetAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]         DATETIME2 (7)    CONSTRAINT [SurveySectionResponseStaffTargetAssociation_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                       UNIQUEIDENTIFIER CONSTRAINT [SurveySectionResponseStaffTargetAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SurveySectionResponseStaffTargetAssociation_PK] PRIMARY KEY CLUSTERED ([Namespace] ASC, [StaffUSI] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC, [SurveySectionTitle] ASC),
    CONSTRAINT [FK_SurveySectionResponseStaffTargetAssociation_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]),
    CONSTRAINT [FK_SurveySectionResponseStaffTargetAssociation_SurveySectionResponse] FOREIGN KEY ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier], [SurveySectionTitle]) REFERENCES [edfi].[SurveySectionResponse] ([Namespace], [SurveyIdentifier], [SurveyResponseIdentifier], [SurveySectionTitle])
);
GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionResponseStaffTargetAssociation_Staff]
    ON [edfi].[SurveySectionResponseStaffTargetAssociation]([StaffUSI] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionResponseStaffTargetAssociation_SurveySectionResponse]
    ON [edfi].[SurveySectionResponseStaffTargetAssociation]([Namespace] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC, [SurveySectionTitle] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_SurveySectionResponseStaffTargetAssociation_Id]
    ON [edfi].[SurveySectionResponseStaffTargetAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);
GO