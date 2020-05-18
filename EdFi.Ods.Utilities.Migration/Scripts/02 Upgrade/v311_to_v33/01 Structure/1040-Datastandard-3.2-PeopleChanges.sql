-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentInterventionAttendanceEvent' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'AttendanceEventReason' AND CHARACTER_MAXIMUM_LENGTH <> 255)
BEGIN
    ALTER TABLE edfi.StudentInterventionAttendanceEvent ALTER COLUMN AttendanceEventReason NVARCHAR(255) NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentLanguageInstructionProgramAssociation' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'Dosage')
BEGIN
    ALTER TABLE edfi.StudentLanguageInstructionProgramAssociation ADD Dosage INT NULL;
END
GO

IF EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentProgramAttendanceEvent' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'AttendanceEventReason' AND CHARACTER_MAXIMUM_LENGTH <> 255)
BEGIN
    ALTER TABLE edfi.StudentProgramAttendanceEvent ALTER COLUMN AttendanceEventReason NVARCHAR(255) NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentProgramAttendanceEvent' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'ProgramAttendanceDuration')
BEGIN
    ALTER TABLE edfi.StudentProgramAttendanceEvent ADD ProgramAttendanceDuration INT NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentSchoolAssociation' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'FullTimeEquivalency')
BEGIN
    ALTER TABLE edfi.StudentSchoolAssociation ADD FullTimeEquivalency DECIMAL(3,2) NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentSchoolAssociation' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'TermCompletionIndicator')
BEGIN
    ALTER TABLE edfi.StudentSchoolAssociation ADD TermCompletionIndicator BIT NULL;
END
GO

IF EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentSchoolAttendanceEvent' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'AttendanceEventReason' AND CHARACTER_MAXIMUM_LENGTH <> 255)
BEGIN
    ALTER TABLE edfi.StudentSchoolAttendanceEvent ALTER COLUMN AttendanceEventReason NVARCHAR(255) NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentSchoolAttendanceEvent' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'SchoolAttendanceDuration')
BEGIN
    ALTER TABLE edfi.StudentSchoolAttendanceEvent ADD SchoolAttendanceDuration INT NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentSchoolAttendanceEvent' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'ArrivalTime')
BEGIN
    ALTER TABLE edfi.StudentSchoolAttendanceEvent ADD ArrivalTime TIME(7) NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentSchoolAttendanceEvent' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'DepartureTime')
BEGIN
    ALTER TABLE edfi.StudentSchoolAttendanceEvent ADD DepartureTime TIME(7) NULL;
END
GO

IF EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentSectionAttendanceEvent' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'AttendanceEventReason' AND CHARACTER_MAXIMUM_LENGTH <> 255)
BEGIN
    ALTER TABLE edfi.StudentSectionAttendanceEvent ALTER COLUMN AttendanceEventReason NVARCHAR(255) NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentSectionAttendanceEvent' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'SectionAttendanceDuration')
BEGIN
    ALTER TABLE edfi.StudentSectionAttendanceEvent ADD SectionAttendanceDuration INT NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentSectionAttendanceEvent' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'ArrivalTime')
BEGIN
    ALTER TABLE edfi.StudentSectionAttendanceEvent ADD ArrivalTime TIME(7) NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentSectionAttendanceEvent' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'DepartureTime')
BEGIN
    ALTER TABLE edfi.StudentSectionAttendanceEvent ADD DepartureTime TIME(7) NULL;
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ParentElectronicMail' AND CONSTRAINT_NAME='ParentElectronicMail_PK'
AND COLUMN_NAME IN ('ElectronicMailAddress', 'ElectronicMailTypeDescriptorId', 'ParentUSI')) = 3
BEGIN
    ALTER TABLE edfi.ParentElectronicMail DROP CONSTRAINT ParentElectronicMail_PK;

    ALTER TABLE edfi.ParentElectronicMail
    ADD CONSTRAINT ParentElectronicMail_PK PRIMARY KEY CLUSTERED (
        ElectronicMailAddress ASC,
        ElectronicMailTypeDescriptorId ASC,
        ParentUSI ASC
    );
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ParentTelephone' AND CONSTRAINT_NAME='ParentTelephone_PK'
    AND COLUMN_NAME IN ('ParentUSI', 'TelephoneNumber', 'TelephoneNumberTypeDescriptorId')) = 3
