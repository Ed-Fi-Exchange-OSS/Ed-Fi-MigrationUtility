-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='EducationOrganizationAddressPeriod'
    AND CONSTRAINT_NAME='FK_EducationOrganizationAddressPeriod_EducationOrganizationAddress')
BEGIN
    UPDATE edfi.EducationOrganizationAddressPeriod
    SET City = a.City
        , PostalCode = a.PostalCode
        , StreetNumberName = a.StreetNumberName
        , StateAbbreviationDescriptorId = a.StateAbbreviationDescriptorId
    FROM edfi.EducationOrganizationAddressPeriod p
        JOIN edfi.EducationOrganizationAddress a ON
        a.EducationOrganizationId = p.EducationOrganizationId
            AND a.AddressTypeDescriptorId = p.AddressTypeDescriptorId;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ParentAddressPeriod'
    AND CONSTRAINT_NAME='FK_ParentAddressPeriod_ParentAddress')
BEGIN
    UPDATE edfi.ParentAddressPeriod
    SET City = a.City
        , PostalCode = a.PostalCode
        , StreetNumberName = a.StreetNumberName
        , StateAbbreviationDescriptorId = a.StateAbbreviationDescriptorId
    FROM edfi.ParentAddressPeriod p
        JOIN edfi.ParentAddress a ON
        a.ParentUSI = p.ParentUSI
            AND a.AddressTypeDescriptorId = p.AddressTypeDescriptorId;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffAddressPeriod'
    AND CONSTRAINT_NAME='FK_StaffAddressPeriod_StaffAddress')
BEGIN
    UPDATE edfi.StaffAddressPeriod
    SET City = a.City
        , PostalCode = a.PostalCode
        , StreetNumberName = a.StreetNumberName
        , StateAbbreviationDescriptorId = a.StateAbbreviationDescriptorId
    FROM edfi.StaffAddressPeriod p
        JOIN edfi.StaffAddress a ON
        a.StaffUSI = p.StaffUSI
            AND a.AddressTypeDescriptorId = p.AddressTypeDescriptorId;
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationAddressPeriod'
    AND CONSTRAINT_NAME='FK_StudentEducationOrganizationAssociationAddressPeriod_StudentEducationOrganizationAssociationAddress')
BEGIN
    UPDATE edfi.StudentEducationOrganizationAssociationAddressPeriod
    SET City = a.City
        , PostalCode = a.PostalCode
        , StreetNumberName = a.StreetNumberName
        , StateAbbreviationDescriptorId = a.StateAbbreviationDescriptorId
    FROM edfi.StudentEducationOrganizationAssociationAddressPeriod p
        JOIN edfi.StudentEducationOrganizationAssociationAddress a ON
        a.StudentUSI = p.StudentUSI
            AND a.AddressTypeDescriptorId = p.AddressTypeDescriptorId;
END
GO
