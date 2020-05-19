-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationStudentCharacteristicPeriod_PK] on [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod] ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentCharacteristicPeriod_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [StudentCharacteristicDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationStudentCharacteristicPeriod_StudentEducationOrganizationAssociationStudentCharacterist] on [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationStudentCharacteristicPeriod_StudentEducationOrganizationAssociationStudentCharacterist] ON [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod] ([EducationOrganizationId], [StudentCharacteristicDescriptorId], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod] ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentCharacteristicPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
