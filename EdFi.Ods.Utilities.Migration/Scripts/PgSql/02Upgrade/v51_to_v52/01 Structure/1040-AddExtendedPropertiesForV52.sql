-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

COMMENT ON COLUMN edfi.AncestryEthnicOriginDescriptor.AncestryEthnicOriginDescriptorId 
IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

COMMENT ON TABLE  edfi.AncestryEthnicOriginDescriptor
IS 'The original peoples or cultures with which the individual identifies.';


COMMENT ON COLUMN edfi.AssessmentScoreRangeLearningStandard.AssessmentIdentifier
IS 'A unique number or alphanumeric code assigned to an assessment.';

COMMENT ON COLUMN edfi.AssessmentScoreRangeLearningStandard.AssessmentReportingMethodDescriptorId
IS 'The assessment reporting method defined (e.g., scale score, RIT scale score) associated with the referenced learning standard(s).';

COMMENT ON COLUMN edfi.AssessmentScoreRangeLearningStandard.IdentificationCode
IS 'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.';

COMMENT ON COLUMN edfi.AssessmentScoreRangeLearningStandard.MaximumScore
IS 'The maximum score in the score range.';

COMMENT ON COLUMN edfi.AssessmentScoreRangeLearningStandard.MinimumScore
IS 'The minimum score in the score range.';

COMMENT ON COLUMN edfi.AssessmentScoreRangeLearningStandard.Namespace
IS 'Namespace for the Assessment.';

COMMENT ON COLUMN edfi.AssessmentScoreRangeLearningStandard.ScoreRangeId
IS 'A unique number or alphanumeric code assigned to the score range associated with one or more learning standards.';

COMMENT ON TABLE edfi.AssessmentScoreRangeLearningStandard
IS 'Score ranges of an assessment associated with one or more learning standards.';

COMMENT ON COLUMN edfi.AssessmentScoreRangeLearningStandardLearningStandard.AssessmentIdentifier
IS 'A unique number or alphanumeric code assigned to an assessment.';

COMMENT ON COLUMN edfi.AssessmentScoreRangeLearningStandardLearningStandard.LearningStandardId
IS 'The identifier for the specific learning standard (e.g., 111.15.3.1.A).';

COMMENT ON COLUMN edfi.AssessmentScoreRangeLearningStandardLearningStandard.Namespace
IS 'Namespace for the Assessment.';

COMMENT ON COLUMN edfi.AssessmentScoreRangeLearningStandardLearningStandard.ScoreRangeId
IS 'A unique number or alphanumeric code assigned to the score range associated with one or more learning standards.';

COMMENT ON TABLE edfi.AssessmentScoreRangeLearningStandardLearningStandard
IS 'LearningStandard associated with the score range.';

COMMENT ON TABLE edfi.DisciplineActionStudentDisciplineIncidentBehaviorAssociation
IS 'A reference to the behavior(s) by the student that led or contributed to this specific action.';

COMMENT ON COLUMN edfi.DisciplineActionStudentDisciplineIncidentBehaviorAssociation.BehaviorDescriptorId
IS 'Describes behavior by category.';

COMMENT ON COLUMN edfi.DisciplineActionStudentDisciplineIncidentBehaviorAssociation.DisciplineActionIdentifier
IS 'Identifier assigned by the education organization to the DisciplineAction.';

COMMENT ON COLUMN edfi.DisciplineActionStudentDisciplineIncidentBehaviorAssociation.DisciplineDate
IS 'The date of the DisciplineAction.';

COMMENT ON COLUMN edfi.DisciplineActionStudentDisciplineIncidentBehaviorAssociation.IncidentIdentifier
IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';

COMMENT ON COLUMN edfi.DisciplineActionStudentDisciplineIncidentBehaviorAssociation.SchoolId
IS 'The identifier assigned to a school.';

COMMENT ON COLUMN edfi.DisciplineActionStudentDisciplineIncidentBehaviorAssociation.StudentUSI 
IS 'A unique alphanumeric code assigned to a student.';


