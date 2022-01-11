ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [CourseTranscript_DF_CreateDate];


GO

IF OBJECT_ID('dbo.[DF__CourseTra__Chang__782AAB3C]', 'C') IS NOT NULL 
	ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [DF__CourseTra__Chang__782AAB3C];


GO

ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [CourseTranscript_DF_LastModifiedDate];


GO

ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [CourseTranscript_DF_Id];


GO

ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [FK_CourseTranscript_Course];


GO

ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [FK_CourseTranscript_CourseAttemptResultDescriptor];


GO

ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [FK_CourseTranscript_CourseRepeatCodeDescriptor];


GO

ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [FK_CourseTranscript_CreditTypeDescriptor];


GO

ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [FK_CourseTranscript_CreditTypeDescriptor1];


GO

ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [FK_CourseTranscript_EducationOrganization];


GO

ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [FK_CourseTranscript_GradeLevelDescriptor];


GO

ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [FK_CourseTranscript_MethodCreditEarnedDescriptor];


GO

ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [FK_CourseTranscript_StudentAcademicRecord];


GO

ALTER TABLE [edfi].[CourseTranscriptAcademicSubject] DROP CONSTRAINT [FK_CourseTranscriptAcademicSubject_CourseTranscript];


GO

ALTER TABLE [edfi].[CourseTranscriptAlternativeCourseIdentificationCode] DROP CONSTRAINT [FK_CourseTranscriptAlternativeCourseIdentificationCode_CourseTranscript];


GO

ALTER TABLE [edfi].[CourseTranscriptCreditCategory] DROP CONSTRAINT [FK_CourseTranscriptCreditCategory_CourseTranscript];


GO

ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits] DROP CONSTRAINT [FK_CourseTranscriptEarnedAdditionalCredits_CourseTranscript];


GO

BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [edfi].[tmp_ms_xx_CourseTranscript] (
    [CourseAttemptResultDescriptorId]                INT              NOT NULL,
    [CourseCode]                                     NVARCHAR (60)    NOT NULL,
    [CourseEducationOrganizationId]                  INT              NOT NULL,
    [EducationOrganizationId]                        INT              NOT NULL,
    [SchoolYear]                                     SMALLINT         NOT NULL,
    [StudentUSI]                                     INT              NOT NULL,
    [TermDescriptorId]                               INT              NOT NULL,
    [AttemptedCredits]                               DECIMAL (9, 3)   NULL,
    [AttemptedCreditTypeDescriptorId]                INT              NULL,
    [AttemptedCreditConversion]                      DECIMAL (9, 2)   NULL,
    [EarnedCredits]                                  DECIMAL (9, 3)   NOT NULL,
    [EarnedCreditTypeDescriptorId]                   INT              NULL,
    [EarnedCreditConversion]                         DECIMAL (9, 2)   NULL,
    [WhenTakenGradeLevelDescriptorId]                INT              NULL,
    [MethodCreditEarnedDescriptorId]                 INT              NULL,
    [FinalLetterGradeEarned]                         NVARCHAR (20)    NULL,
    [FinalNumericGradeEarned]                        DECIMAL (9, 2)   NULL,
    [CourseRepeatCodeDescriptorId]                   INT              NULL,
    [CourseTitle]                                    NVARCHAR (60)    NULL,
    [AlternativeCourseTitle]                         NVARCHAR (60)    NULL,
    [AlternativeCourseCode]                          NVARCHAR (60)    NULL,
    [ExternalEducationOrganizationId]                INT              NULL,
    [ExternalEducationOrganizationNameOfInstitution] NVARCHAR (75)    NULL,
    [AssigningOrganizationIdentificationCode]        NVARCHAR (60)    NULL,
    [CourseCatalogURL]                               NVARCHAR (255)   NULL,
    [Discriminator]                                  NVARCHAR (128)   NULL,
    [CreateDate]                                     DATETIME2 (7)    CONSTRAINT [CourseTranscript_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]                               DATETIME2 (7)    CONSTRAINT [CourseTranscript_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                                             UNIQUEIDENTIFIER CONSTRAINT [CourseTranscript_DF_Id] DEFAULT (newid()) NOT NULL,
    [ChangeVersion]                                  BIGINT           DEFAULT ( NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_CourseTranscript_PK1] PRIMARY KEY CLUSTERED ([CourseAttemptResultDescriptorId] ASC, [CourseCode] ASC, [CourseEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [SchoolYear] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [edfi].[CourseTranscript])
    BEGIN
        INSERT INTO [edfi].[tmp_ms_xx_CourseTranscript] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId], [AttemptedCredits], [AttemptedCreditTypeDescriptorId], [AttemptedCreditConversion], [EarnedCredits], [EarnedCreditTypeDescriptorId], [EarnedCreditConversion], [WhenTakenGradeLevelDescriptorId], [MethodCreditEarnedDescriptorId], [FinalLetterGradeEarned], [FinalNumericGradeEarned], [CourseRepeatCodeDescriptorId], [CourseTitle], [AlternativeCourseTitle], [AlternativeCourseCode], [ExternalEducationOrganizationId], [AssigningOrganizationIdentificationCode], [CourseCatalogURL], [Discriminator], [CreateDate], [LastModifiedDate], [Id], [ChangeVersion])
        SELECT   [CourseAttemptResultDescriptorId],
                 [CourseCode],
                 [CourseEducationOrganizationId],
                 [EducationOrganizationId],
                 [SchoolYear],
                 [StudentUSI],
                 [TermDescriptorId],
                 [AttemptedCredits],
                 [AttemptedCreditTypeDescriptorId],
                 [AttemptedCreditConversion],
                 [EarnedCredits],
                 [EarnedCreditTypeDescriptorId],
                 [EarnedCreditConversion],
                 [WhenTakenGradeLevelDescriptorId],
                 [MethodCreditEarnedDescriptorId],
                 [FinalLetterGradeEarned],
                 [FinalNumericGradeEarned],
                 [CourseRepeatCodeDescriptorId],
                 [CourseTitle],
                 [AlternativeCourseTitle],
                 [AlternativeCourseCode],
                 [ExternalEducationOrganizationId],
                 [AssigningOrganizationIdentificationCode],
                 [CourseCatalogURL],
                 [Discriminator],
                 [CreateDate],
                 [LastModifiedDate],
                 [Id],
                 [ChangeVersion]
        FROM     [edfi].[CourseTranscript]
        ORDER BY [CourseAttemptResultDescriptorId] ASC, [CourseCode] ASC, [CourseEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [SchoolYear] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC;
    END

DROP TABLE [edfi].[CourseTranscript];

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_CourseTranscript]', N'CourseTranscript';

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_constraint_CourseTranscript_PK1]', N'CourseTranscript_PK', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscript_Course]
    ON [edfi].[CourseTranscript]([CourseCode] ASC, [CourseEducationOrganizationId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CourseAttemptResultDescriptor]
    ON [edfi].[CourseTranscript]([CourseAttemptResultDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CourseRepeatCodeDescriptor]
    ON [edfi].[CourseTranscript]([CourseRepeatCodeDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CreditTypeDescriptor]
    ON [edfi].[CourseTranscript]([AttemptedCreditTypeDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscript_CreditTypeDescriptor1]
    ON [edfi].[CourseTranscript]([EarnedCreditTypeDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscript_EducationOrganization]
    ON [edfi].[CourseTranscript]([ExternalEducationOrganizationId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscript_GradeLevelDescriptor]
    ON [edfi].[CourseTranscript]([WhenTakenGradeLevelDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscript_MethodCreditEarnedDescriptor]
    ON [edfi].[CourseTranscript]([MethodCreditEarnedDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscript_StudentAcademicRecord]
    ON [edfi].[CourseTranscript]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StudentUSI] ASC, [TermDescriptorId] ASC);


GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_CourseTranscript_Id]
    ON [edfi].[CourseTranscript]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO

CREATE NONCLUSTERED INDEX [UX_CourseTranscript_ChangeVersion]
    ON [edfi].[CourseTranscript]([ChangeVersion] ASC);


GO

ALTER TABLE [edfi].[CourseTranscript] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscript_Course] FOREIGN KEY ([CourseCode], [CourseEducationOrganizationId]) REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId]);


GO

ALTER TABLE [edfi].[CourseTranscript] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscript_CourseAttemptResultDescriptor] FOREIGN KEY ([CourseAttemptResultDescriptorId]) REFERENCES [edfi].[CourseAttemptResultDescriptor] ([CourseAttemptResultDescriptorId]);


GO

ALTER TABLE [edfi].[CourseTranscript] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscript_CourseRepeatCodeDescriptor] FOREIGN KEY ([CourseRepeatCodeDescriptorId]) REFERENCES [edfi].[CourseRepeatCodeDescriptor] ([CourseRepeatCodeDescriptorId]);


GO

ALTER TABLE [edfi].[CourseTranscript] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscript_CreditTypeDescriptor] FOREIGN KEY ([AttemptedCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId]);


GO

ALTER TABLE [edfi].[CourseTranscript] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscript_CreditTypeDescriptor1] FOREIGN KEY ([EarnedCreditTypeDescriptorId]) REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId]);


GO

ALTER TABLE [edfi].[CourseTranscript] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscript_EducationOrganization] FOREIGN KEY ([ExternalEducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO

ALTER TABLE [edfi].[CourseTranscript] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscript_GradeLevelDescriptor] FOREIGN KEY ([WhenTakenGradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId]);


GO

ALTER TABLE [edfi].[CourseTranscript] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscript_MethodCreditEarnedDescriptor] FOREIGN KEY ([MethodCreditEarnedDescriptorId]) REFERENCES [edfi].[MethodCreditEarnedDescriptor] ([MethodCreditEarnedDescriptorId]);


