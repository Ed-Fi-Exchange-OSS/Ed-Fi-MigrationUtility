-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AdministrationEnvironmentDescriptor', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AdministrationEnvironmentDescriptor'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The environment in which the test was administered.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AdministrationEnvironmentDescriptor'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A possible response to an assessment item.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentPlatformType', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentPlatformType'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The platforms with which the assessment may be delivered.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentPlatformType'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AttemptStatusDescriptor', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AttemptStatusDescriptor'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor describes a student''s completion status for a section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AttemptStatusDescriptor'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'CTEProgramServiceDescriptor', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'CTEProgramServiceDescriptor'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the services provided by an education organization to populations of students associated with a CTE program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CTEProgramServiceDescriptor'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Information on an individual involved in the Discipline Incident.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncidentExternalParticipant'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentParticipationCodeDescriptor', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentParticipationCodeDescriptor'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The role or type of participation of a person in a discipline incident; for example: Victim, Perpetrator, Witness, Reporter.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncidentParticipationCodeDescriptor'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The status of the student''s program participation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationParticipationStatus'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A collection of learning standards associated with the grade.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradePointAverageWeightSystemDescriptor', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradePointAverageWeightSystemDescriptor'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the system used for calculating the Grade Point Average.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradePointAverageWeightSystemDescriptor'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandard', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandard'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A statement that describes a specific competency or academic standard.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandard'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates a directional association of equivalence from a source to a target learning standard.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardEquivalenceAssociation'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceStrengthDescriptor', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceStrengthDescriptor'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A measure that indicates the strength or quality of the equivalence relationship.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardEquivalenceStrengthDescriptor'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandardScopeDescriptor', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandardScopeDescriptor'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardScopeDescriptor'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ParticipationStatusDescriptor', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ParticipationStatusDescriptor'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The student''s program participation status.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ParticipationStatusDescriptor'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'PlatformTypeDescriptor', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'PlatformTypeDescriptor'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The platforms with which an assessment may be delivered.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'PlatformTypeDescriptor'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A measure of average performance for courses taken by an individual.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGradePointAverage'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociation', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociation'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'This association indicates those staff who were victims, perpetrators, witnesses, and reporters for a discipline incident.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffDisciplineIncidentAssociation'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The role or type of participation of a student in a discipline incident (e.g., Victim, Perpetrator, Witness, Reporter).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A measure of average performance for courses taken by an individual.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordGradePointAverage'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCompetencyObjective', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCompetencyObjective'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'This entity represents the competency assessed or evaluated for the student against a specific competency objective.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCompetencyObjective'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the Service(s) being provided to the Student by the CTE Program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationRace', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationRace'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The data model allows for multiple entries so that each individual can specify all appropriate races.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationRace'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationTribalAffiliation', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationTribalAffiliation'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'An American Indian tribe with which the student is affiliated as last reported to the education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationTribalAffiliation'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The secondary graduation plan or plans associated with the student enrolled in the school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociationAlternativeGraduationPlan'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The Staff providing the service to the Student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the service(s) being provided to the Student by the Title I Part A Program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'TermDescriptor', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'TermDescriptor'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the term of a session during the school year (e.g., Semester).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'TermDescriptor'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'TitleIPartAProgramServiceDescriptor', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'TitleIPartAProgramServiceDescriptor'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the services provided by an education organization to populations of students associated with a Title I Part A program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'TitleIPartAProgramServiceDescriptor'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentItem', 'column', 'ItemText'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentItem', 'column', 'ItemText'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The text of the item.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'ItemText'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'AssessmentIdentifier'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'AssessmentIdentifier'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type=N'COLUMN', @level2name=N'AssessmentIdentifier'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'IdentificationCode'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'IdentificationCode'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'Namespace'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'Namespace'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type=N'COLUMN', @level2name=N'Namespace'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'ResponseValue'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'ResponseValue'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The response value, often an option number or code value (e.g., 1, 2, A, B, true, false).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type=N'COLUMN', @level2name=N'ResponseValue'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'ResponseDescription'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'ResponseDescription'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Additional text provided to define the response value.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type=N'COLUMN', @level2name=N'ResponseDescription'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'CorrectResponse'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentItemPossibleResponse', 'column', 'CorrectResponse'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the response is correct.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentItemPossibleResponse', @level2type=N'COLUMN', @level2name=N'CorrectResponse'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentPlatformType', 'column', 'AssessmentIdentifier'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentPlatformType', 'column', 'AssessmentIdentifier'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentPlatformType', @level2type=N'COLUMN', @level2name=N'AssessmentIdentifier'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentPlatformType', 'column', 'Namespace'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentPlatformType', 'column', 'Namespace'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentPlatformType', @level2type=N'COLUMN', @level2name=N'Namespace'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'AssessmentPlatformType', 'column', 'PlatformTypeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'AssessmentPlatformType', 'column', 'PlatformTypeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The platforms with which the assessment may be delivered.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentPlatformType', @level2type=N'COLUMN', @level2name=N'PlatformTypeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'BellSchedule', 'column', 'StartTime'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'BellSchedule', 'column', 'StartTime'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of the time of day the bell schedule begins.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'BellSchedule', @level2type=N'COLUMN', @level2name=N'StartTime'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'BellSchedule', 'column', 'EndTime'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'BellSchedule', 'column', 'EndTime'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of the time of day the bell schedule ends.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'BellSchedule', @level2type=N'COLUMN', @level2name=N'EndTime'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'BellSchedule', 'column', 'TotalInstructionalTime'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'BellSchedule', 'column', 'TotalInstructionalTime'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The total instructional time in minutes per day for the bell schedule.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'BellSchedule', @level2type=N'COLUMN', @level2name=N'TotalInstructionalTime'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ClassPeriod', 'column', 'OfficialAttendancePeriod'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ClassPeriod', 'column', 'OfficialAttendancePeriod'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Indicator of whether this class period is used for official daily attendance. Alternatively, official daily attendance may be tied to a Section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ClassPeriod', @level2type=N'COLUMN', @level2name=N'OfficialAttendancePeriod'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'CTEProgramServiceDescriptor', 'column', 'CTEProgramServiceDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'CTEProgramServiceDescriptor', 'column', 'CTEProgramServiceDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CTEProgramServiceDescriptor', @level2type=N'COLUMN', @level2name=N'CTEProgramServiceDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant', 'column', 'DisciplineIncidentParticipationCodeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant', 'column', 'DisciplineIncidentParticipationCodeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The role or type of participation of a student in a discipline incident; for example: Victim, Perpetrator, Witness, Reporter.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncidentExternalParticipant', @level2type=N'COLUMN', @level2name=N'DisciplineIncidentParticipationCodeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant', 'column', 'FirstName'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant', 'column', 'FirstName'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncidentExternalParticipant', @level2type=N'COLUMN', @level2name=N'FirstName'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant', 'column', 'IncidentIdentifier'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant', 'column', 'IncidentIdentifier'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncidentExternalParticipant', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant', 'column', 'LastSurname'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant', 'column', 'LastSurname'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The name borne in common by members of a family.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncidentExternalParticipant', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant', 'column', 'SchoolId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentExternalParticipant', 'column', 'SchoolId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncidentExternalParticipant', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentParticipationCodeDescriptor', 'column', 'DisciplineIncidentParticipationCodeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'DisciplineIncidentParticipationCodeDescriptor', 'column', 'DisciplineIncidentParticipationCodeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncidentParticipationCodeDescriptor', @level2type=N'COLUMN', @level2name=N'DisciplineIncidentParticipationCodeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'EducationOrganizationAddressPeriod', 'column', 'City'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'EducationOrganizationAddressPeriod', 'column', 'City'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the city in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'City'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'EducationOrganizationAddressPeriod', 'column', 'PostalCode'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'EducationOrganizationAddressPeriod', 'column', 'PostalCode'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'EducationOrganizationAddressPeriod', 'column', 'StateAbbreviationDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'EducationOrganizationAddressPeriod', 'column', 'StateAbbreviationDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'EducationOrganizationAddressPeriod', 'column', 'StreetNumberName'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'EducationOrganizationAddressPeriod', 'column', 'StreetNumberName'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The street number and street name or post office box number of an address.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationParticipationStatus', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'EducationOrganizationId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'EducationOrganizationId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationParticipationStatus', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'ProgramEducationOrganizationId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'ProgramEducationOrganizationId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationParticipationStatus', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'ProgramName'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'ProgramName'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationParticipationStatus', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'ProgramTypeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'ProgramTypeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The type of program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationParticipationStatus', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'StudentUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'StudentUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationParticipationStatus', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'ParticipationStatusDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'ParticipationStatusDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The student''s program participation status.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationParticipationStatus', @level2type=N'COLUMN', @level2name=N'ParticipationStatusDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'StatusBeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'StatusBeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The date the student''s program participation status began.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationParticipationStatus', @level2type=N'COLUMN', @level2name=N'StatusBeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'StatusEndDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'StatusEndDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The date the student''s program participation status ended.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationParticipationStatus', @level2type=N'COLUMN', @level2name=N'StatusEndDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'DesignatedBy'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GeneralStudentProgramAssociationParticipationStatus', 'column', 'DesignatedBy'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The person, organization, or department that designated the participation status.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationParticipationStatus', @level2type=N'COLUMN', @level2name=N'DesignatedBy'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradebookEntry', 'column', 'DueDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradebookEntry', 'column', 'DueDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The date the assignment, homework, or assessment is due.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'DueDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the Student''s entry or assignment to the Section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'GradeTypeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'GradeTypeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The type of grade reported (e.g., Exam, Final, Grading Period).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'GradeTypeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'GradingPeriodDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'GradingPeriodDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the period for which grades are reported.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'GradingPeriodSchoolYear'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'GradingPeriodSchoolYear'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the grading period school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'GradingPeriodSequence'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'GradingPeriodSequence'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The sequential order of this period relative to other periods.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'LearningStandardId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'LearningStandardId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'LocalCourseCode'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'LocalCourseCode'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'SchoolId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'SchoolId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'SchoolYear'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'SchoolYear'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'SectionIdentifier'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'SectionIdentifier'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The local identifier assigned to a section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'SessionName'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'SessionName'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'SessionName'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'StudentUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'StudentUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'LetterGradeEarned'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'LetterGradeEarned'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A final or interim (grading period) indicator of student performance for a learning standard as submitted by the instructor.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'LetterGradeEarned'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'NumericGradeEarned'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'NumericGradeEarned'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A final or interim (grading period) indicator of student performance for a learning standard as submitted by the instructor.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'NumericGradeEarned'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'DiagnosticStatement'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'DiagnosticStatement'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A statement provided by the teacher that provides information in addition to the grade or assessment score.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'DiagnosticStatement'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'PerformanceBaseConversionDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradeLearningStandardGrade', 'column', 'PerformanceBaseConversionDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A performance level that describes the student proficiency.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type=N'COLUMN', @level2name=N'PerformanceBaseConversionDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'GradePointAverageWeightSystemDescriptor', 'column', 'GradePointAverageWeightSystemDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'GradePointAverageWeightSystemDescriptor', 'column', 'GradePointAverageWeightSystemDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradePointAverageWeightSystemDescriptor', @level2type=N'COLUMN', @level2name=N'GradePointAverageWeightSystemDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandard', 'column', 'Namespace'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandard', 'column', 'Namespace'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The namespace of the organization or entity who governs the standard. It is recommended the namespaces observe a URI format and begin with a domain name under the governing organization or entity control.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandard', @level2type=N'COLUMN', @level2name=N'Namespace'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandard', 'column', 'LearningStandardScopeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandard', 'column', 'LearningStandardScopeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardScopeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'Namespace'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'Namespace'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The namespace of the organization that has created and owns the association.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardEquivalenceAssociation', @level2type=N'COLUMN', @level2name=N'Namespace'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'SourceLearningStandardId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'SourceLearningStandardId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardEquivalenceAssociation', @level2type=N'COLUMN', @level2name=N'SourceLearningStandardId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'TargetLearningStandardId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'TargetLearningStandardId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardEquivalenceAssociation', @level2type=N'COLUMN', @level2name=N'TargetLearningStandardId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'EffectiveDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'EffectiveDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The date that the association is considered to be applicable or effective.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardEquivalenceAssociation', @level2type=N'COLUMN', @level2name=N'EffectiveDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'LearningStandardEquivalenceStrengthDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'LearningStandardEquivalenceStrengthDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A measure that indicates the strength or quality of the equivalence relationship.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardEquivalenceAssociation', @level2type=N'COLUMN', @level2name=N'LearningStandardEquivalenceStrengthDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'LearningStandardEquivalenceStrengthDescription'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceAssociation', 'column', 'LearningStandardEquivalenceStrengthDescription'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Captures supplemental information on the relationship. Recommended for use only when the match is  partial.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardEquivalenceAssociation', @level2type=N'COLUMN', @level2name=N'LearningStandardEquivalenceStrengthDescription'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceStrengthDescriptor', 'column', 'LearningStandardEquivalenceStrengthDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandardEquivalenceStrengthDescriptor', 'column', 'LearningStandardEquivalenceStrengthDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardEquivalenceStrengthDescriptor', @level2type=N'COLUMN', @level2name=N'LearningStandardEquivalenceStrengthDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'LearningStandardScopeDescriptor', 'column', 'LearningStandardScopeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'LearningStandardScopeDescriptor', 'column', 'LearningStandardScopeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardScopeDescriptor', @level2type=N'COLUMN', @level2name=N'LearningStandardScopeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ObjectiveAssessment', 'column', 'AcademicSubjectDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ObjectiveAssessment', 'column', 'AcademicSubjectDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The subject area of the objective assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ParentAddress', 'column', 'City'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ParentAddress', 'column', 'City'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the city in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ParentAddress', @level2type=N'COLUMN', @level2name=N'City'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ParentAddressPeriod', 'column', 'City'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ParentAddressPeriod', 'column', 'City'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the city in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ParentAddressPeriod', @level2type=N'COLUMN', @level2name=N'City'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ParentAddressPeriod', 'column', 'PostalCode'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ParentAddressPeriod', 'column', 'PostalCode'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ParentAddressPeriod', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ParentAddressPeriod', 'column', 'StateAbbreviationDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ParentAddressPeriod', 'column', 'StateAbbreviationDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ParentAddressPeriod', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ParentAddressPeriod', 'column', 'StreetNumberName'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ParentAddressPeriod', 'column', 'StreetNumberName'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The street number and street name or post office box number of an address.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ParentAddressPeriod', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ParticipationStatusDescriptor', 'column', 'ParticipationStatusDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ParticipationStatusDescriptor', 'column', 'ParticipationStatusDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ParticipationStatusDescriptor', @level2type=N'COLUMN', @level2name=N'ParticipationStatusDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'PlatformTypeDescriptor', 'column', 'PlatformTypeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'PlatformTypeDescriptor', 'column', 'PlatformTypeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'PlatformTypeDescriptor', @level2type=N'COLUMN', @level2name=N'PlatformTypeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'EducationOrganizationId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'EducationOrganizationId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGradePointAverage', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradePointAverageWeightSystemDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradePointAverageWeightSystemDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The system used for calculating the Grade Point Average.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointAverageWeightSystemDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradingPeriodDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradingPeriodDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the period for which grades are reported.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradingPeriodSchoolId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradingPeriodSchoolId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradingPeriodSchoolYear'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradingPeriodSchoolYear'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the grading period school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradingPeriodSequence'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradingPeriodSequence'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The sequential order of this period relative to other periods.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'IsCumulative'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'IsCumulative'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Indicator of whether or not the Grade Point Average value is cumulative.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGradePointAverage', @level2type=N'COLUMN', @level2name=N'IsCumulative'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'StudentUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'StudentUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGradePointAverage', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradePointAverageValue'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'ReportCardGradePointAverage', 'column', 'GradePointAverageValue'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Grade Point Average computed for a grading period, session, or cumulatively.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointAverageValue'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'Section', 'column', 'OfficialAttendancePeriod'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'Section', 'column', 'OfficialAttendancePeriod'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Indicator of whether this section is used for official daily attendance. Alternatively, official daily attendance may be tied to a Class Period.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Section', @level2type=N'COLUMN', @level2name=N'OfficialAttendancePeriod'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'Session', 'column', 'TermDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'Session', 'column', 'TermDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'An descriptor value indicating the term (e.g. ''Semester'', ''Quarter'', etc.).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Session', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffAddressPeriod', 'column', 'City'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffAddressPeriod', 'column', 'City'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the city in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffAddressPeriod', @level2type=N'COLUMN', @level2name=N'City'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffAddressPeriod', 'column', 'PostalCode'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffAddressPeriod', 'column', 'PostalCode'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffAddressPeriod', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffAddressPeriod', 'column', 'StateAbbreviationDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffAddressPeriod', 'column', 'StateAbbreviationDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffAddressPeriod', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffAddressPeriod', 'column', 'StreetNumberName'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffAddressPeriod', 'column', 'StreetNumberName'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The street number and street name or post office box number of an address.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffAddressPeriod', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociation', 'column', 'IncidentIdentifier'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociation', 'column', 'IncidentIdentifier'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociation', 'column', 'SchoolId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociation', 'column', 'SchoolId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociation', 'column', 'StaffUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociation', 'column', 'StaffUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a staff.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', 'column', 'DisciplineIncidentParticipationCodeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', 'column', 'DisciplineIncidentParticipationCodeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The role or type of participation of a student in a discipline incident (e.g., Victim, Perpetrator, Witness, Reporter).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', @level2type=N'COLUMN', @level2name=N'DisciplineIncidentParticipationCodeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', 'column', 'IncidentIdentifier'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', 'column', 'IncidentIdentifier'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', 'column', 'SchoolId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', 'column', 'SchoolId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', 'column', 'StaffUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', 'column', 'StaffUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a staff.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffLeave', 'column', 'StaffLeaveEventCategoryDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffLeave', 'column', 'StaffLeaveEventCategoryDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The code describing the type of leave taken, for example: Sick, Personal, Vacation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffLeave', @level2type=N'COLUMN', @level2name=N'StaffLeaveEventCategoryDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffSchoolAssociationAcademicSubject', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffSchoolAssociationAcademicSubject'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The academic subjects the individual is eligible to teach.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffSchoolAssociationAcademicSubject'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffSchoolAssociationAcademicSubject', 'column', 'AcademicSubjectDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffSchoolAssociationAcademicSubject', 'column', 'AcademicSubjectDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The academic subjects the individual is eligible to teach.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffSchoolAssociationAcademicSubject', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffSchoolAssociationGradeLevel', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffSchoolAssociationGradeLevel'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The grade levels the individual is eligible to teach.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffSchoolAssociationGradeLevel'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StaffSchoolAssociationGradeLevel', 'column', 'GradeLevelDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StaffSchoolAssociationGradeLevel', 'column', 'GradeLevelDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The grade levels the individual is eligible to teach.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffSchoolAssociationGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'EducationOrganizationId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'EducationOrganizationId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordGradePointAverage', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'GradePointAverageWeightSystemDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'GradePointAverageWeightSystemDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The system used for calculating the Grade Point Average.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointAverageWeightSystemDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'IsCumulative'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'IsCumulative'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Indicator of whether or not the Grade Point Average value is cumulative.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordGradePointAverage', @level2type=N'COLUMN', @level2name=N'IsCumulative'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'SchoolYear'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'SchoolYear'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordGradePointAverage', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'StudentUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'StudentUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordGradePointAverage', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'TermDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'TermDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The term for the session during the school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordGradePointAverage', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'GradePointAverageValue'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentAcademicRecordGradePointAverage', 'column', 'GradePointAverageValue'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Grade Point Average computed for a grading period, session, or cumulatively.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointAverageValue'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentAssessment', 'column', 'AdministrationEnvironmentDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentAssessment', 'column', 'AdministrationEnvironmentDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The environment in which the test was administered.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'AdministrationEnvironmentDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentAssessment', 'column', 'PlatformTypeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentAssessment', 'column', 'PlatformTypeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The platform with which the assessment was delivered to the student during the assessment session.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'PlatformTypeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCompetencyObjective', 'column', 'CompetencyLevelDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCompetencyObjective', 'column', 'CompetencyLevelDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The competency level assessed for the student for the referenced competency objective.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'CompetencyLevelDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCompetencyObjectiveGeneralStudentProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCompetencyObjectiveGeneralStudentProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCompetencyObjectiveGeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgram', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgram', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgram', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'CTEProgramServiceDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'CTEProgramServiceDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the service being provided to the student by the CTE Program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type=N'COLUMN', @level2name=N'CTEProgramServiceDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'EducationOrganizationId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'EducationOrganizationId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'ProgramEducationOrganizationId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'ProgramEducationOrganizationId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'ProgramName'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'ProgramName'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'ProgramTypeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'ProgramTypeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The type of program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'StudentUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'StudentUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'PrimaryIndicator'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'PrimaryIndicator'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'True if service is a primary service.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type=N'COLUMN', @level2name=N'PrimaryIndicator'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'ServiceBeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'ServiceBeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'First date the Student was in this option for the current school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type=N'COLUMN', @level2name=N'ServiceBeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'ServiceEndDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'ServiceEndDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Last date the Student was in this option for the current school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type=N'COLUMN', @level2name=N'ServiceEndDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'CIPCode'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationCTEProgramService', 'column', 'CIPCode'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Number and description of the CIP Code associated with the student''s CTE Program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type=N'COLUMN', @level2name=N'CIPCode'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationService', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentCTEProgramAssociationService', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociation', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociation'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'This association represents student information as reported in the context of the student''s relationship to the Education Organization. Enrollment relationship semantics are covered by StudentSchoolAssociation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociation', 'column', 'SexDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociation', 'column', 'SexDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The student''s gender as last reported to the education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociation', 'column', 'HispanicLatinoEthnicity'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociation', 'column', 'HispanicLatinoEthnicity'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationAddress', 'column', 'StudentUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationAddress', 'column', 'StudentUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAddress', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationAddressPeriod', 'column', 'City'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationAddressPeriod', 'column', 'City'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the city in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAddressPeriod', @level2type=N'COLUMN', @level2name=N'City'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationAddressPeriod', 'column', 'PostalCode'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationAddressPeriod', 'column', 'PostalCode'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAddressPeriod', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationAddressPeriod', 'column', 'StateAbbreviationDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationAddressPeriod', 'column', 'StateAbbreviationDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAddressPeriod', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationAddressPeriod', 'column', 'StreetNumberName'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationAddressPeriod', 'column', 'StreetNumberName'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The street number and street name or post office box number of an address.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAddressPeriod', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationRace', null, null))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationRace'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies as last reported to the education organization. The data model allows for multiple entries so that each individual can specify all appropriate races.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationRace'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationRace', 'column', 'RaceDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationRace', 'column', 'RaceDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies as last reported to the education organization. The data model allows for multiple entries so that each individual can specify all appropriate races.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationRace', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationTribalAffiliation', 'column', 'TribalAffiliationDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentEducationOrganizationAssociationTribalAffiliation', 'column', 'TribalAffiliationDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'An American Indian tribe with which the student is affiliated as last reported to the education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationTribalAffiliation', @level2type=N'COLUMN', @level2name=N'TribalAffiliationDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentHomelessProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentHomelessProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which the Student first received services.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHomelessProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentHomelessProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentHomelessProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHomelessProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentHomelessProgramAssociationHomelessProgramService', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentHomelessProgramAssociationHomelessProgramService', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHomelessProgramAssociationHomelessProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentLanguageInstructionProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentLanguageInstructionProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLanguageInstructionProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentLanguageInstructionProgramAssociation', 'column', 'Dosage'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentLanguageInstructionProgramAssociation', 'column', 'Dosage'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The duration of time in minutes for which the student was assigned to participate in the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLanguageInstructionProgramAssociation', @level2type=N'COLUMN', @level2name=N'Dosage'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentLearningObjectiveGeneralStudentProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentLearningObjectiveGeneralStudentProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which the Student first received services.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLearningObjectiveGeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentLearningObjectiveGeneralStudentProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentLearningObjectiveGeneralStudentProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLearningObjectiveGeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentMigrantEducationProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentMigrantEducationProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentNeglectedOrDelinquentProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentNeglectedOrDelinquentProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentNeglectedOrDelinquentProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentProgramAssociationService', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentProgramAssociationService', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentProgramAssociationService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentProgramAttendanceEvent', 'column', 'ProgramAttendanceDuration'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentProgramAttendanceEvent', 'column', 'ProgramAttendanceDuration'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The duration in minutes of the program attendance event.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentProgramAttendanceEvent', @level2type=N'COLUMN', @level2name=N'ProgramAttendanceDuration'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociation', 'column', 'ExitWithdrawDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociation', 'column', 'ExitWithdrawDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The recorded exit or withdraw date for the student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'ExitWithdrawDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociation', 'column', 'FullTimeEquivalency'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociation', 'column', 'FullTimeEquivalency'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The full-time equivalent ratio for the student’s assignment to a school for services or instruction. For example, a full-time student would have an FTE value of 1 while a half-time student would have an FTE value of 0.5.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'FullTimeEquivalency'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociation', 'column', 'TermCompletionIndicator'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociation', 'column', 'TermCompletionIndicator'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Idicates whether or not a student completed the most recent school term.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'TermCompletionIndicator'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'AlternativeEducationOrganizationId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'AlternativeEducationOrganizationId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociationAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'AlternativeEducationOrganizationId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'AlternativeGraduationPlanTypeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'AlternativeGraduationPlanTypeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociationAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'AlternativeGraduationPlanTypeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'AlternativeGraduationSchoolYear'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'AlternativeGraduationSchoolYear'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The school year the student is expected to graduate.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociationAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'AlternativeGraduationSchoolYear'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'EntryDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'EntryDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which an individual enters and begins to receive instructional services in a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociationAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'SchoolId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'SchoolId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociationAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'StudentUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAssociationAlternativeGraduationPlan', 'column', 'StudentUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociationAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAttendanceEvent', 'column', 'SchoolAttendanceDuration'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAttendanceEvent', 'column', 'SchoolAttendanceDuration'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The duration in minutes of the school attendance event.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'SchoolAttendanceDuration'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAttendanceEvent', 'column', 'ArrivalTime'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAttendanceEvent', 'column', 'ArrivalTime'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The time of day the student arrived for the attendance event in ISO 8601 format.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'ArrivalTime'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAttendanceEvent', 'column', 'DepartureTime'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolAttendanceEvent', 'column', 'DepartureTime'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The time of day the student departed for the attendance event in ISO 8601 format.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'DepartureTime'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolFoodServiceProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolFoodServiceProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolFoodServiceProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSectionAssociation', 'column', 'AttemptStatusDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSectionAssociation', 'column', 'AttemptStatusDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of the student''s completion status for the section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'AttemptStatusDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSectionAttendanceEvent', 'column', 'SectionAttendanceDuration'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSectionAttendanceEvent', 'column', 'SectionAttendanceDuration'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The duration in minutes of the section attendance event.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'SectionAttendanceDuration'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSectionAttendanceEvent', 'column', 'ArrivalTime'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSectionAttendanceEvent', 'column', 'ArrivalTime'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The time of day the student arrived for the attendance event in ISO 8601 format.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'ArrivalTime'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSectionAttendanceEvent', 'column', 'DepartureTime'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSectionAttendanceEvent', 'column', 'DepartureTime'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The time of day the student departed for the attendance event in ISO 8601 format.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'DepartureTime'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationDisability', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationDisability', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationDisability', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationDisabilityDesignation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationDisabilityDesignation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationServiceProvider', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationServiceProvider', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationServiceProvider', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'EducationOrganizationId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'EducationOrganizationId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'ProgramEducationOrganizationId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'ProgramEducationOrganizationId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'ProgramName'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'ProgramName'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'ProgramTypeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'ProgramTypeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The type of program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'SpecialEducationProgramServiceDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'SpecialEducationProgramServiceDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the service being provided to the student by the Special Education Program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', @level2type=N'COLUMN', @level2name=N'SpecialEducationProgramServiceDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'StaffUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'StaffUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a staff.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'StudentUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'StudentUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'PrimaryProvider'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', 'column', 'PrimaryProvider'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Primary ServiceProvider.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', @level2type=N'COLUMN', @level2name=N'PrimaryProvider'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociation', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociation', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationService', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationService', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'BeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'BeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'EducationOrganizationId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'EducationOrganizationId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'

GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'ProgramEducationOrganizationId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'ProgramEducationOrganizationId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'ProgramName'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'ProgramName'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'ProgramTypeDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'ProgramTypeDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'The type of program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'StudentUSI'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'StudentUSI'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'TitleIPartAProgramServiceDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'TitleIPartAProgramServiceDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the service being provided to the student by the Title I Part A Program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type=N'COLUMN', @level2name=N'TitleIPartAProgramServiceDescriptorId'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'PrimaryIndicator'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'PrimaryIndicator'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'True if service is a primary service.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type=N'COLUMN', @level2name=N'PrimaryIndicator'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'ServiceBeginDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'ServiceBeginDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'First date the Student was in this option for the current school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type=N'COLUMN', @level2name=N'ServiceBeginDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'ServiceEndDate'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', 'column', 'ServiceEndDate'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'Last date the Student was in this option for the current school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type=N'COLUMN', @level2name=N'ServiceEndDate'
GO

IF EXISTS(SELECT 1 FROM::fn_listextendedproperty('MS_Description', 'schema', 'edfi', 'table', 'TitleIPartAProgramServiceDescriptor', 'column', 'TitleIPartAProgramServiceDescriptorId'))
    EXEC sys.sp_dropextendedproperty 'MS_Description', 'schema', 'edfi', 'table', 'TitleIPartAProgramServiceDescriptor', 'column', 'TitleIPartAProgramServiceDescriptorId'
EXEC sys.sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'TitleIPartAProgramServiceDescriptor', @level2type=N'COLUMN', @level2name=N'TitleIPartAProgramServiceDescriptorId'
GO