COMMENT ON COLUMN edfi.GeneralStudentProgramAssociationProgramParticipationStatus.BeginDate
IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';

COMMENT ON COLUMN edfi.GeneralStudentProgramAssociationProgramParticipationStatus.DesignatedBy
IS 'The person, organization, or department that designated the participation status.' ;

COMMENT ON COLUMN edfi.GeneralStudentProgramAssociationProgramParticipationStatus.EducationOrganizationId
IS 'The identifier assigned to an education organization.';

COMMENT ON COLUMN edfi.GeneralStudentProgramAssociationProgramParticipationStatus.ParticipationStatusDescriptorId
IS 'The student''s program participation status.';

COMMENT ON COLUMN edfi.GeneralStudentProgramAssociationProgramParticipationStatus.ProgramEducationOrganizationId
IS 'The identifier assigned to an education organization.';

COMMENT ON COLUMN edfi.GeneralStudentProgramAssociationProgramParticipationStatus.ProgramName
IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';

COMMENT ON COLUMN edfi.GeneralStudentProgramAssociationProgramParticipationStatus.ProgramTypeDescriptorId 
IS 'The type of program.';

COMMENT ON COLUMN edfi.GeneralStudentProgramAssociationProgramParticipationStatus.StatusBeginDate
IS 'The date the student''s program participation status began.';

COMMENT ON COLUMN edfi.GeneralStudentProgramAssociationProgramParticipationStatus.StatusEndDate
IS 'The date the student''s program participation status ended.';

COMMENT ON COLUMN edfi.GeneralStudentProgramAssociationProgramParticipationStatus.StudentUSI
IS 'A unique alphanumeric code assigned to a student.';

COMMENT ON TABLE edfi.GeneralStudentProgramAssociationProgramParticipationStatus
IS 'The status of the student''s program participation.';

COMMENT ON COLUMN edfi.OrganizationDepartment.AcademicSubjectDescriptorId
IS 'The intended major subject area of the department.';

COMMENT ON COLUMN edfi.OrganizationDepartment.OrganizationDepartmentId
IS 'The unique identification code for the OrganizationDepartment.';

COMMENT ON COLUMN edfi.OrganizationDepartment.ParentEducationOrganizationId
IS 'The identifier assigned to an education organization.';

COMMENT ON TABLE edfi.OrganizationDepartment
IS 'An organizational unit of another education organization, often devoted to a particular academic discipline, area of study, or organization function.';


COMMENT ON COLUMN edfi.StaffAncestryEthnicOrigin.AncestryEthnicOriginDescriptorId 
IS 'The original peoples or cultures with which the individual identifies.';


COMMENT ON COLUMN edfi.StaffAncestryEthnicOrigin.StaffUSI IS 'A unique alphanumeric code assigned to a staff.' ;


COMMENT ON TABLE edfi.StaffAncestryEthnicOrigin IS 'The original peoples or cultures with which the individual identifies.' ;


COMMENT ON COLUMN edfi.StudentDisciplineIncidentBehaviorAssociation.BehaviorDescriptorId IS 'Describes behavior by category.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentBehaviorAssociation.BehaviorDetailedDescription IS 'Specifies a more granular level of detail of a behavior involved in the incident.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentBehaviorAssociation.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentBehaviorAssociation.SchoolId IS 'The identifier assigned to a school.' ;


COMMENT ON COLUMN edfi.StudentDisciplineIncidentBehaviorAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';


COMMENT ON TABLE edfi.StudentDisciplineIncidentBehaviorAssociation IS 'This association describes the behavior of students involved in a discipline incident.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentBehaviorAssociationDisciplineIn_ae6a21.BehaviorDescriptorId IS 'Describes behavior by category.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentBehaviorAssociationDisciplineIn_ae6a21.DisciplineIncidentParticipationCodeDescriptorId IS 'The role or type of participation of a student in a discipline incident.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentBehaviorAssociationDisciplineIn_ae6a21.IncidentIdentifier IS 
'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';

