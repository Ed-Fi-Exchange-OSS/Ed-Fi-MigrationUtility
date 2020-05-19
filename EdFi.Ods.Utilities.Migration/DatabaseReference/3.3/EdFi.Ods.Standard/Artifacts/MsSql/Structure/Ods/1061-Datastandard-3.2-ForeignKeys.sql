-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='AssessmentItemPossibleResponse'
    AND CONSTRAINT_NAME='FK_AssessmentItemPossibleResponse_AssessmentItem')
BEGIN
    ALTER TABLE edfi.AssessmentItemPossibleResponse WITH CHECK 
    ADD CONSTRAINT FK_AssessmentItemPossibleResponse_AssessmentItem FOREIGN KEY (AssessmentIdentifier, IdentificationCode, Namespace)
    REFERENCES edfi.AssessmentItem (AssessmentIdentifier, IdentificationCode, Namespace)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_AssessmentItemPossibleResponse_AssessmentItem
    ON edfi.AssessmentItemPossibleResponse (AssessmentIdentifier ASC, IdentificationCode ASC, Namespace ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='AssessmentPlatformType'
    AND CONSTRAINT_NAME='FK_AssessmentPlatformType_Assessment')
BEGIN
    ALTER TABLE edfi.AssessmentPlatformType WITH CHECK 
    ADD CONSTRAINT FK_AssessmentPlatformType_Assessment FOREIGN KEY (AssessmentIdentifier, Namespace)
    REFERENCES edfi.Assessment (AssessmentIdentifier, Namespace)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_AssessmentPlatformType_Assessment
    ON edfi.AssessmentPlatformType (AssessmentIdentifier ASC, Namespace ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='AssessmentPlatformType'
    AND CONSTRAINT_NAME='FK_AssessmentPlatformType_PlatformTypeDescriptor')
BEGIN
    ALTER TABLE edfi.AssessmentPlatformType WITH CHECK 
    ADD CONSTRAINT FK_AssessmentPlatformType_PlatformTypeDescriptor FOREIGN KEY (PlatformTypeDescriptorId)
    REFERENCES edfi.PlatformTypeDescriptor (PlatformTypeDescriptorId);

    CREATE NONCLUSTERED INDEX FK_AssessmentPlatformType_PlatformTypeDescriptor
    ON edfi.AssessmentPlatformType (PlatformTypeDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='CTEProgramServiceDescriptor'
    AND CONSTRAINT_NAME='FK_CTEProgramServiceDescriptor_Descriptor')
BEGIN
    ALTER TABLE edfi.CTEProgramServiceDescriptor WITH CHECK ADD CONSTRAINT FK_CTEProgramServiceDescriptor_Descriptor
    FOREIGN KEY (CTEProgramServiceDescriptorId)
    REFERENCES edfi.Descriptor (DescriptorId)
    ON DELETE CASCADE;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='DisciplineIncidentExternalParticipant'
    AND CONSTRAINT_NAME='FK_DisciplineIncidentExternalParticipant_DisciplineIncident')
BEGIN
    ALTER TABLE edfi.DisciplineIncidentExternalParticipant WITH CHECK ADD CONSTRAINT FK_DisciplineIncidentExternalParticipant_DisciplineIncident
    FOREIGN KEY (IncidentIdentifier, SchoolId)
    REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_DisciplineIncidentExternalParticipant_DisciplineIncident
    ON edfi.DisciplineIncidentExternalParticipant (IncidentIdentifier ASC, SchoolId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='DisciplineIncidentExternalParticipant'
    AND CONSTRAINT_NAME='FK_DisciplineIncidentExternalParticipant_DisciplineIncidentParticipationCodeDescriptor')
BEGIN
    ALTER TABLE edfi.DisciplineIncidentExternalParticipant WITH CHECK
    ADD CONSTRAINT FK_DisciplineIncidentExternalParticipant_DisciplineIncidentParticipationCodeDescriptor
    FOREIGN KEY (DisciplineIncidentParticipationCodeDescriptorId)
    REFERENCES edfi.DisciplineIncidentParticipationCodeDescriptor (DisciplineIncidentParticipationCodeDescriptorId);

    CREATE NONCLUSTERED INDEX FK_DisciplineIncidentExternalParticipant_DisciplineIncidentParticipationCodeDescriptor
    ON edfi.DisciplineIncidentExternalParticipant (DisciplineIncidentParticipationCodeDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='DisciplineIncidentParticipationCodeDescriptor'
    AND CONSTRAINT_NAME='FK_DisciplineIncidentParticipationCodeDescriptor_Descriptor')
