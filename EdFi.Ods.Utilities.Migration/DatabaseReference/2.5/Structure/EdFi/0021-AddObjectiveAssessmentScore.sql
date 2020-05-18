-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS (SELECT * from INFORMATION_SCHEMA.TABLES t WHERE t.TABLE_SCHEMA = 'edfi' AND t.TABLE_NAME = 'ObjectiveAssessmentScore')
BEGIN
    /****** Table: [edfi].[ObjectiveAssessmentScore] ******/

    CREATE TABLE [edfi].[ObjectiveAssessmentScore](
        [AcademicSubjectDescriptorId] [INT] NOT NULL,
        [AssessedGradeLevelDescriptorId] [INT] NOT NULL,
        [AssessmentReportingMethodTypeId] [INT] NOT NULL,
        [AssessmentTitle] [NVARCHAR](60) NOT NULL,
        [IdentificationCode] [NVARCHAR](60) NOT NULL,
        [Version] [INT] NOT NULL,
        [MinimumScore] [NVARCHAR](35) NULL,
        [MaximumScore] [NVARCHAR](35) NULL,
        [ResultDatatypeTypeId] [INT] NULL,
        [CreateDate] [DATETIME] NOT NULL, 
        CONSTRAINT [ObjectiveAssessmentScore_PK] PRIMARY KEY CLUSTERED (
            [AcademicSubjectDescriptorId] ASC,
            [AssessedGradeLevelDescriptorId] ASC,
            [AssessmentReportingMethodTypeId] ASC,
            [AssessmentTitle] ASC,
            [IdentificationCode] ASC,
            [Version] ASC
        ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    ALTER TABLE [edfi].[ObjectiveAssessmentScore] ADD CONSTRAINT [ObjectiveAssessmentScore_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]

    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Definition of the scores to be expected from this objective assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ObjectiveAssessmentScore'
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
            Adult
            Prekindergarten
            First grade
            Second grade
            ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodTypeId'
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'Version'
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum score possible on the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'MinimumScore'
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum score possible on the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'MaximumScore'
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeId'

    ALTER TABLE [edfi].[ObjectiveAssessmentScore] WITH CHECK ADD CONSTRAINT [FK_ObjectiveAssessmentScore_AssessmentReportingMethodType] FOREIGN KEY ([AssessmentReportingMethodTypeId])
    REFERENCES [edfi].[AssessmentReportingMethodType] ([AssessmentReportingMethodTypeId])

    CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentScore_AssessmentReportingMethodType]
    ON [edfi].[ObjectiveAssessmentScore]([AssessmentReportingMethodTypeId] ASC)

    ALTER TABLE [edfi].[ObjectiveAssessmentScore] WITH CHECK ADD CONSTRAINT [FK_ObjectiveAssessmentScore_ObjectiveAssessment] FOREIGN KEY ([AssessmentTitle], [AcademicSubjectDescriptorId], [AssessedGradeLevelDescriptorId], [Version], [IdentificationCode])
    REFERENCES [edfi].[ObjectiveAssessment] ([AssessmentTitle], [AcademicSubjectDescriptorId], [AssessedGradeLevelDescriptorId], [Version], [IdentificationCode])
    ON DELETE CASCADE

    CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentScore_ObjectiveAssessment]
    ON [edfi].[ObjectiveAssessmentScore]([AssessmentTitle] ASC, [AcademicSubjectDescriptorId] ASC, [AssessedGradeLevelDescriptorId] ASC, [Version] ASC, [IdentificationCode] ASC)

    ALTER TABLE [edfi].[ObjectiveAssessmentScore] WITH CHECK ADD CONSTRAINT [FK_ObjectiveAssessmentScore_ResultDatatypeType] FOREIGN KEY ([ResultDatatypeTypeId])
    REFERENCES [edfi].[ResultDatatypeType] ([ResultDatatypeTypeId])

    CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentScore_ResultDatatypeType]
    ON [edfi].[ObjectiveAssessmentScore]([ResultDatatypeTypeId] ASC)
END