COMMENT ON COLUMN edfi.StudentDisciplineIncidentBehaviorAssociationDisciplineIn_ae6a21.SchoolId IS 
'The identifier assigned to a school.';

COMMENT ON COLUMN edfi.StudentDisciplineIncidentBehaviorAssociationDisciplineIn_ae6a21.StudentUSI IS 
'A unique alphanumeric code assigned to a student.';

COMMENT ON TABLE edfi.StudentDisciplineIncidentBehaviorAssociationDisciplineIn_ae6a21 IS 
'The role or type of participation of a student in a discipline incident.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentNonOffenderAssociation.IncidentIdentifier IS 
'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentNonOffenderAssociation.SchoolId IS 'The identifier assigned to a school.' ;


COMMENT ON COLUMN edfi.StudentDisciplineIncidentNonOffenderAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';


COMMENT ON TABLE edfi.StudentDisciplineIncidentNonOffenderAssociation IS 'This association indicates those students who were involved and not perpetrators for a discipline incident.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentNonOffenderAssociationDisciplin_4c979a.DisciplineIncidentParticipationCodeDescriptorId IS 'The role or type of participation of a student in a discipline incident.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentNonOffenderAssociationDisciplin_4c979a.IncidentIdentifier IS 
'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentNonOffenderAssociationDisciplin_4c979a.SchoolId IS 
'The identifier assigned to a school.';


COMMENT ON COLUMN edfi.StudentDisciplineIncidentNonOffenderAssociationDisciplin_4c979a.StudentUSI IS 
'A unique alphanumeric code assigned to a student.';


COMMENT ON TABLE edfi.StudentDisciplineIncidentNonOffenderAssociationDisciplin_4c979a IS 
'The role or type of participation of a student in a discipline incident.';


COMMENT ON COLUMN edfi.StudentEducationOrganizationAssociationAncestryEthnicOrigin.AncestryEthnicOriginDescriptorId IS 
'The original peoples or cultures with which the individual identifies.';


COMMENT ON COLUMN edfi.StudentEducationOrganizationAssociationAncestryEthnicOrigin.EducationOrganizationId IS 
'The identifier assigned to an education organization.';


COMMENT ON COLUMN edfi.StudentEducationOrganizationAssociationAncestryEthnicOrigin.StudentUSI IS 
'A unique alphanumeric code assigned to a student.';

COMMENT ON TABLE edfi.StudentEducationOrganizationAssociationAncestryEthnicOrigin IS 'The original peoples or cultures with which the individual identifies.';

COMMENT ON TABLE edfi.EducationOrganizationAddress IS 
'The set of elements that describes an address for the education entity, including the street address, city, state, ZIP code, and ZIP code + 4.' ;

COMMENT ON COLUMN edfi.LocalEducationAgencyFederalFunds.FiscalYear IS 'The fiscal year for which the federal funds are received.';

COMMENT ON COLUMN edfi.Parent.HighestCompletedLevelOfEducationDescriptorId IS 
'The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).';

COMMENT ON TABLE  edfi.StudentEducationOrganizationAssociationStudentCharacteristic IS 'Reflects important characteristics of a student. If a student has a characteristic present, that characteristic is considered true or active for that student. If a characteristic is not present, no assumption is made as to the applicability of the characteristic, but local policy may dictate otherwise.';

COMMENT ON TABLE edfi.StudentEducationOrganizationAssociationStudentIndicator IS 'An indicator or metric computed for the student (e.g., at risk).';

COMMENT ON COLUMN edfi.StudentParentAssociation.LegalGuardian IS 
'Indicator of whether the person is a legal guardian for the Student.';

COMMENT ON COLUMN edfi.StudentParentAssociation.RelationDescriptorId IS 
'The nature of an individual''s relationship to a student, primarily used to capture family relationships.';

COMMENT ON COLUMN edfi.studentdisciplineincidentassociation.studentparticipationcodedescriptorid is 'The role or type of participation of a student in a discipline incident;
        for example:
        Victim
        Perpetrator
        Witness
        Reporter.';