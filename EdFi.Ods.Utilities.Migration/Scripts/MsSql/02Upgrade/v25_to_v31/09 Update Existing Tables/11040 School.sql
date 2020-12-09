-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[School]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'School',
'edfi', 'CharterApprovalAgencyTypeDescriptor',
'edfi', 'CharterApprovalAgencyType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'School',
'edfi', 'CharterStatusDescriptor',
'edfi', 'CharterStatusType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'School',
'edfi', 'InternetAccessDescriptor',
'edfi', 'InternetAccessType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'School',
'edfi', 'MagnetSpecialProgramEmphasisSchoolDescriptor',
'edfi', 'MagnetSpecialProgramEmphasisSchoolType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'School',
'edfi', 'SchoolTypeDescriptor',
'edfi', 'SchoolType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'School',
'edfi', 'TitleIPartASchoolDesignationDescriptor',
'edfi', 'TitleIPartASchoolDesignationType'
GO

ALTER TABLE [edfi].[School]
DROP COLUMN
[CharterApprovalAgencyTypeId],
[CharterStatusTypeId],
[InternetAccessTypeId],
[MagnetSpecialProgramEmphasisSchoolTypeId],
[SchoolTypeId],
[TitleIPartASchoolDesignationTypeId]
GO
