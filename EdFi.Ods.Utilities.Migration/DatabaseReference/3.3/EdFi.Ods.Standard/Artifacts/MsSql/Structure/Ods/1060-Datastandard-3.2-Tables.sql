-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='AssessmentItemPossibleResponse')
BEGIN
    CREATE TABLE edfi.AssessmentItemPossibleResponse
    (
        AssessmentIdentifier NVARCHAR(60) NOT NULL,
        IdentificationCode NVARCHAR(60) NOT NULL,
        [Namespace] NVARCHAR(255) NOT NULL,
        ResponseValue NVARCHAR(60) NOT NULL,
        ResponseDescription NVARCHAR(1024) NULL,
        CorrectResponse BIT NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT AssessmentItemPossibleResponse_PK PRIMARY KEY CLUSTERED (
            AssessmentIdentifier ASC,
            IdentificationCode ASC,
            [Namespace] ASC,
            ResponseValue ASC
        )
    );

    ALTER TABLE edfi.AssessmentItemPossibleResponse ADD CONSTRAINT AssessmentItemPossibleResponse_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='AssessmentPlatformType')
BEGIN
    CREATE TABLE edfi.AssessmentPlatformType
    (
        AssessmentIdentifier NVARCHAR(60) NOT NULL,
        [Namespace] NVARCHAR(255) NOT NULL,
        PlatformTypeDescriptorId INT NOT NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT AssessmentPlatformType_PK PRIMARY KEY CLUSTERED (
            AssessmentIdentifier ASC,
            [Namespace] ASC,
            PlatformTypeDescriptorId ASC
        )
    );

    ALTER TABLE edfi.AssessmentPlatformType ADD CONSTRAINT AssessmentPlatformType_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='CTEProgramServiceDescriptor')
BEGIN
    CREATE TABLE edfi.CTEProgramServiceDescriptor
    (
        CTEProgramServiceDescriptorId INT NOT NULL,
        CONSTRAINT CTEProgramServiceDescriptor_PK PRIMARY KEY CLUSTERED (
            CTEProgramServiceDescriptorId ASC
        )
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='DisciplineIncidentExternalParticipant')
BEGIN
    CREATE TABLE edfi.DisciplineIncidentExternalParticipant
    (
        DisciplineIncidentParticipationCodeDescriptorId INT NOT NULL,
        FirstName NVARCHAR(75) NOT NULL,
        IncidentIdentifier NVARCHAR(20) NOT NULL,
        LastSurname NVARCHAR(75) NOT NULL,
        SchoolId INT NOT NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT DisciplineIncidentExternalParticipant_PK PRIMARY KEY CLUSTERED (
            DisciplineIncidentParticipationCodeDescriptorId ASC,
            FirstName ASC,
            IncidentIdentifier ASC,
            LastSurname ASC,
            SchoolId ASC
        )
    );

    ALTER TABLE edfi.DisciplineIncidentExternalParticipant ADD CONSTRAINT DisciplineIncidentExternalParticipant_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='DisciplineIncidentParticipationCodeDescriptor')
BEGIN
    CREATE TABLE edfi.DisciplineIncidentParticipationCodeDescriptor
    (
        DisciplineIncidentParticipationCodeDescriptorId INT NOT NULL,
        CONSTRAINT DisciplineIncidentParticipationCodeDescriptor_PK PRIMARY KEY CLUSTERED (
            DisciplineIncidentParticipationCodeDescriptorId ASC
        )
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='GeneralStudentProgramAssociationParticipationStatus')
BEGIN
    CREATE TABLE edfi.GeneralStudentProgramAssociationParticipationStatus
    (
        BeginDate DATE NOT NULL,
        EducationOrganizationId INT NOT NULL,
        ProgramEducationOrganizationId INT NOT NULL,
        ProgramName NVARCHAR(60) NOT NULL,
        ProgramTypeDescriptorId INT NOT NULL,
        StudentUSI INT NOT NULL,
        ParticipationStatusDescriptorId INT NOT NULL,
        StatusBeginDate DATE NULL,
        StatusEndDate DATE NULL,
        DesignatedBy NVARCHAR(60) NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT GeneralStudentProgramAssociationParticipationStatus_PK PRIMARY KEY CLUSTERED (
            BeginDate ASC,
            EducationOrganizationId ASC,
            ProgramEducationOrganizationId ASC,
            ProgramName ASC,
            ProgramTypeDescriptorId ASC,
            StudentUSI ASC
        )
    );

    ALTER TABLE edfi.GeneralStudentProgramAssociationParticipationStatus ADD CONSTRAINT GeneralStudentProgramAssociationParticipationStatus_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='GradeLearningStandardGrade')
