-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- add primary keys
IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'StudentEducationOrganizationAssociationStudentIndicator' AND TABLE_SCHEMA='edfi'
    AND CONSTRAINT_NAME ='StudentEducationOrganizationAssociationStudentIndicator_PK')
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationStudentIndicator
    ADD CONSTRAINT StudentEducationOrganizationAssociationStudentIndicator_PK PRIMARY KEY CLUSTERED (
        EducationOrganizationId ASC,
        IndicatorName ASC,
        StudentUSI ASC
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'StudentEducationOrganizationAssociationStudentIndicatorPeriod' AND TABLE_SCHEMA='edfi'
    AND CONSTRAINT_NAME ='StudentEducationOrganizationAssociationStudentIndicatorPeriod_PK')
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationStudentIndicatorPeriod
    ADD CONSTRAINT StudentEducationOrganizationAssociationStudentIndicatorPeriod_PK PRIMARY KEY CLUSTERED (
        BeginDate ASC,
        EducationOrganizationId ASC,
        IndicatorName ASC,
        StudentUSI ASC
    );
END
GO

-- add foreign keys
IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationStudentIndicator'
    AND CONSTRAINT_NAME='FK_StudentEducationOrganizationAssociationStudentIndicator_StudentEducationOrganizationAssociation')
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationStudentIndicator WITH CHECK
    ADD CONSTRAINT FK_StudentEducationOrganizationAssociationStudentIndicator_StudentEducationOrganizationAssociation
    FOREIGN KEY (EducationOrganizationId, StudentUSI)
    REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_StudentEducationOrganizationAssociationStudentIndicator_StudentEducationOrganizationAssociation
    ON edfi.StudentEducationOrganizationAssociationStudentIndicator (EducationOrganizationId ASC, StudentUSI ASC)
    WITH (DROP_EXISTING = ON);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationStudentIndicatorPeriod'
    AND CONSTRAINT_NAME='FK_StudentEducationOrganizationAssociationStudentIndicatorPeriod_StudentEducationOrganizationAssociationStudentIndicator')
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationStudentIndicatorPeriod WITH CHECK
        ADD CONSTRAINT FK_StudentEducationOrganizationAssociationStudentIndicatorPeriod_StudentEducationOrganizationAssociationStudentIndicator
        FOREIGN KEY (EducationOrganizationId, IndicatorName, StudentUSI)
    REFERENCES edfi.StudentEducationOrganizationAssociationStudentIndicator (EducationOrganizationId, IndicatorName, StudentUSI);

    CREATE NONCLUSTERED INDEX FK_StudentEducationOrganizationAssociationStudentIndicatorPeriod_StudentEducationOrganizationAssociationStudentIndicator
    ON edfi.StudentEducationOrganizationAssociationStudentIndicatorPeriod (EducationOrganizationId ASC, IndicatorName ASC, StudentUSI ASC)
    WITH (DROP_EXISTING = ON);
END
GO
