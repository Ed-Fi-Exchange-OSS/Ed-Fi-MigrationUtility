-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PostSecondaryEventPostSecondaryInstitution_PK] on [edfi].[PostSecondaryEventPostSecondaryInstitution]'
GO
ALTER TABLE [edfi].[PostSecondaryEventPostSecondaryInstitution] ADD CONSTRAINT [PostSecondaryEventPostSecondaryInstitution_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [PostSecondaryEventCategoryTypeId], [EventDate])
GO
PRINT N'Creating index [FK_PostSecondaryEventPostSecondaryInstitution_AdministrativeFundingControlDescriptor] on [edfi].[PostSecondaryEventPostSecondaryInstitution]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryEventPostSecondaryInstitution_AdministrativeFundingControlDescriptor] ON [edfi].[PostSecondaryEventPostSecondaryInstitution] ([AdministrativeFundingControlDescriptorId])
GO
PRINT N'Creating index [FK_PostSecondaryEventPostSecondaryInstitution_PostSecondaryInstitutionLevelType] on [edfi].[PostSecondaryEventPostSecondaryInstitution]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryEventPostSecondaryInstitution_PostSecondaryInstitutionLevelType] ON [edfi].[PostSecondaryEventPostSecondaryInstitution] ([PostSecondaryInstitutionLevelTypeId])
GO
PRINT N'Creating index [FK_PostSecondaryEventPostSecondaryInstitution_PostSecondaryEvent] on [edfi].[PostSecondaryEventPostSecondaryInstitution]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryEventPostSecondaryInstitution_PostSecondaryEvent] ON [edfi].[PostSecondaryEventPostSecondaryInstitution] ([StudentUSI], [PostSecondaryEventCategoryTypeId], [EventDate])
GO

PRINT N'Adding constraints to [edfi].[PostSecondaryEventPostSecondaryInstitution]'
GO
ALTER TABLE [edfi].[PostSecondaryEventPostSecondaryInstitution] ADD CONSTRAINT [PostSecondaryEventPostSecondaryInstitution_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