BEGIN
    CREATE TABLE edfi.GradeLearningStandardGrade
    (
        BeginDate DATE NOT NULL,
        GradeTypeDescriptorId INT NOT NULL,
        GradingPeriodDescriptorId INT NOT NULL,
        GradingPeriodSchoolYear SMALLINT NOT NULL,
        GradingPeriodSequence INT NOT NULL,
        LearningStandardId NVARCHAR(60) NOT NULL,
        LocalCourseCode NVARCHAR(60) NOT NULL,
        SchoolId INT NOT NULL,
        SchoolYear SMALLINT NOT NULL,
        SectionIdentifier NVARCHAR(255) NOT NULL,
        SessionName NVARCHAR(60) NOT NULL,
        StudentUSI INT NOT NULL,
        LetterGradeEarned NVARCHAR(20) NULL,
        NumericGradeEarned DECIMAL(9, 2) NULL,
        DiagnosticStatement NVARCHAR(1024) NULL,
        PerformanceBaseConversionDescriptorId INT NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT GradeLearningStandardGrade_PK PRIMARY KEY CLUSTERED (
            BeginDate ASC,
            GradeTypeDescriptorId ASC,
            GradingPeriodDescriptorId ASC,
            GradingPeriodSchoolYear ASC,
            GradingPeriodSequence ASC,
            LearningStandardId ASC,
            LocalCourseCode ASC,
            SchoolId ASC,
            SchoolYear ASC,
            SectionIdentifier ASC,
            SessionName ASC,
            StudentUSI ASC
        )
    );

    ALTER TABLE edfi.GradeLearningStandardGrade ADD CONSTRAINT GradeLearningStandardGrade_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='GradePointAverageWeightSystemDescriptor')
BEGIN
    CREATE TABLE edfi.GradePointAverageWeightSystemDescriptor
    (
        GradePointAverageWeightSystemDescriptorId INT NOT NULL,
        CONSTRAINT GradePointAverageWeightSystemDescriptor_PK PRIMARY KEY CLUSTERED (
            GradePointAverageWeightSystemDescriptorId ASC
        )
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='LearningStandardEquivalenceAssociation')
BEGIN
    CREATE TABLE edfi.LearningStandardEquivalenceAssociation
    (
        [Namespace] NVARCHAR(255) NOT NULL,
        SourceLearningStandardId NVARCHAR(60) NOT NULL,
        TargetLearningStandardId NVARCHAR(60) NOT NULL,
        EffectiveDate DATE NULL,
        LearningStandardEquivalenceStrengthDescriptorId INT NULL,
        LearningStandardEquivalenceStrengthDescription NVARCHAR(255) NULL,
        Discriminator NVARCHAR(128) NULL,
        CreateDate DATETIME2 NOT NULL,
        LastModifiedDate DATETIME2 NOT NULL,
        Id UNIQUEIDENTIFIER NOT NULL,
        CONSTRAINT LearningStandardEquivalenceAssociation_PK PRIMARY KEY CLUSTERED (
            [Namespace] ASC,
            SourceLearningStandardId ASC,
            TargetLearningStandardId ASC
        )
    );

    ALTER TABLE edfi.LearningStandardEquivalenceAssociation ADD CONSTRAINT LearningStandardEquivalenceAssociation_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;

    ALTER TABLE edfi.LearningStandardEquivalenceAssociation ADD CONSTRAINT LearningStandardEquivalenceAssociation_DF_Id DEFAULT (newid()) FOR Id;

    ALTER TABLE edfi.LearningStandardEquivalenceAssociation ADD CONSTRAINT LearningStandardEquivalenceAssociation_DF_LastModifiedDate DEFAULT (getdate()) FOR LastModifiedDate;

    CREATE UNIQUE NONCLUSTERED INDEX UX_LearningStandardEquivalenceAssociation_Id ON edfi.LearningStandardEquivalenceAssociation(Id);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='LearningStandardEquivalenceStrengthDescriptor')
