-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='edfi'
    AND TABLE_NAME='EducationOrganizationAddressPeriod'
    AND COLUMN_NAME IN ('PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName', 'City'))
BEGIN
    ALTER TABLE edfi.EducationOrganizationAddressPeriod ADD City NVARCHAR(30) NULL;
    ALTER TABLE edfi.EducationOrganizationAddressPeriod ADD PostalCode NVARCHAR(17) NULL;
    ALTER TABLE edfi.EducationOrganizationAddressPeriod ADD StateAbbreviationDescriptorId INT NULL;
    ALTER TABLE edfi.EducationOrganizationAddressPeriod ADD StreetNumberName NVARCHAR(150) NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='edfi'
    AND TABLE_NAME='ParentAddressPeriod'
    AND COLUMN_NAME IN ('PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName', 'City'))
BEGIN
    ALTER TABLE edfi.ParentAddressPeriod ADD City NVARCHAR(30) NULL;
    ALTER TABLE edfi.ParentAddressPeriod ADD PostalCode NVARCHAR(17) NULL;
    ALTER TABLE edfi.ParentAddressPeriod ADD StateAbbreviationDescriptorId INT NULL;
    ALTER TABLE edfi.ParentAddressPeriod ADD StreetNumberName NVARCHAR(150) NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='edfi'
    AND TABLE_NAME='StaffAddressPeriod'
    AND COLUMN_NAME IN ('PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName', 'City'))
BEGIN
    ALTER TABLE edfi.StaffAddressPeriod ADD City NVARCHAR(30) NULL;
    ALTER TABLE edfi.StaffAddressPeriod ADD PostalCode NVARCHAR(17) NULL;
    ALTER TABLE edfi.StaffAddressPeriod ADD StateAbbreviationDescriptorId INT NULL;
    ALTER TABLE edfi.StaffAddressPeriod ADD StreetNumberName NVARCHAR(150) NULL;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='edfi'
    AND TABLE_NAME='StudentEducationOrganizationAssociationAddressPeriod'
    AND COLUMN_NAME IN ('City', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName'))
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod ADD City NVARCHAR(30) NULL;
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod ADD PostalCode NVARCHAR(17) NULL;
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod ADD StateAbbreviationDescriptorId INT NULL;
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod ADD StreetNumberName NVARCHAR(150) NULL;
END
GO