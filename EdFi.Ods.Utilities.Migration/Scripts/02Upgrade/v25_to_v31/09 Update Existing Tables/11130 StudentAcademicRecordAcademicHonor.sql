-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StudentAcademicRecordAcademicHonor]'
GO

UPDATE [edfi].[StudentAcademicRecordAcademicHonor]
SET [HonorDescription] = ISNULL(s.[HonorDescription], t.[CodeValue])
FROM [edfi].[StudentAcademicRecordAcademicHonor] s
INNER JOIN [edfi].[AcademicHonorCategoryType] t
ON s.AcademicHonorCategoryTypeId = t.AcademicHonorCategoryTypeId
GO

ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor]
ALTER COLUMN [HonorDescription] [nvarchar] (80) NOT NULL
GO

PRINT N'Converting type to descriptor on [edfi].[StudentAcademicRecordAcademicHonor]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAcademicRecordAcademicHonor',
'edfi', 'AcademicHonorCategoryDescriptor',
'edfi', 'AcademicHonorCategoryType'
GO

ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor]
ALTER COLUMN [AcademicHonorCategoryDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor]
DROP COLUMN [AcademicHonorCategoryTypeId]
GO

