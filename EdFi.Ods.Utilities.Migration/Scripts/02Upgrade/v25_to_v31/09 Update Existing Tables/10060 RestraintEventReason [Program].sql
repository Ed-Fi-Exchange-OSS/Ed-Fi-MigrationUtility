-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[RestraintEventReason]'
GO

ALTER TABLE [edfi].[RestraintEventReason] DROP COLUMN [EventDate]
GO

PRINT N'Converting type to descriptor on [edfi].[RestraintEventReason]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'RestraintEventReason',
'edfi', 'RestraintEventReasonDescriptor',
'edfi', 'RestraintEventReasonType'
GO

ALTER TABLE [edfi].[RestraintEventReason]
ALTER COLUMN [RestraintEventReasonDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[RestraintEventReason]
DROP COLUMN [RestraintEventReasonTypeId]
GO

