-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

--This exact check is also performed during the initial compatibility check step
PRINT N'Performing final namespace check'
GO

DECLARE @descriptorNamespaceChanged BIT;
EXEC @descriptorNamespaceChanged = [migration_tempdata].[descriptor_namespace_changed] '$DescriptorNamespacePrefix$'
IF (@descriptorNamespaceChanged = 1)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - The supplied descriptor namespace looks to have changed since the update was initiated.  This value must remain the same throughout the entire update process because it is used to update multiple tables.  To change the supplied namespace, please restore the ODS to the initial state and start the upgrade over.'
	PRINT @ErrorMessage;
	THROW 55000, @ErrorMessage, 1
END