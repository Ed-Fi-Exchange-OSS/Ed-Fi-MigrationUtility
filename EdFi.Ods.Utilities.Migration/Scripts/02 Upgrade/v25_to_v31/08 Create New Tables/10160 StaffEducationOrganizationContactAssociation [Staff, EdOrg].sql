-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StaffEducationOrganizationContactAssociation]'
GO

CREATE TABLE [edfi].[StaffEducationOrganizationContactAssociation]
(
[ContactTitle] [nvarchar] (75) NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[StaffUSI] [int] NOT NULL,
[ContactTypeDescriptorId] [int] NULL,
[ElectronicMailAddress] [nvarchar] (128) NOT NULL,
[CreateDate] [datetime] NOT NULL,
[LastModifiedDate] [datetime] NOT NULL,
[Id] [uniqueidentifier] NOT NULL
)
GO