BEGIN
    ALTER TABLE edfi.ParentTelephone DROP CONSTRAINT ParentTelephone_PK;

    ALTER TABLE edfi.ParentTelephone
    ADD CONSTRAINT ParentTelephone_PK PRIMARY KEY CLUSTERED (
        ParentUSI ASC,
        TelephoneNumber ASC,
        TelephoneNumberTypeDescriptorId ASC
    );
END
GO

IF EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StaffEducationOrganizationEmploymentAssociation' AND TABLE_SCHEMA='edfi' AND COLUMN_NAME = 'Department' AND CHARACTER_MAXIMUM_LENGTH <> 60)
BEGIN
    ALTER TABLE edfi.StaffEducationOrganizationEmploymentAssociation ALTER COLUMN Department NVARCHAR(60) NULL;
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffEducationOrganizationContactAssociationTelephone' AND CONSTRAINT_NAME='StaffEducationOrganizationContactAssociationTelephone_PK'
    AND COLUMN_NAME IN ('ContactTitle', 'EducationOrganizationId', 'StaffUSI', 'TelephoneNumber', 'TelephoneNumberTypeDescriptorId')) = 5
BEGIN
    ALTER TABLE edfi.StaffEducationOrganizationContactAssociationTelephone DROP CONSTRAINT StaffEducationOrganizationContactAssociationTelephone_PK;

    ALTER TABLE edfi.StaffEducationOrganizationContactAssociationTelephone
    ADD CONSTRAINT StaffEducationOrganizationContactAssociationTelephone_PK PRIMARY KEY CLUSTERED (
        ContactTitle ASC,
        EducationOrganizationId ASC,
        StaffUSI ASC,
        TelephoneNumber ASC,
        TelephoneNumberTypeDescriptorId ASC
    );
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffElectronicMail' AND CONSTRAINT_NAME='StaffElectronicMail_PK'
    AND COLUMN_NAME IN ('ElectronicMailAddress', 'ElectronicMailTypeDescriptorId', 'StaffUSI')) = 3
BEGIN
    ALTER TABLE edfi.StaffElectronicMail DROP CONSTRAINT StaffElectronicMail_PK;

    ALTER TABLE edfi.StaffElectronicMail
    ADD CONSTRAINT StaffElectronicMail_PK PRIMARY KEY CLUSTERED (
        ElectronicMailAddress ASC,
        ElectronicMailTypeDescriptorId ASC,
        StaffUSI ASC
    );
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffTelephone' AND CONSTRAINT_NAME='StaffTelephone_PK'
    AND COLUMN_NAME IN ('StaffUSI', 'TelephoneNumber', 'TelephoneNumberTypeDescriptorId')) = 3
BEGIN
    ALTER TABLE edfi.StaffTelephone DROP CONSTRAINT StaffTelephone_PK;

    ALTER TABLE edfi.StaffTelephone
    ADD CONSTRAINT StaffTelephone_PK PRIMARY KEY CLUSTERED (
        StaffUSI ASC,
        TelephoneNumber ASC,
        TelephoneNumberTypeDescriptorId ASC
    );
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationElectronicMail' AND CONSTRAINT_NAME='StudentEducationOrganizationAssociationElectronicMail_PK'
    AND COLUMN_NAME IN ('EducationOrganizationId', 'ElectronicMailAddress', 'ElectronicMailTypeDescriptorId', 'StudentUSI')) = 4
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationElectronicMail DROP CONSTRAINT StudentEducationOrganizationAssociationElectronicMail_PK;

    ALTER TABLE edfi.StudentEducationOrganizationAssociationElectronicMail
    ADD CONSTRAINT StudentEducationOrganizationAssociationElectronicMail_PK PRIMARY KEY CLUSTERED (
        EducationOrganizationId ASC,
        ElectronicMailAddress ASC,
        ElectronicMailTypeDescriptorId ASC,
        StudentUSI ASC
    );
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationTelephone' AND CONSTRAINT_NAME='StudentEducationOrganizationAssociationTelephone_PK'
    AND COLUMN_NAME IN ('EducationOrganizationId', 'StudentUSI', 'TelephoneNumber', 'TelephoneNumberTypeDescriptorId')) = 4
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationTelephone DROP CONSTRAINT StudentEducationOrganizationAssociationTelephone_PK;

    ALTER TABLE edfi.StudentEducationOrganizationAssociationTelephone
    ADD CONSTRAINT StudentEducationOrganizationAssociationTelephone_PK PRIMARY KEY CLUSTERED (
        EducationOrganizationId ASC,
        StudentUSI ASC,
        TelephoneNumber ASC,
        TelephoneNumberTypeDescriptorId ASC
    );
END
GO
