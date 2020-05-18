-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- add primary keys to base tables
IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='EducationOrganizationAddress'
    AND CONSTRAINT_NAME='EducationOrganizationAddress_PK')
BEGIN
    ALTER TABLE edfi.EducationOrganizationAddress
	ADD CONSTRAINT EducationOrganizationAddress_PK PRIMARY KEY CLUSTERED (
        AddressTypeDescriptorId ASC,
        City ASC,
        EducationOrganizationId ASC,
        PostalCode ASC,
        StateAbbreviationDescriptorId ASC,
        StreetNumberName ASC
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ParentAddress'
    AND CONSTRAINT_NAME='ParentAddress_PK')
BEGIN
    ALTER TABLE edfi.ParentAddress 
    ADD CONSTRAINT ParentAddress_PK PRIMARY KEY CLUSTERED (
        AddressTypeDescriptorId ASC,
        City ASC,
        ParentUSI ASC,
        PostalCode ASC,
        StateAbbreviationDescriptorId ASC,
        StreetNumberName ASC
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffAddress'
    AND CONSTRAINT_NAME='StaffAddress_PK')
BEGIN
    ALTER TABLE edfi.StaffAddress 
    ADD CONSTRAINT StaffAddress_PK PRIMARY KEY CLUSTERED (
        AddressTypeDescriptorId ASC,
        City ASC,
        PostalCode ASC,
        StaffUSI ASC,
        StateAbbreviationDescriptorId ASC,
        StreetNumberName ASC
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationAddress'
    AND CONSTRAINT_NAME='StudentEducationOrganizationAssociationAddress_PK')
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddress 
    ADD CONSTRAINT StudentEducationOrganizationAssociationAddress_PK PRIMARY KEY CLUSTERED (
        AddressTypeDescriptorId ASC,
        City ASC,
        EducationOrganizationId ASC,
        PostalCode ASC,
        StateAbbreviationDescriptorId ASC,
        StreetNumberName ASC,
        StudentUSI ASC
    );
END
GO

-- add primary keys to the period tables
IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='EducationOrganizationAddressPeriod'
    AND CONSTRAINT_NAME='EducationOrganizationAddressPeriod_PK')
BEGIN
    ALTER TABLE edfi.EducationOrganizationAddressPeriod 
	ADD CONSTRAINT EducationOrganizationAddressPeriod_PK PRIMARY KEY CLUSTERED (
        AddressTypeDescriptorId ASC,
        BeginDate ASC,
        City ASC,
        EducationOrganizationId ASC,
        PostalCode ASC,
        StateAbbreviationDescriptorId ASC,
        StreetNumberName ASC);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ParentAddressPeriod'
    AND CONSTRAINT_NAME='ParentAddressPeriod_PK')
BEGIN
    ALTER TABLE edfi.ParentAddressPeriod ADD 
    CONSTRAINT ParentAddressPeriod_PK PRIMARY KEY CLUSTERED (
        AddressTypeDescriptorId ASC,
        BeginDate ASC,
        City ASC,
        ParentUSI ASC,
        PostalCode ASC,
        StateAbbreviationDescriptorId ASC,
        StreetNumberName ASC
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffAddressPeriod'
    AND CONSTRAINT_NAME='StaffAddressPeriod_PK')
BEGIN
    ALTER TABLE edfi.StaffAddressPeriod ADD 
    CONSTRAINT StaffAddressPeriod_PK PRIMARY KEY CLUSTERED (
        AddressTypeDescriptorId ASC,
        BeginDate ASC,
        City ASC,
        PostalCode ASC,
        StaffUSI ASC,
        StateAbbreviationDescriptorId ASC,
        StreetNumberName ASC
    );
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationAddressPeriod'
    AND CONSTRAINT_NAME='StudentEducationOrganizationAssociationAddressPeriod_PK')
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod ADD 
    CONSTRAINT StudentEducationOrganizationAssociationAddressPeriod_PK PRIMARY KEY CLUSTERED (
        AddressTypeDescriptorId ASC,
        BeginDate ASC,
        City ASC,
        EducationOrganizationId ASC,
        PostalCode ASC,
        StateAbbreviationDescriptorId ASC,
        StreetNumberName ASC,
        StudentUSI ASC
    );
END
GO