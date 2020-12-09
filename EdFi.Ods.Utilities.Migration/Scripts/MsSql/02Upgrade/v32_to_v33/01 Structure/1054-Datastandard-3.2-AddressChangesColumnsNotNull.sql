-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='EducationOrganizationAddressPeriod'
    AND CONSTRAINT_NAME='EducationOrganizationAddressPeriod_PK')
BEGIN
    ALTER TABLE edfi.EducationOrganizationAddressPeriod ALTER COLUMN City NVARCHAR(30) NOT NULL;
    ALTER TABLE edfi.EducationOrganizationAddressPeriod ALTER COLUMN PostalCode NVARCHAR(17) NOT NULL;
    ALTER TABLE edfi.EducationOrganizationAddressPeriod ALTER COLUMN StateAbbreviationDescriptorId INT NOT NULL;
    ALTER TABLE edfi.EducationOrganizationAddressPeriod ALTER COLUMN StreetNumberName NVARCHAR(150) NOT NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ParentAddressPeriod'
    AND CONSTRAINT_NAME='ParentAddressPeriod_PK')
BEGIN
    ALTER TABLE edfi.ParentAddressPeriod ALTER COLUMN City NVARCHAR(30) NOT NULL;
    ALTER TABLE edfi.ParentAddressPeriod ALTER COLUMN PostalCode NVARCHAR(17) NOT NULL;
    ALTER TABLE edfi.ParentAddressPeriod ALTER COLUMN StateAbbreviationDescriptorId INT NOT NULL;
    ALTER TABLE edfi.ParentAddressPeriod ALTER COLUMN StreetNumberName NVARCHAR(150) NOT NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffAddressPeriod'
    AND CONSTRAINT_NAME='StaffAddressPeriod_PK')
BEGIN
    ALTER TABLE edfi.StaffAddressPeriod ALTER COLUMN City NVARCHAR(30) NOT NULL;
    ALTER TABLE edfi.StaffAddressPeriod ALTER COLUMN PostalCode NVARCHAR(17) NOT NULL;
    ALTER TABLE edfi.StaffAddressPeriod ALTER COLUMN StateAbbreviationDescriptorId INT NOT NULL;
    ALTER TABLE edfi.StaffAddressPeriod ALTER COLUMN StreetNumberName NVARCHAR(150) NOT NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationAddressPeriod'
    AND CONSTRAINT_NAME='StaffAddressPeriod_PK')
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod ALTER COLUMN City NVARCHAR(30) NOT NULL;
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod ALTER COLUMN PostalCode NVARCHAR(17) NOT NULL;
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod ALTER COLUMN StateAbbreviationDescriptorId INT NOT NULL;
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod ALTER COLUMN StreetNumberName NVARCHAR(150) NOT NULL;
END
GO