BEGIN
    ALTER TABLE edfi.DisciplineIncidentParticipationCodeDescriptor WITH CHECK 
    ADD CONSTRAINT FK_DisciplineIncidentParticipationCodeDescriptor_Descriptor FOREIGN KEY (DisciplineIncidentParticipationCodeDescriptorId)
    REFERENCES edfi.Descriptor (DescriptorId)
    ON DELETE CASCADE;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='GeneralStudentProgramAssociationParticipationStatus'
    AND CONSTRAINT_NAME='FK_GeneralStudentProgramAssociationParticipationStatus_GeneralStudentProgramAssociation')
BEGIN
    ALTER TABLE edfi.GeneralStudentProgramAssociationParticipationStatus WITH CHECK 
    ADD CONSTRAINT FK_GeneralStudentProgramAssociationParticipationStatus_GeneralStudentProgramAssociation
    FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
    REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
    ON DELETE CASCADE;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='GeneralStudentProgramAssociationParticipationStatus'
    AND CONSTRAINT_NAME='FK_GeneralStudentProgramAssociationParticipationStatus_ParticipationStatusDescriptor')
BEGIN
    ALTER TABLE edfi.GeneralStudentProgramAssociationParticipationStatus WITH CHECK 
    ADD CONSTRAINT FK_GeneralStudentProgramAssociationParticipationStatus_ParticipationStatusDescriptor 
    FOREIGN KEY (ParticipationStatusDescriptorId)
    REFERENCES edfi.ParticipationStatusDescriptor (ParticipationStatusDescriptorId);

    CREATE NONCLUSTERED INDEX FK_GeneralStudentProgramAssociationParticipationStatus_ParticipationStatusDescriptor
    ON edfi.GeneralStudentProgramAssociationParticipationStatus (ParticipationStatusDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='GradeLearningStandardGrade'
    AND CONSTRAINT_NAME='FK_GradeLearningStandardGrade_Grade')
