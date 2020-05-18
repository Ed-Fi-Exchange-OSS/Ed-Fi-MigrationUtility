-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF ('$BypassExtensionValidationCheck$' = 'True')
BEGIN
	PRINT N'Option BypassExtensionValidationCheck enabled.  Extension check will be skipped'
END
ELSE
BEGIN
	IF EXISTS
	(
		SELECT * FROM sys.tables t
		INNER JOIN sys.schemas s
		ON t.schema_id = s.schema_id
		WHERE s.name = 'extension'
	)
	BEGIN
		DECLARE @ExtensionFoundErrorMessage NVARCHAR(max) = N'Action Required:  Unable to proceed with migration because the BypassExtensionValidationCheck option is disabled, and one or more tables were found on the extension schema.  Please ensure that custom migration scripts have been created for all extension tables, and then enable the --BypassExtensionValidationCheck command line option in order to bypass this check.'
		PRINT @ExtensionFoundErrorMessage;
		THROW 52001, @ExtensionFoundErrorMessage, 1
	END
	ELSE
	BEGIN
		PRINT N'Extension check:  OK'
	END
END
GO