GO

ALTER TABLE [edfi].[CourseTranscript] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscript_StudentAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) REFERENCES [edfi].[StudentAcademicRecord] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]);


GO

ALTER TABLE [edfi].[CourseTranscriptAcademicSubject] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscriptAcademicSubject_CourseTranscript] FOREIGN KEY ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) REFERENCES [edfi].[CourseTranscript] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[CourseTranscriptAlternativeCourseIdentificationCode] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscriptAlternativeCourseIdentificationCode_CourseTranscript] FOREIGN KEY ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) REFERENCES [edfi].[CourseTranscript] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[CourseTranscriptCreditCategory] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscriptCreditCategory_CourseTranscript] FOREIGN KEY ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) REFERENCES [edfi].[CourseTranscript] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits] WITH NOCHECK
    ADD CONSTRAINT [FK_CourseTranscriptEarnedAdditionalCredits_CourseTranscript] FOREIGN KEY ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) REFERENCES [edfi].[CourseTranscript] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId]) ON DELETE CASCADE;


GO

CREATE TRIGGER [edfi].[edfi_CourseTranscript_TR_UpdateChangeVersion] ON [edfi].[CourseTranscript] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[CourseTranscript]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[CourseTranscript] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_CourseTranscript_TR_DeleteTracking] ON [edfi].[CourseTranscript] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[CourseTranscript](CourseAttemptResultDescriptorId, CourseCode, CourseEducationOrganizationId, EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId, Id, ChangeVersion)
    SELECT  CourseAttemptResultDescriptorId, CourseCode, CourseEducationOrganizationId, EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This entity is the final record of a student''s performance in their courses at the end of a semester or school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'CourseAttemptResultDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a course.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'CourseCode';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'CourseEducationOrganizationId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'SchoolYear';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The term for the session during the school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'TermDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The value of credits or units of value awarded for the completion of a course.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'AttemptedCredits';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of credits or units of value awarded for the completion of a course.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'AttemptedCreditTypeDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'AttemptedCreditConversion';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The value of credits or units of value awarded for the completion of a course.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'EarnedCredits';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of credits or units of value awarded for the completion of a course.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'EarnedCreditTypeDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'EarnedCreditConversion';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Student''s grade level at time of course.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'WhenTakenGradeLevelDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The method the credits were earned (e.g., Classroom, Examination, Transfer).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'MethodCreditEarnedDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The final indicator of student performance in a class as submitted by the instructor.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'FinalLetterGradeEarned';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The final indicator of student performance in a class as submitted by the instructor.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'FinalNumericGradeEarned';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'CourseRepeatCodeDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'CourseTitle';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The descriptive name given to a course of study offered in the school, if different from the CourseTitle.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'AlternativeCourseTitle';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The local code assigned by the school that identifies the course offering, the code from an external educational organization, or other alternate course code.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'AlternativeCourseCode';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'ExternalEducationOrganizationId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the external institution where the student completed the course; to be used only when the reference ExternalEducationOrganization is not available.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'ExternalEducationOrganizationNameOfInstitution';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The organization code or name assigning the course identification code.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'AssigningOrganizationIdentificationCode';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The URL for the course catalog that defines the course identification code.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'CourseCatalogURL';


GO


ALTER TABLE [edfi].[CourseTranscript] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscript_Course];

ALTER TABLE [edfi].[CourseTranscript] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscript_CourseAttemptResultDescriptor];

ALTER TABLE [edfi].[CourseTranscript] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscript_CourseRepeatCodeDescriptor];

ALTER TABLE [edfi].[CourseTranscript] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscript_CreditTypeDescriptor];

ALTER TABLE [edfi].[CourseTranscript] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscript_CreditTypeDescriptor1];

ALTER TABLE [edfi].[CourseTranscript] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscript_EducationOrganization];

ALTER TABLE [edfi].[CourseTranscript] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscript_GradeLevelDescriptor];

ALTER TABLE [edfi].[CourseTranscript] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscript_MethodCreditEarnedDescriptor];

ALTER TABLE [edfi].[CourseTranscript] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscript_StudentAcademicRecord];

ALTER TABLE [edfi].[CourseTranscriptAcademicSubject] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscriptAcademicSubject_CourseTranscript];

ALTER TABLE [edfi].[CourseTranscriptAlternativeCourseIdentificationCode] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscriptAlternativeCourseIdentificationCode_CourseTranscript];

ALTER TABLE [edfi].[CourseTranscriptCreditCategory] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscriptCreditCategory_CourseTranscript];

ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits] WITH CHECK CHECK CONSTRAINT [FK_CourseTranscriptEarnedAdditionalCredits_CourseTranscript];


GO