BEGIN
    ALTER TABLE edfi.GradeLearningStandardGrade WITH CHECK 
    ADD CONSTRAINT FK_GradeLearningStandardGrade_Grade
    FOREIGN KEY (BeginDate, GradeTypeDescriptorId, GradingPeriodDescriptorId, GradingPeriodSchoolYear, GradingPeriodSequence, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
    REFERENCES edfi.Grade (BeginDate, GradeTypeDescriptorId, GradingPeriodDescriptorId, GradingPeriodSchoolYear, GradingPeriodSequence, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

    CREATE NONCLUSTERED INDEX FK_GradeLearningStandardGrade_Grade
    ON edfi.GradeLearningStandardGrade (BeginDate ASC, GradeTypeDescriptorId ASC, GradingPeriodDescriptorId ASC, GradingPeriodSchoolYear ASC, GradingPeriodSequence ASC, LocalCourseCode ASC, SchoolId ASC, SchoolYear ASC, SectionIdentifier ASC, SessionName ASC, StudentUSI ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='GradeLearningStandardGrade'
    AND CONSTRAINT_NAME='FK_GradeLearningStandardGrade_LearningStandard')
BEGIN
    ALTER TABLE edfi.GradeLearningStandardGrade WITH CHECK 
    ADD CONSTRAINT FK_GradeLearningStandardGrade_LearningStandard
    FOREIGN KEY (LearningStandardId)
    REFERENCES edfi.LearningStandard (LearningStandardId);

    CREATE NONCLUSTERED INDEX FK_GradeLearningStandardGrade_LearningStandard
    ON edfi.GradeLearningStandardGrade (LearningStandardId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='GradeLearningStandardGrade'
    AND CONSTRAINT_NAME='FK_GradeLearningStandardGrade_PerformanceBaseConversionDescriptor')
BEGIN
    ALTER TABLE edfi.GradeLearningStandardGrade WITH CHECK 
    ADD CONSTRAINT FK_GradeLearningStandardGrade_PerformanceBaseConversionDescriptor
    FOREIGN KEY (PerformanceBaseConversionDescriptorId)
    REFERENCES edfi.PerformanceBaseConversionDescriptor (PerformanceBaseConversionDescriptorId);

    CREATE NONCLUSTERED INDEX FK_GradeLearningStandardGrade_PerformanceBaseConversionDescriptor
    ON edfi.GradeLearningStandardGrade (PerformanceBaseConversionDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='GradePointAverageWeightSystemDescriptor'
    AND CONSTRAINT_NAME='FK_GradePointAverageWeightSystemDescriptor_Descriptor')
BEGIN
    ALTER TABLE edfi.GradePointAverageWeightSystemDescriptor WITH CHECK 
    ADD CONSTRAINT FK_GradePointAverageWeightSystemDescriptor_Descriptor FOREIGN KEY (GradePointAverageWeightSystemDescriptorId)
    REFERENCES edfi.Descriptor (DescriptorId)
    ON DELETE CASCADE;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='LearningStandard'
    AND CONSTRAINT_NAME='FK_LearningStandard_LearningStandardScopeDescriptor')
BEGIN
    ALTER TABLE edfi.LearningStandard WITH CHECK 
    ADD CONSTRAINT FK_LearningStandard_LearningStandardScopeDescriptor 
    FOREIGN KEY (LearningStandardScopeDescriptorId)
    REFERENCES edfi.LearningStandardScopeDescriptor (LearningStandardScopeDescriptorId);

    CREATE NONCLUSTERED INDEX FK_LearningStandard_LearningStandardScopeDescriptor
    ON edfi.LearningStandard (LearningStandardScopeDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='LearningStandardEquivalenceAssociation'
    AND CONSTRAINT_NAME='FK_LearningStandardEquivalenceAssociation_LearningStandard')
BEGIN
    ALTER TABLE edfi.LearningStandardEquivalenceAssociation WITH CHECK 
    ADD CONSTRAINT FK_LearningStandardEquivalenceAssociation_LearningStandard FOREIGN KEY (SourceLearningStandardId)
    REFERENCES edfi.LearningStandard (LearningStandardId);

    CREATE NONCLUSTERED INDEX FK_LearningStandardEquivalenceAssociation_LearningStandard
    ON edfi.LearningStandardEquivalenceAssociation (SourceLearningStandardId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='LearningStandardEquivalenceAssociation'
    AND CONSTRAINT_NAME='FK_LearningStandardEquivalenceAssociation_LearningStandard1')
BEGIN
    ALTER TABLE edfi.LearningStandardEquivalenceAssociation WITH CHECK 
    ADD CONSTRAINT FK_LearningStandardEquivalenceAssociation_LearningStandard1 FOREIGN KEY (TargetLearningStandardId)
    REFERENCES edfi.LearningStandard (LearningStandardId);

    CREATE NONCLUSTERED INDEX FK_LearningStandardEquivalenceAssociation_LearningStandard1
    ON edfi.LearningStandardEquivalenceAssociation (TargetLearningStandardId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='LearningStandardEquivalenceAssociation'
    AND CONSTRAINT_NAME='FK_LearningStandardEquivalenceAssociation_LearningStandardEquivalenceStrengthDescriptor')
BEGIN
    ALTER TABLE edfi.LearningStandardEquivalenceAssociation WITH CHECK 
    ADD CONSTRAINT FK_LearningStandardEquivalenceAssociation_LearningStandardEquivalenceStrengthDescriptor 
    FOREIGN KEY (LearningStandardEquivalenceStrengthDescriptorId)
    REFERENCES edfi.LearningStandardEquivalenceStrengthDescriptor (LearningStandardEquivalenceStrengthDescriptorId);

    CREATE NONCLUSTERED INDEX FK_LearningStandardEquivalenceAssociation_LearningStandardEquivalenceStrengthDescriptor
    ON edfi.LearningStandardEquivalenceAssociation (LearningStandardEquivalenceStrengthDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='LearningStandardEquivalenceStrengthDescriptor'
    AND CONSTRAINT_NAME='FK_LearningStandardEquivalenceStrengthDescriptor_Descriptor')
BEGIN
    ALTER TABLE edfi.LearningStandardEquivalenceStrengthDescriptor WITH CHECK
    ADD CONSTRAINT FK_LearningStandardEquivalenceStrengthDescriptor_Descriptor FOREIGN KEY (LearningStandardEquivalenceStrengthDescriptorId)
    REFERENCES edfi.Descriptor (DescriptorId)
    ON DELETE CASCADE;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='LearningStandardScopeDescriptor'
    AND CONSTRAINT_NAME='FK_LearningStandardScopeDescriptor_Descriptor')
