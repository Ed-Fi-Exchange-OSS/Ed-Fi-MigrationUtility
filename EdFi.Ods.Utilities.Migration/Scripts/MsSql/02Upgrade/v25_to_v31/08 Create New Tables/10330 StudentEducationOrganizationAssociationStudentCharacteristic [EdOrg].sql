-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic]
(
[EducationOrganizationId] [int] NOT NULL,
[StudentCharacteristicDescriptorId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[DesignatedBy] [nvarchar] (60) NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic]
(
[EducationOrganizationId],
[StudentCharacteristicDescriptorId],
[StudentUSI],
[DesignatedBy],
[CreateDate]
)
SELECT
a.[EducationOrganizationId],
c.[StudentCharacteristicDescriptorId],
c.[StudentUSI],
c.[DesignatedBy],
ISNULL(c.[CreateDate], GETDATE())
FROM [edfi].[StudentCharacteristic] c
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
ON a.[StudentUSI] = c.[StudentUSI]
GO
