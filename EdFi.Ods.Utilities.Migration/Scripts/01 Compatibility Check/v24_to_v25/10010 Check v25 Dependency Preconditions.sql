-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

DECLARE @numberOfDependenciesFound INT
EXEC @numberOfDependenciesFound = [migration_tempdata].[sp_CheckSchemaDependencies] 'edfi'

IF (@numberOfDependenciesFound = 0)
BEGIN
	PRINT N'Dependency check:  OK'
END
ELSE IF ('$BypassExtensionValidationCheck$' = 'True')
BEGIN
	PRINT N'Option BypassExtensionValidationCheck enabled. Bypassing dependency requirements.'
END
ELSE
BEGIN
	DECLARE @DependencyFoundErrorMessage NVARCHAR(max) = N'Action Required:  Unable to proceed with migration because the BypassExtensionValidationCheck option is disabled, and one or more external objects were found with a dependency on the edfi schema.  See logs for additional details.  Please ensure that custom migration scripts have been created for all extensions, and then enable the --BypassExtensionValidationCheck command line option in order to bypass this check.'
	PRINT @DependencyFoundErrorMessage;
	THROW 52000, @DependencyFoundErrorMessage, 1
END
GO