BEGIN
    ALTER TABLE edfi.LearningStandardScopeDescriptor WITH CHECK
    ADD CONSTRAINT FK_LearningStandardScopeDescriptor_Descriptor FOREIGN KEY (LearningStandardScopeDescriptorId)
    REFERENCES edfi.Descriptor (DescriptorId)
    ON DELETE CASCADE;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ObjectiveAssessment'
    AND CONSTRAINT_NAME='FK_ObjectiveAssessment_AcademicSubjectDescriptor')
BEGIN
    ALTER TABLE edfi.ObjectiveAssessment WITH CHECK
    ADD CONSTRAINT FK_ObjectiveAssessment_AcademicSubjectDescriptor FOREIGN KEY (AcademicSubjectDescriptorId)
    REFERENCES edfi.AcademicSubjectDescriptor (AcademicSubjectDescriptorId);

    CREATE NONCLUSTERED INDEX FK_ObjectiveAssessment_AcademicSubjectDescriptor
    ON edfi.ObjectiveAssessment (AcademicSubjectDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ParticipationStatusDescriptor'
    AND CONSTRAINT_NAME='FK_ParticipationStatusDescriptor_Descriptor')
BEGIN
    ALTER TABLE edfi.ParticipationStatusDescriptor WITH CHECK
    ADD CONSTRAINT FK_ParticipationStatusDescriptor_Descriptor FOREIGN KEY (ParticipationStatusDescriptorId)
    REFERENCES edfi.Descriptor (DescriptorId)
    ON DELETE CASCADE;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='PlatformTypeDescriptor'
    AND CONSTRAINT_NAME='FK_PlatformTypeDescriptor_Descriptor')
BEGIN
    ALTER TABLE edfi.PlatformTypeDescriptor WITH CHECK
    ADD CONSTRAINT FK_PlatformTypeDescriptor_Descriptor FOREIGN KEY (PlatformTypeDescriptorId)
    REFERENCES edfi.Descriptor (DescriptorId)
    ON DELETE CASCADE;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ReportCardGradePointAverage'
    AND CONSTRAINT_NAME='FK_ReportCardGradePointAverage_GradePointAverageWeightSystemDescriptor')
BEGIN
    ALTER TABLE edfi.ReportCardGradePointAverage WITH CHECK
    ADD CONSTRAINT FK_ReportCardGradePointAverage_GradePointAverageWeightSystemDescriptor
    FOREIGN KEY (GradePointAverageWeightSystemDescriptorId)
    REFERENCES edfi.GradePointAverageWeightSystemDescriptor (GradePointAverageWeightSystemDescriptorId);

    CREATE NONCLUSTERED INDEX FK_ReportCardGradePointAverage_GradePointAverageWeightSystemDescriptor
    ON edfi.ReportCardGradePointAverage (GradePointAverageWeightSystemDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ReportCardGradePointAverage'
    AND CONSTRAINT_NAME='FK_ReportCardGradePointAverage_ReportCard')
