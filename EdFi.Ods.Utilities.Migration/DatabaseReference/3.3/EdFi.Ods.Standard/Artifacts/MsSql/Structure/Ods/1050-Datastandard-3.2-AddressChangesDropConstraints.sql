-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- Remove foreign keys from period tables
IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='EducationOrganizationAddressPeriod'
    AND CONSTRAINT_NAME='FK_EducationOrganizationAddressPeriod_EducationOrganizationAddress'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'City', 'EducationOrganizationId', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName')) = 6
BEGIN
    ALTER TABLE edfi.EducationOrganizationAddressPeriod DROP CONSTRAINT FK_EducationOrganizationAddressPeriod_EducationOrganizationAddress;
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffAddressPeriod'
    AND CONSTRAINT_NAME='FK_StaffAddressPeriod_StaffAddress'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'City', 'PostalCode', 'StaffUSI', 'StateAbbreviationDescriptorId', 'StreetNumberName')) = 6
BEGIN
    ALTER TABLE edfi.StaffAddressPeriod DROP CONSTRAINT FK_StaffAddressPeriod_StaffAddress;
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ParentAddressPeriod'
    AND CONSTRAINT_NAME='FK_ParentAddressPeriod_ParentAddress'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'City', 'ParentUSI', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName')) = 6
BEGIN
    ALTER TABLE edfi.ParentAddressPeriod DROP CONSTRAINT FK_ParentAddressPeriod_ParentAddress;
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationAddressPeriod'
    AND CONSTRAINT_NAME='FK_StudentEducationOrganizationAssociationAddressPeriod_StudentEducationOrganizationAssociationAddress'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'City', 'EducationOrganizationId', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName', 'StudentUSI')) = 7
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod DROP CONSTRAINT FK_StudentEducationOrganizationAssociationAddressPeriod_StudentEducationOrganizationAssociationAddress;
END
GO

-- remove primary keys from the period tables
IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ParentAddressPeriod'
    AND CONSTRAINT_NAME='ParentAddressPeriod_PK'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'BeginDate', 'City', 'ParentUSI', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName')) = 7
BEGIN
    ALTER TABLE edfi.ParentAddressPeriod DROP CONSTRAINT ParentAddressPeriod_PK;
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffAddressPeriod'
    AND CONSTRAINT_NAME='StaffAddressPeriod_PK'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'BeginDate', 'City', 'StaffUSI', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName')) = 7
BEGIN
    ALTER TABLE edfi.StaffAddressPeriod DROP CONSTRAINT StaffAddressPeriod_PK;
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='EducationOrganizationAddressPeriod'
    AND CONSTRAINT_NAME='EducationOrganizationAddressPeriod_PK'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'BeginDate', 'City', 'EducationOrganizationId', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName')) = 7
BEGIN
    ALTER TABLE edfi.EducationOrganizationAddressPeriod DROP CONSTRAINT EducationOrganizationAddressPeriod_PK;
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationAddressPeriod'
    AND CONSTRAINT_NAME='StudentEducationOrganizationAssociationAddressPeriod_PK'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'BeginDate', 'City', 'EducationOrganizationId', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName', 'StudentUSI')) = 8
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod DROP CONSTRAINT StudentEducationOrganizationAssociationAddressPeriod_PK;
END
GO

-- remove primary keys from base tables
IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='EducationOrganizationAddress'
    AND CONSTRAINT_NAME='EducationOrganizationAddress_PK'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'City', 'EducationOrganizationId', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName')) = 6
BEGIN
    ALTER TABLE edfi.EducationOrganizationAddress DROP CONSTRAINT EducationOrganizationAddress_PK;
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ParentAddress'
    AND CONSTRAINT_NAME='ParentAddress_PK'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'City', 'ParentUSI', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName')) = 6
BEGIN
    ALTER TABLE edfi.ParentAddress DROP CONSTRAINT ParentAddress_PK;
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffAddress'
    AND CONSTRAINT_NAME='StaffAddress_PK'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'City', 'StaffUSI', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName')) = 6
BEGIN
    ALTER TABLE edfi.StaffAddress DROP CONSTRAINT StaffAddress_PK;
END
GO

IF NOT(SELECT COUNT(*)
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationAddress'
    AND CONSTRAINT_NAME='StudentEducationOrganizationAssociationAddress_PK'
    AND COLUMN_NAME IN ('AddressTypeDescriptorId', 'City', 'EducationOrganizationId', 'PostalCode', 'StateAbbreviationDescriptorId', 'StreetNumberName', 'StudentUSI')) = 7
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddress DROP CONSTRAINT StudentEducationOrganizationAssociationAddress_PK;
END
GO
