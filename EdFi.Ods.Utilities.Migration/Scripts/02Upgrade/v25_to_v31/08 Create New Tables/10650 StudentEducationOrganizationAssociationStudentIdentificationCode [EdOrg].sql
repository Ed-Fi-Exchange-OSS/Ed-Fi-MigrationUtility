-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode]
(
[AssigningOrganizationIdentificationCode] [nvarchar] (60) NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[StudentIdentificationSystemDescriptorId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[IdentificationCode] [nvarchar] (60) NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode]
(
[AssigningOrganizationIdentificationCode],
[EducationOrganizationId],
[StudentIdentificationSystemDescriptorId],
[StudentUSI],
[IdentificationCode],
[CreateDate]
)
SELECT
s.[AssigningOrganizationIdentificationCode],
a.[EducationOrganizationId],
s.[StudentIdentificationSystemDescriptorId],
s.[StudentUSI],
s.[IdentificationCode],
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentIdentificationCode] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
ON s.[StudentUSI] = a.[StudentUSI]
GO