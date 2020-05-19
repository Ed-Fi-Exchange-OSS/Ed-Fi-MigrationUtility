-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PostSecondaryEventPostSecondaryInstitutionIdentificationCode_PK] on [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]'
GO
ALTER TABLE [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode] ADD CONSTRAINT [PostSecondaryEventPostSecondaryInstitutionIdentificationCode_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [PostSecondaryEventCategoryTypeId], [EventDate], [EducationOrganizationIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_PostSecondaryEventPostSecondaryInstitutionIdentificationCode_EducationOrganizationIdentificationSystemDescriptor] on [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryEventPostSecondaryInstitutionIdentificationCode_EducationOrganizationIdentificationSystemDescriptor] ON [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode] ([EducationOrganizationIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_PostSecondaryEventPostSecondaryInstitutionIdentificationCode_PostSecondaryEventPostSecondaryInstitution] on [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryEventPostSecondaryInstitutionIdentificationCode_PostSecondaryEventPostSecondaryInstitution] ON [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode] ([StudentUSI], [PostSecondaryEventCategoryTypeId], [EventDate])
GO

PRINT N'Adding constraints to [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]'
GO
ALTER TABLE [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode] ADD CONSTRAINT [PostSecondaryEventPostSecondaryInstitutionIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