BEGIN
    ALTER TABLE edfi.ReportCardGradePointAverage WITH CHECK 
    ADD CONSTRAINT FK_ReportCardGradePointAverage_ReportCard 
    FOREIGN KEY (EducationOrganizationId, GradingPeriodDescriptorId, GradingPeriodSchoolId, GradingPeriodSchoolYear, GradingPeriodSequence, StudentUSI)
    REFERENCES edfi.ReportCard (EducationOrganizationId, GradingPeriodDescriptorId, GradingPeriodSchoolId, GradingPeriodSchoolYear, GradingPeriodSequence, StudentUSI)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_ReportCardGradePointAverage_ReportCard
    ON edfi.ReportCardGradePointAverage (EducationOrganizationId ASC, GradingPeriodDescriptorId ASC, GradingPeriodSchoolId ASC, GradingPeriodSchoolYear ASC, GradingPeriodSequence ASC, StudentUSI ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffDisciplineIncidentAssociation'
    AND CONSTRAINT_NAME='FK_StaffDisciplineIncidentAssociation_DisciplineIncident')
BEGIN
    ALTER TABLE edfi.StaffDisciplineIncidentAssociation WITH CHECK 
    ADD CONSTRAINT FK_StaffDisciplineIncidentAssociation_DisciplineIncident FOREIGN KEY (IncidentIdentifier, SchoolId)
    REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId);

    CREATE NONCLUSTERED INDEX FK_StaffDisciplineIncidentAssociation_DisciplineIncident
    ON edfi.StaffDisciplineIncidentAssociation (IncidentIdentifier ASC, SchoolId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffDisciplineIncidentAssociation'
    AND CONSTRAINT_NAME='FK_StaffDisciplineIncidentAssociation_Staff')
BEGIN
    ALTER TABLE edfi.StaffDisciplineIncidentAssociation WITH CHECK
    ADD CONSTRAINT FK_StaffDisciplineIncidentAssociation_Staff FOREIGN KEY (StaffUSI)
    REFERENCES edfi.Staff (StaffUSI);

    CREATE NONCLUSTERED INDEX FK_StaffDisciplineIncidentAssociation_Staff
    ON edfi.StaffDisciplineIncidentAssociation (StaffUSI ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode'
    AND CONSTRAINT_NAME='FK_StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_DisciplineIncidentParticipationCodeDescriptor')
BEGIN
    ALTER TABLE edfi.StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode WITH CHECK
    ADD CONSTRAINT FK_StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_DisciplineIncidentParticipationCodeDescriptor 
    FOREIGN KEY (DisciplineIncidentParticipationCodeDescriptorId)
    REFERENCES edfi.DisciplineIncidentParticipationCodeDescriptor (DisciplineIncidentParticipationCodeDescriptorId);

    CREATE NONCLUSTERED INDEX FK_StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_DisciplineIncidentParticipationCodeDescriptor
    ON edfi.StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode (DisciplineIncidentParticipationCodeDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode'
    AND CONSTRAINT_NAME='FK_StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_StaffDisciplineIncidentAssociation')
BEGIN
    ALTER TABLE edfi.StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode WITH CHECK 
    ADD CONSTRAINT FK_StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_StaffDisciplineIncidentAssociation
    FOREIGN KEY (IncidentIdentifier, SchoolId, StaffUSI)
    REFERENCES edfi.StaffDisciplineIncidentAssociation (IncidentIdentifier, SchoolId, StaffUSI)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_StaffDisciplineIncidentAssociation
    ON edfi.StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode (IncidentIdentifier ASC, SchoolId ASC, StaffUSI ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentAcademicRecordGradePointAverage'
    AND CONSTRAINT_NAME='FK_StudentAcademicRecordGradePointAverage_GradePointAverageWeightSystemDescriptor')
BEGIN
    ALTER TABLE edfi.StudentAcademicRecordGradePointAverage WITH CHECK 
    ADD CONSTRAINT FK_StudentAcademicRecordGradePointAverage_GradePointAverageWeightSystemDescriptor 
    FOREIGN KEY (GradePointAverageWeightSystemDescriptorId)
    REFERENCES edfi.GradePointAverageWeightSystemDescriptor (GradePointAverageWeightSystemDescriptorId);

    CREATE NONCLUSTERED INDEX FK_StudentAcademicRecordGradePointAverage_GradePointAverageWeightSystemDescriptor
    ON edfi.StudentAcademicRecordGradePointAverage (GradePointAverageWeightSystemDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentAcademicRecordGradePointAverage'
    AND CONSTRAINT_NAME='FK_StudentAcademicRecordGradePointAverage_StudentAcademicRecord')
