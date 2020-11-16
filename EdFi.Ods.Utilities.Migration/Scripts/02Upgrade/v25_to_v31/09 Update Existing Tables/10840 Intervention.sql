-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[Intervention]'
GO
ALTER TABLE [edfi].[Intervention] ADD
[MinDosage] [int] NULL,
[MaxDosage] [int] NULL
GO

PRINT N'Converting type to descriptor on [edfi].[Intervention]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Intervention',
'edfi', 'DeliveryMethodDescriptor',
'edfi', 'DeliveryMethodType'
GO

ALTER TABLE [edfi].[Intervention]
ALTER COLUMN [DeliveryMethodDescriptorId] [int] NOT NULL
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Intervention',
'edfi', 'InterventionClassDescriptor',
'edfi', 'InterventionClassType'
GO

ALTER TABLE [edfi].[Intervention]
ALTER COLUMN [InterventionClassDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[Intervention]
DROP COLUMN
[DeliveryMethodTypeId],
[InterventionClassTypeId]
GO


