-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

if exists ( select * from ::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'DisciplineAction', 'column', 'IEPPlacementMeetingIndicator')  )
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'DisciplineAction', 'column', 'IEPPlacementMeetingIndicator'
END
exec sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication as to whether an offense and/or disciplinary action resulted in a meeting of a student’s Individualized Education Program (IEP) team to determine appropriate placement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisciplineAction', @level2type=N'COLUMN', @level2name=N'IEPPlacementMeetingIndicator' 
go

if exists ( select * from ::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ProgressDescriptor', 'column' , default)  )
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ProgressDescriptor'
END
exec sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines yearly progress or growth from last year’s assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgressDescriptor'
go

if exists ( select * from ::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', 'column' , 'ProgressDescriptorId')  )
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', 'column' , 'ProgressDescriptorId'
END
    exec sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The yearly progress or growth from last year’s assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'ProgressDescriptorId' 
go

if exists ( select * from ::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentMigrantEducationProgramAssociation', 'column' , 'QualifyingArrivalDate')  )
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentMigrantEducationProgramAssociation', 'column' , 'QualifyingArrivalDate'
END
   EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Qualifying Arrival Date (QAD) is the date the child joins the worker who has already moved, or the date when the worker joins the child who has already moved. The QAD is the date that the child’s eligibility for the MEP begins. The QAD is not affected by subsequent non-qualifying moves.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'QualifyingArrivalDate' 
go

if exists ( select * from ::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentMigrantEducationProgramAssociation', 'column' , 'EligibilityExpirationDate')  )
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentMigrantEducationProgramAssociation', 'column' , 'EligibilityExpirationDate'
END
  EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Eligibility Expiration Date is used to determine end of eligibility and to account for a child’s eligibility expiring earlier than 36 months from the child’s QAD. A child’s eligibility would end earlier than 36 months from the child’s QAD, if the child is no longer entitled to a free public education (e.g., graduated with a high school diploma, obtained a high school equivalency diploma (HSED), or for other reasons as determined by States’ requirements), or if the child passes away.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'EligibilityExpirationDate'
go