BEGIN
    ALTER TABLE edfi.StudentAcademicRecordGradePointAverage WITH CHECK
    ADD CONSTRAINT FK_StudentAcademicRecordGradePointAverage_StudentAcademicRecord
    FOREIGN KEY (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
    REFERENCES edfi.StudentAcademicRecord (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_StudentAcademicRecordGradePointAverage_StudentAcademicRecord
    ON edfi.StudentAcademicRecordGradePointAverage (EducationOrganizationId ASC, SchoolYear ASC, StudentUSI ASC, TermDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentAssessment'
    AND CONSTRAINT_NAME='FK_StudentAssessment_PlatformTypeDescriptor')
BEGIN
    ALTER TABLE edfi.StudentAssessment WITH CHECK 
    ADD CONSTRAINT FK_StudentAssessment_PlatformTypeDescriptor FOREIGN KEY (PlatformTypeDescriptorId)
    REFERENCES edfi.PlatformTypeDescriptor (PlatformTypeDescriptorId);

    CREATE NONCLUSTERED INDEX FK_StudentAssessment_PlatformTypeDescriptor
    ON edfi.StudentAssessment (PlatformTypeDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentCTEProgramAssociationCTEProgramService'
    AND CONSTRAINT_NAME='FK_StudentCTEProgramAssociationCTEProgramService_CTEProgramServiceDescriptor')
BEGIN
    ALTER TABLE edfi.StudentCTEProgramAssociationCTEProgramService WITH CHECK 
    ADD CONSTRAINT FK_StudentCTEProgramAssociationCTEProgramService_CTEProgramServiceDescriptor FOREIGN KEY (CTEProgramServiceDescriptorId)
    REFERENCES edfi.CTEProgramServiceDescriptor (CTEProgramServiceDescriptorId);

    CREATE NONCLUSTERED INDEX FK_StudentCTEProgramAssociationCTEProgramService_CTEProgramServiceDescriptor
    ON edfi.StudentCTEProgramAssociationCTEProgramService (CTEProgramServiceDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentCTEProgramAssociationCTEProgramService'
    AND CONSTRAINT_NAME='FK_StudentCTEProgramAssociationCTEProgramService_StudentCTEProgramAssociation')
BEGIN
    ALTER TABLE edfi.StudentCTEProgramAssociationCTEProgramService WITH CHECK 
    ADD CONSTRAINT FK_StudentCTEProgramAssociationCTEProgramService_StudentCTEProgramAssociation 
    FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
    REFERENCES edfi.StudentCTEProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_StudentCTEProgramAssociationCTEProgramService_StudentCTEProgramAssociation
    ON edfi.StudentCTEProgramAssociationCTEProgramService (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentSchoolAssociationAlternativeGraduationPlan'
    AND CONSTRAINT_NAME='FK_StudentSchoolAssociationAlternativeGraduationPlan_GraduationPlan')
BEGIN
    ALTER TABLE edfi.StudentSchoolAssociationAlternativeGraduationPlan WITH CHECK 
    ADD CONSTRAINT FK_StudentSchoolAssociationAlternativeGraduationPlan_GraduationPlan 
    FOREIGN KEY (AlternativeEducationOrganizationId, AlternativeGraduationPlanTypeDescriptorId, AlternativeGraduationSchoolYear)
    REFERENCES edfi.GraduationPlan (EducationOrganizationId, GraduationPlanTypeDescriptorId, GraduationSchoolYear);

    CREATE NONCLUSTERED INDEX FK_StudentSchoolAssociationAlternativeGraduationPlan_GraduationPlan
    ON edfi.StudentSchoolAssociationAlternativeGraduationPlan (AlternativeEducationOrganizationId ASC, AlternativeGraduationPlanTypeDescriptorId ASC, AlternativeGraduationSchoolYear ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentSchoolAssociationAlternativeGraduationPlan'
    AND CONSTRAINT_NAME='FK_StudentSchoolAssociationAlternativeGraduationPlan_StudentSchoolAssociation')
BEGIN
    ALTER TABLE edfi.StudentSchoolAssociationAlternativeGraduationPlan WITH CHECK
    ADD CONSTRAINT FK_StudentSchoolAssociationAlternativeGraduationPlan_StudentSchoolAssociation
    FOREIGN KEY (EntryDate, SchoolId, StudentUSI)
    REFERENCES edfi.StudentSchoolAssociation (EntryDate, SchoolId, StudentUSI)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

    CREATE NONCLUSTERED INDEX FK_StudentSchoolAssociationAlternativeGraduationPlan_StudentSchoolAssociation
    ON edfi.StudentSchoolAssociationAlternativeGraduationPlan (EntryDate ASC, SchoolId ASC, StudentUSI ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider'
    AND CONSTRAINT_NAME='FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_Staff')
BEGIN
    ALTER TABLE edfi.StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider WITH CHECK
    ADD CONSTRAINT FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_Staff 
    FOREIGN KEY (StaffUSI)
    REFERENCES edfi.Staff (StaffUSI);

    CREATE NONCLUSTERED INDEX FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_Staff
    ON edfi.StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider (StaffUSI ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider'
    AND CONSTRAINT_NAME='FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_StudentSpecialEducationProgramAssociationSpec')
BEGIN
    ALTER TABLE edfi.StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider WITH CHECK 
    ADD CONSTRAINT FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_StudentSpecialEducationProgramAssociationSpec 
    FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, SpecialEducationProgramServiceDescriptorId, StudentUSI)
    REFERENCES edfi.StudentSpecialEducationProgramAssociationSpecialEducationProgramService (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, SpecialEducationProgramServiceDescriptorId, StudentUSI)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_StudentSpecialEducationProgramAssociationSpec
    ON edfi.StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, SpecialEducationProgramServiceDescriptorId ASC, StudentUSI ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentTitleIPartAProgramAssociationTitleIPartAProgramService'
    AND CONSTRAINT_NAME='FK_StudentTitleIPartAProgramAssociationTitleIPartAProgramService_StudentTitleIPartAProgramAssociation')
