-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[AccountCode]'
GO

/*
	Note: The 2.0 AccountCodeDescriptor is replaced with a different descriptor, AccountClassificationDescriptor, in v3
	This change makes this table a special case
	A compatibility check was added ensuring that all data has been removed before proceeding
	The table is assumed to be empty before upgrading from v2.0
	If v2.0 data is present in the AccountCode table, the below script will fail
*/

ALTER TABLE [edfi].[AccountCode]
ADD [AccountClassificationDescriptorId] [int] NOT NULL,
[AccountCodeNumber] [nvarchar] (50) NULL,
[AccountCodeDescription] [nvarchar] (1024) NULL,
[LastModifiedDate] [datetime] NOT NULL,
[Id] [uniqueidentifier] NOT NULL
GO

UPDATE [edfi].[AccountCode]
SET [AccountCodeNumber] = [AccountNumber]
GO

ALTER TABLE [edfi].[AccountCode]
ALTER COLUMN [AccountCodeNumber] [nvarchar] (50) NOT NULL
GO

ALTER TABLE [edfi].[AccountCode] DROP
COLUMN [AccountCodeDescriptorId],
COLUMN [AccountNumber]
GO
