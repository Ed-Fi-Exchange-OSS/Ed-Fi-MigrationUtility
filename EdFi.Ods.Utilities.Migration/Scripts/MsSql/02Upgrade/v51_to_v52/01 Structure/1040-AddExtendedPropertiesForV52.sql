-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AncestryEthnicOriginDescriptor', @level2type = N'COLUMN', @level2name = N'AncestryEthnicOriginDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The original peoples or cultures with which the individual identifies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AncestryEthnicOriginDescriptor';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandard', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The assessment reporting method defined (e.g., scale score, RIT scale score) associated with the referenced learning standard(s).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandard', @level2type = N'COLUMN', @level2name = N'AssessmentReportingMethodDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandard', @level2type = N'COLUMN', @level2name = N'IdentificationCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The maximum score in the score range.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandard', @level2type = N'COLUMN', @level2name = N'MaximumScore';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The minimum score in the score range.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandard', @level2type = N'COLUMN', @level2name = N'MinimumScore';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandard', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to the score range associated with one or more learning standards.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandard', @level2type = N'COLUMN', @level2name = N'ScoreRangeId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Score ranges of an assessment associated with one or more learning standards.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandard';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandardLearningStandard', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandardLearningStandard', @level2type = N'COLUMN', @level2name = N'LearningStandardId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the Assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandardLearningStandard', @level2type = N'COLUMN', @level2name = N'Namespace';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to the score range associated with one or more learning standards.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandardLearningStandard', @level2type = N'COLUMN', @level2name = N'ScoreRangeId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'LearningStandard associated with the score range.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentScoreRangeLearningStandardLearningStandard';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Describes behavior by category.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineActionStudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'BehaviorDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifier assigned by the education organization to the DisciplineAction.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineActionStudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'DisciplineActionIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date of the DisciplineAction.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineActionStudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'DisciplineDate';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineActionStudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineActionStudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineActionStudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'StudentUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A reference to the behavior(s) by the student that led or contributed to this specific action.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineActionStudentDisciplineIncidentBehaviorAssociation';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'BeginDate';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The person, organization, or department that designated the participation status.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'DesignatedBy';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The student''s program participation status.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'ParticipationStatusDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'ProgramEducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'ProgramName';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'ProgramTypeDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date the student''s program participation status began.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'StatusBeginDate';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date the student''s program participation status ended.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'StudentUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The status of the student''s program participation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus';
GO


EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The intended major subject area of the department.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'OrganizationDepartment', @level2type = N'COLUMN', @level2name = N'AcademicSubjectDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique identification code for the OrganizationDepartment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'OrganizationDepartment', @level2type = N'COLUMN', @level2name = N'OrganizationDepartmentId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'OrganizationDepartment', @level2type = N'COLUMN', @level2name = N'ParentEducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An organizational unit of another education organization, often devoted to a particular academic discipline, area of study, or organization function.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'OrganizationDepartment';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The original peoples or cultures with which the individual identifies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffAncestryEthnicOrigin', @level2type = N'COLUMN', @level2name = N'AncestryEthnicOriginDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a staff.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffAncestryEthnicOrigin', @level2type = N'COLUMN', @level2name = N'StaffUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The original peoples or cultures with which the individual identifies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffAncestryEthnicOrigin';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Describes behavior by category.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'BehaviorDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Specifies a more granular level of detail of a behavior involved in the incident.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'BehaviorDetailedDescription';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'StudentUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This association describes the behavior of students involved in a discipline incident.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociation';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Describes behavior by category.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'BehaviorDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The role or type of participation of a student in a discipline incident.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'DisciplineIncidentParticipationCodeDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'SchoolId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'StudentUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The role or type of participation of a student in a discipline incident.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode';
GO


EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentNonOffenderAssociation', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentNonOffenderAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentNonOffenderAssociation', @level2type = N'COLUMN', @level2name = N'StudentUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This association indicates those students who were involved and not perpetrators for a discipline incident.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentNonOffenderAssociation';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The role or type of participation of a student in a discipline incident.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'DisciplineIncidentParticipationCodeDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'SchoolId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'StudentUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The role or type of participation of a student in a discipline incident.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode';
GO


EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The original peoples or cultures with which the individual identifies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAncestryEthnicOrigin', @level2type = N'COLUMN', @level2name = N'AncestryEthnicOriginDescriptorId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAncestryEthnicOrigin', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAncestryEthnicOrigin', @level2type = N'COLUMN', @level2name = N'StudentUSI';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The original peoples or cultures with which the individual identifies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAncestryEthnicOrigin';
GO

EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The set of elements that describes an address for the education entity, including the street address, city, state, ZIP code, and ZIP code + 4.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationAddress';
GO

EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The fiscal year for which the federal funds are received.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LocalEducationAgencyFederalFunds', @level2type = N'COLUMN', @level2name = N'FiscalYear';
GO


EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Parent', @level2type = N'COLUMN', @level2name = N'HighestCompletedLevelOfEducationDescriptorId';
GO

EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Reflects important characteristics of a student. If a student has a characteristic present, that characteristic is considered true or active for that student. If a characteristic is not present, no assumption is made as to the applicability of the characteristic, but local policy may dictate otherwise.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationStudentCharacteristic';
GO

EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'An indicator or metric computed for the student (e.g., at risk).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationStudentIndicator';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicator of whether the person is a legal guardian for the Student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentParentAssociation', @level2type = N'COLUMN', @level2name = N'LegalGuardian';
GO

EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The nature of an individual''s relationship to a student, primarily used to capture family relationships.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentParentAssociation', @level2type = N'COLUMN', @level2name = N'RelationDescriptorId';
GO

EXECUTE sp_updateextendedproperty @name=N'MS_Description', @value=N'The role or type of participation of a student in a discipline incident; 
        for example:
        Victim
        Perpetrator
        Witness
        Reporter.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'StudentParticipationCodeDescriptorId'
GO