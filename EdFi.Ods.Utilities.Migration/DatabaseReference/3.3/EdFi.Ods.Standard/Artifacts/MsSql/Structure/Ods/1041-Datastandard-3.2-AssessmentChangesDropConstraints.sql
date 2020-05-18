-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- remove foreign keys
IF EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentEducationOrganizationAssociationStudentIndicatorPeriod' AND TABLE_SCHEMA='edfi' 
AND COLUMN_NAME = 'IndicatorName' AND CHARACTER_MAXIMUM_LENGTH <> 200)
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationStudentIndicatorPeriod DROP CONSTRAINT FK_StudentEducationOrganizationAssociationStudentIndicatorPeriod_StudentEducationOrganizationAssociationStudentIndicator;
END
GO

IF EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentEducationOrganizationAssociationStudentIndicator' AND TABLE_SCHEMA='edfi' 
AND COLUMN_NAME = 'IndicatorName' AND CHARACTER_MAXIMUM_LENGTH <> 200)
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationStudentIndicator DROP CONSTRAINT FK_StudentEducationOrganizationAssociationStudentIndicator_StudentEducationOrganizationAssociation;
END
GO

-- remove primary keys
IF EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentEducationOrganizationAssociationStudentIndicator' AND TABLE_SCHEMA='edfi' 
AND COLUMN_NAME = 'IndicatorName' AND CHARACTER_MAXIMUM_LENGTH <> 200)
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationStudentIndicator DROP CONSTRAINT StudentEducationOrganizationAssociationStudentIndicator_PK;
END
GO


IF EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentEducationOrganizationAssociationStudentIndicatorPeriod' AND TABLE_SCHEMA='edfi' 
AND COLUMN_NAME = 'IndicatorName' AND CHARACTER_MAXIMUM_LENGTH <> 200)
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationStudentIndicatorPeriod DROP CONSTRAINT StudentEducationOrganizationAssociationStudentIndicatorPeriod_PK;
END
GO