BEGIN
    CREATE TABLE edfi.LearningStandardEquivalenceStrengthDescriptor
    (
        LearningStandardEquivalenceStrengthDescriptorId INT NOT NULL,
        CONSTRAINT LearningStandardEquivalenceStrengthDescriptor_PK PRIMARY KEY CLUSTERED (
            LearningStandardEquivalenceStrengthDescriptorId ASC
        )
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='LearningStandardScopeDescriptor')
BEGIN
    CREATE TABLE edfi.LearningStandardScopeDescriptor
    (
        LearningStandardScopeDescriptorId INT NOT NULL,
        CONSTRAINT LearningStandardScopeDescriptor_PK PRIMARY KEY CLUSTERED (
            LearningStandardScopeDescriptorId ASC
        )
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='ParticipationStatusDescriptor')
BEGIN
    CREATE TABLE edfi.ParticipationStatusDescriptor
    (
        ParticipationStatusDescriptorId INT NOT NULL,
        CONSTRAINT ParticipationStatusDescriptor_PK PRIMARY KEY CLUSTERED (
            ParticipationStatusDescriptorId ASC
        )
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='PlatformTypeDescriptor')
BEGIN
    CREATE TABLE edfi.PlatformTypeDescriptor
    (
        PlatformTypeDescriptorId INT NOT NULL,
        CONSTRAINT PlatformTypeDescriptor_PK PRIMARY KEY CLUSTERED (
            PlatformTypeDescriptorId ASC
        )
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='ReportCardGradePointAverage')
BEGIN
    CREATE TABLE edfi.ReportCardGradePointAverage
    (
        EducationOrganizationId INT NOT NULL,
        GradePointAverageWeightSystemDescriptorId INT NOT NULL,
        GradingPeriodDescriptorId INT NOT NULL,
        GradingPeriodSchoolId INT NOT NULL,
        GradingPeriodSchoolYear SMALLINT NOT NULL,
        GradingPeriodSequence INT NOT NULL,
        IsCumulative BIT NOT NULL,
        StudentUSI INT NOT NULL,
        GradePointAverageValue DECIMAL(18, 4) NOT NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT ReportCardGradePointAverage_PK PRIMARY KEY CLUSTERED (
            EducationOrganizationId ASC,
            GradePointAverageWeightSystemDescriptorId ASC,
            GradingPeriodDescriptorId ASC,
            GradingPeriodSchoolId ASC,
            GradingPeriodSchoolYear ASC,
            GradingPeriodSequence ASC,
            IsCumulative ASC,
            StudentUSI ASC
        )
    );

    ALTER TABLE edfi.ReportCardGradePointAverage ADD CONSTRAINT ReportCardGradePointAverage_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='StaffDisciplineIncidentAssociation')