BEGIN
    ALTER TABLE edfi.StudentTitleIPartAProgramAssociationTitleIPartAProgramService WITH CHECK 
    ADD CONSTRAINT FK_StudentTitleIPartAProgramAssociationTitleIPartAProgramService_StudentTitleIPartAProgramAssociation 
    FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
    REFERENCES edfi.StudentTitleIPartAProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_StudentTitleIPartAProgramAssociationTitleIPartAProgramService_StudentTitleIPartAProgramAssociation
    ON edfi.StudentTitleIPartAProgramAssociationTitleIPartAProgramService (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentTitleIPartAProgramAssociationTitleIPartAProgramService'
    AND CONSTRAINT_NAME='FK_StudentTitleIPartAProgramAssociationTitleIPartAProgramService_TitleIPartAProgramServiceDescriptor')
BEGIN
    ALTER TABLE edfi.StudentTitleIPartAProgramAssociationTitleIPartAProgramService WITH CHECK
    ADD CONSTRAINT FK_StudentTitleIPartAProgramAssociationTitleIPartAProgramService_TitleIPartAProgramServiceDescriptor
    FOREIGN KEY (TitleIPartAProgramServiceDescriptorId)
    REFERENCES edfi.TitleIPartAProgramServiceDescriptor (TitleIPartAProgramServiceDescriptorId);

    CREATE NONCLUSTERED INDEX FK_StudentTitleIPartAProgramAssociationTitleIPartAProgramService_TitleIPartAProgramServiceDescriptor
    ON edfi.StudentTitleIPartAProgramAssociationTitleIPartAProgramService (TitleIPartAProgramServiceDescriptorId ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='TitleIPartAProgramServiceDescriptor'
    AND CONSTRAINT_NAME='FK_TitleIPartAProgramServiceDescriptor_Descriptor')
BEGIN
    ALTER TABLE edfi.TitleIPartAProgramServiceDescriptor WITH CHECK 
    ADD CONSTRAINT FK_TitleIPartAProgramServiceDescriptor_Descriptor 
    FOREIGN KEY (TitleIPartAProgramServiceDescriptorId)
    REFERENCES edfi.Descriptor (DescriptorId)
    ON DELETE CASCADE;
END
GO