-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PostSecondaryInstitution_PK] on [edfi].[PostSecondaryInstitution]'
GO
ALTER TABLE [edfi].[PostSecondaryInstitution] ADD CONSTRAINT [PostSecondaryInstitution_PK] PRIMARY KEY CLUSTERED  ([PostSecondaryInstitutionId])
GO

PRINT N'Creating index [FK_PostSecondaryInstitution_AdministrativeFundingControlDescriptor] on [edfi].[PostSecondaryInstitution]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryInstitution_AdministrativeFundingControlDescriptor] ON [edfi].[PostSecondaryInstitution] ([AdministrativeFundingControlDescriptorId])
GO

PRINT N'Creating index [FK_PostSecondaryInstitution_PostSecondaryInstitutionLevelDescriptor] on [edfi].[PostSecondaryInstitution]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryInstitution_PostSecondaryInstitutionLevelDescriptor] ON [edfi].[PostSecondaryInstitution] ([PostSecondaryInstitutionLevelDescriptorId])
GO
