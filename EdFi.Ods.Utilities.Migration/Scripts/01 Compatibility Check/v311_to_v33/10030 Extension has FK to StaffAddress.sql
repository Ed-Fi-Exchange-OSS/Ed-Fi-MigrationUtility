-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF ('$BypassExtensionValidationCheck$' = 'True')
BEGIN
    PRINT N'Option BypassExtensionValidationCheck enabled. Extension table has foreign key to Staff Addres check will be skipped.'
END
ELSE
BEGIN
    IF EXISTS
    (
    SELECT rc.CONSTRAINT_NAME, tc.TABLE_NAME, tc.TABLE_SCHEMA
    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS rc
    INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc ON
        tc.CONSTRAINT_NAME = rc.UNIQUE_CONSTRAINT_NAME AND tc.CONSTRAINT_SCHEMA = rc.UNIQUE_CONSTRAINT_SCHEMA
    WHERE rc.CONSTRAINT_SCHEMA != 'edfi'
        AND rc.UNIQUE_CONSTRAINT_SCHEMA = 'edfi'
        AND tc.TABLE_NAME='StaffAddress'
    )
    BEGIN
        DECLARE @ExtensionFoundErrorMessage NVARCHAR(max) = N'Action Required: Unable to proceed with migration because the BypassExtensionValidationCheck option is disabled, and one or more extension tables were found for Staff Address. Please ensure that custom migration scripts have been created for all extension tables, and then enable the --BypassExtensionValidationCheck command line option in order to bypass this check.'
        PRINT @ExtensionFoundErrorMessage;
        THROW 52001, @ExtensionFoundErrorMessage, 1
    END
    ELSE
    BEGIN
        PRINT N'Extension table has foreign key to Staff Address check: OK'
    END
END
GO
