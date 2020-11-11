-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[PostSecondaryEventPostSecondaryInstitution]'
GO
ALTER TABLE [edfi].[PostSecondaryEventPostSecondaryInstitution] ADD CONSTRAINT [FK_PostSecondaryEventPostSecondaryInstitution_AdministrativeFundingControlDescriptor] FOREIGN KEY ([AdministrativeFundingControlDescriptorId]) REFERENCES [edfi].[AdministrativeFundingControlDescriptor] ([AdministrativeFundingControlDescriptorId])
GO
ALTER TABLE [edfi].[PostSecondaryEventPostSecondaryInstitution] ADD CONSTRAINT [FK_PostSecondaryEventPostSecondaryInstitution_PostSecondaryEvent] FOREIGN KEY ([StudentUSI], [PostSecondaryEventCategoryTypeId], [EventDate]) REFERENCES [edfi].[PostSecondaryEvent] ([StudentUSI], [PostSecondaryEventCategoryTypeId], [EventDate]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[PostSecondaryEventPostSecondaryInstitution] ADD CONSTRAINT [FK_PostSecondaryEventPostSecondaryInstitution_PostSecondaryInstitutionLevelType] FOREIGN KEY ([PostSecondaryInstitutionLevelTypeId]) REFERENCES [edfi].[PostSecondaryInstitutionLevelType] ([PostSecondaryInstitutionLevelTypeId])
GO