BEGIN
    CREATE TABLE edfi.StaffDisciplineIncidentAssociation
    (
        IncidentIdentifier NVARCHAR(20) NOT NULL,
        SchoolId INT NOT NULL,
        StaffUSI INT NOT NULL,
        Discriminator NVARCHAR(128) NULL,
        CreateDate DATETIME2 NOT NULL,
        LastModifiedDate DATETIME2 NOT NULL,
        Id UNIQUEIDENTIFIER NOT NULL,
        CONSTRAINT StaffDisciplineIncidentAssociation_PK PRIMARY KEY CLUSTERED (
            IncidentIdentifier ASC,
            SchoolId ASC,
            StaffUSI ASC
        )
    );

    ALTER TABLE edfi.StaffDisciplineIncidentAssociation ADD CONSTRAINT StaffDisciplineIncidentAssociation_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;

    ALTER TABLE edfi.StaffDisciplineIncidentAssociation ADD CONSTRAINT StaffDisciplineIncidentAssociation_DF_Id DEFAULT (newid()) FOR Id;

    ALTER TABLE edfi.StaffDisciplineIncidentAssociation ADD CONSTRAINT StaffDisciplineIncidentAssociation_DF_LastModifiedDate DEFAULT (getdate()) FOR LastModifiedDate;

    CREATE UNIQUE NONCLUSTERED INDEX UX_StaffDisciplineIncidentAssociation_Id ON edfi.StaffDisciplineIncidentAssociation(Id);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode')
BEGIN
    CREATE TABLE edfi.StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode
    (
        DisciplineIncidentParticipationCodeDescriptorId INT NOT NULL,
        IncidentIdentifier NVARCHAR(20) NOT NULL,
        SchoolId INT NOT NULL,
        StaffUSI INT NOT NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_PK PRIMARY KEY CLUSTERED (
            DisciplineIncidentParticipationCodeDescriptorId ASC,
            IncidentIdentifier ASC,
            SchoolId ASC,
            StaffUSI ASC
        )
    );

    ALTER TABLE edfi.StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode ADD CONSTRAINT StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='StudentAcademicRecordGradePointAverage')
BEGIN
    CREATE TABLE edfi.StudentAcademicRecordGradePointAverage
    (
        EducationOrganizationId INT NOT NULL,
        GradePointAverageWeightSystemDescriptorId INT NOT NULL,
        IsCumulative BIT NOT NULL,
        SchoolYear SMALLINT NOT NULL,
        StudentUSI INT NOT NULL,
        TermDescriptorId INT NOT NULL,
        GradePointAverageValue DECIMAL(18, 4) NOT NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT StudentAcademicRecordGradePointAverage_PK PRIMARY KEY CLUSTERED (
            EducationOrganizationId ASC,
            GradePointAverageWeightSystemDescriptorId ASC,
            IsCumulative ASC,
            SchoolYear ASC,
            StudentUSI ASC,
            TermDescriptorId ASC
        )
    );

    ALTER TABLE edfi.StudentAcademicRecordGradePointAverage ADD CONSTRAINT StudentAcademicRecordGradePointAverage_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='StudentCTEProgramAssociationCTEProgramService')
BEGIN
    CREATE TABLE edfi.StudentCTEProgramAssociationCTEProgramService
    (
        BeginDate DATE NOT NULL,
        CTEProgramServiceDescriptorId INT NOT NULL,
        EducationOrganizationId INT NOT NULL,
        ProgramEducationOrganizationId INT NOT NULL,
        ProgramName NVARCHAR(60) NOT NULL,
        ProgramTypeDescriptorId INT NOT NULL,
        StudentUSI INT NOT NULL,
        PrimaryIndicator BIT NULL,
        ServiceBeginDate DATE NULL,
        ServiceEndDate DATE NULL,
        CIPCode NVARCHAR(120) NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT StudentCTEProgramAssociationCTEProgramService_PK PRIMARY KEY CLUSTERED (
            BeginDate ASC,
            CTEProgramServiceDescriptorId ASC,
            EducationOrganizationId ASC,
            ProgramEducationOrganizationId ASC,
            ProgramName ASC,
            ProgramTypeDescriptorId ASC,
            StudentUSI ASC
        )
    );

    ALTER TABLE edfi.StudentCTEProgramAssociationCTEProgramService ADD CONSTRAINT StudentCTEProgramAssociationCTEProgramService_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO


IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='StudentSchoolAssociationAlternativeGraduationPlan')
BEGIN
    CREATE TABLE edfi.StudentSchoolAssociationAlternativeGraduationPlan
    (
        AlternativeEducationOrganizationId INT NOT NULL,
        AlternativeGraduationPlanTypeDescriptorId INT NOT NULL,
        AlternativeGraduationSchoolYear SMALLINT NOT NULL,
        EntryDate DATE NOT NULL,
        SchoolId INT NOT NULL,
        StudentUSI INT NOT NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT StudentSchoolAssociationAlternativeGraduationPlan_PK PRIMARY KEY CLUSTERED (
            AlternativeEducationOrganizationId ASC,
            AlternativeGraduationPlanTypeDescriptorId ASC,
            AlternativeGraduationSchoolYear ASC,
            EntryDate ASC,
            SchoolId ASC,
            StudentUSI ASC
        )
    );

    ALTER TABLE edfi.StudentSchoolAssociationAlternativeGraduationPlan ADD CONSTRAINT StudentSchoolAssociationAlternativeGraduationPlan_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider')
BEGIN
    CREATE TABLE edfi.StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider
    (
        BeginDate DATE NOT NULL,
        EducationOrganizationId INT NOT NULL,
        ProgramEducationOrganizationId INT NOT NULL,
        ProgramName NVARCHAR(60) NOT NULL,
        ProgramTypeDescriptorId INT NOT NULL,
        SpecialEducationProgramServiceDescriptorId INT NOT NULL,
        StaffUSI INT NOT NULL,
        StudentUSI INT NOT NULL,
        PrimaryProvider BIT NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_PK PRIMARY KEY CLUSTERED (
            BeginDate ASC,
            EducationOrganizationId ASC,
            ProgramEducationOrganizationId ASC,
            ProgramName ASC,
            ProgramTypeDescriptorId ASC,
            SpecialEducationProgramServiceDescriptorId ASC,
            StaffUSI ASC,
            StudentUSI ASC
        )
    );

    ALTER TABLE edfi.StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider ADD CONSTRAINT StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='StudentTitleIPartAProgramAssociationTitleIPartAProgramService')
BEGIN
    CREATE TABLE edfi.StudentTitleIPartAProgramAssociationTitleIPartAProgramService
    (
        BeginDate DATE NOT NULL,
        EducationOrganizationId INT NOT NULL,
        ProgramEducationOrganizationId INT NOT NULL,
        ProgramName NVARCHAR(60) NOT NULL,
        ProgramTypeDescriptorId INT NOT NULL,
        StudentUSI INT NOT NULL,
        TitleIPartAProgramServiceDescriptorId INT NOT NULL,
        PrimaryIndicator BIT NULL,
        ServiceBeginDate DATE NULL,
        ServiceEndDate DATE NULL,
        CreateDate DATETIME2 NOT NULL,
        CONSTRAINT StudentTitleIPartAProgramAssociationTitleIPartAProgramService_PK PRIMARY KEY CLUSTERED (
            BeginDate ASC,
            EducationOrganizationId ASC,
            ProgramEducationOrganizationId ASC,
            ProgramName ASC,
            ProgramTypeDescriptorId ASC,
            StudentUSI ASC,
            TitleIPartAProgramServiceDescriptorId ASC
        )
    );

    ALTER TABLE edfi.StudentTitleIPartAProgramAssociationTitleIPartAProgramService ADD CONSTRAINT StudentTitleIPartAProgramAssociationTitleIPartAProgramService_DF_CreateDate DEFAULT (getdate()) FOR CreateDate;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='edfi' AND TABLE_NAME='TitleIPartAProgramServiceDescriptor')
BEGIN
    CREATE TABLE edfi.TitleIPartAProgramServiceDescriptor
    (
        TitleIPartAProgramServiceDescriptorId INT NOT NULL,
        CONSTRAINT TitleIPartAProgramServiceDescriptor_PK PRIMARY KEY CLUSTERED (
            TitleIPartAProgramServiceDescriptorId ASC
        )
    );
END
GO
