-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='EducationOrganizationAddressPeriod'
    AND CONSTRAINT_NAME='FK_EducationOrganizationAddressPeriod_EducationOrganizationAddress')
BEGIN
    ALTER TABLE edfi.EducationOrganizationAddressPeriod WITH CHECK
    ADD CONSTRAINT FK_EducationOrganizationAddressPeriod_EducationOrganizationAddress FOREIGN KEY (AddressTypeDescriptorId, City, EducationOrganizationId, PostalCode, StateAbbreviationDescriptorId, StreetNumberName)
    REFERENCES edfi.EducationOrganizationAddress (AddressTypeDescriptorId, City, EducationOrganizationId, PostalCode, StateAbbreviationDescriptorId, StreetNumberName)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_EducationOrganizationAddressPeriod_EducationOrganizationAddress
    ON edfi.EducationOrganizationAddressPeriod (AddressTypeDescriptorId ASC, City ASC, EducationOrganizationId ASC, PostalCode ASC, StateAbbreviationDescriptorId ASC, StreetNumberName ASC)
    WITH (DROP_EXISTING = ON);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='ParentAddressPeriod'
    AND CONSTRAINT_NAME='FK_ParentAddressPeriod_ParentAddress')
BEGIN
    ALTER TABLE edfi.ParentAddressPeriod WITH CHECK ADD CONSTRAINT FK_ParentAddressPeriod_ParentAddress FOREIGN KEY (AddressTypeDescriptorId, City, ParentUSI, PostalCode, StateAbbreviationDescriptorId, StreetNumberName)
    REFERENCES edfi.ParentAddress (AddressTypeDescriptorId, City, ParentUSI, PostalCode, StateAbbreviationDescriptorId, StreetNumberName)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_ParentAddressPeriod_ParentAddress
    ON edfi.ParentAddressPeriod (AddressTypeDescriptorId ASC, City ASC, ParentUSI ASC, PostalCode ASC, StateAbbreviationDescriptorId ASC, StreetNumberName ASC)
    WITH (DROP_EXISTING = ON);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StaffAddressPeriod'
    AND CONSTRAINT_NAME='FK_StaffAddressPeriod_StaffAddress')
BEGIN
    ALTER TABLE edfi.StaffAddressPeriod WITH CHECK ADD CONSTRAINT FK_StaffAddressPeriod_StaffAddress FOREIGN KEY (AddressTypeDescriptorId, City, PostalCode, StaffUSI, StateAbbreviationDescriptorId, StreetNumberName)
    REFERENCES edfi.StaffAddress (AddressTypeDescriptorId, City, PostalCode, StaffUSI, StateAbbreviationDescriptorId, StreetNumberName)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_StaffAddressPeriod_StaffAddress
    ON edfi.StaffAddressPeriod (AddressTypeDescriptorId ASC, City ASC, PostalCode ASC, StaffUSI ASC, StateAbbreviationDescriptorId ASC, StreetNumberName ASC)
    WITH (DROP_EXISTING = ON);
END
GO

IF NOT EXISTS(SELECT 1
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'edfi' AND TABLE_NAME='StudentEducationOrganizationAssociationAddressPeriod'
    AND CONSTRAINT_NAME='FK_StudentEducationOrganizationAssociationAddressPeriod_StudentEducationOrganizationAssociationAddress')
BEGIN
    ALTER TABLE edfi.StudentEducationOrganizationAssociationAddressPeriod WITH CHECK ADD CONSTRAINT FK_StudentEducationOrganizationAssociationAddressPeriod_StudentEducationOrganizationAssociationAddress FOREIGN KEY (AddressTypeDescriptorId, City, EducationOrganizationId, PostalCode, StateAbbreviationDescriptorId, StreetNumberName, StudentUSI)
    REFERENCES edfi.StudentEducationOrganizationAssociationAddress (AddressTypeDescriptorId, City, EducationOrganizationId, PostalCode, StateAbbreviationDescriptorId, StreetNumberName, StudentUSI)
    ON DELETE CASCADE;

    CREATE NONCLUSTERED INDEX FK_StudentEducationOrganizationAssociationAddressPeriod_StudentEducationOrganizationAssociationAddress
    ON edfi.StudentEducationOrganizationAssociationAddressPeriod (AddressTypeDescriptorId ASC, City ASC, EducationOrganizationId ASC, PostalCode ASC, StateAbbreviationDescriptorId ASC, StreetNumberName ASC, StudentUSI ASC)
    WITH (DROP_EXISTING = ON);
END
GO
